SRCS = core.vhdl
OBJS = $(SRCS:%.vhdl=%.o)
BINS = $(OBJS:%.o=%)

OTHER_SRCS = pkg_readline.vhdl types.vhdl printer.vhdl reader.vhdl env.vhdl mainclient.vhdl
OTHER_OBJS = $(OTHER_SRCS:%.vhdl=%.o)

all: $(BINS)

dist: igel

mal: $(word $(words $(BINS)),$(BINS))
	cp $< $@

work-obj93.cf: $(OTHER_SRCS)
	rm -f work-obj93.cf
	ghdl -i $+

$(OTHER_OBJS):  %.o: %.vhdl work-obj93.cf
	ghdl -a -g $(@:%.o=%.vhdl)

$(OBJS): %.o: %.vhdl $(OTHER_OBJS)
	ghdl -a -g $(@:%.o=%.vhdl)

$(patsubst %.o,%,$(filter step%,$(OBJS))): $(OTHER_OBJS)
$(BINS): %: %.o
	ghdl -e -g $@
	if [ "$@" = "igel" ]; then mv igel $@; fi

clean:
	rm -f $(OBJS) $(BINS) $(OTHER_OBJS) work-obj93.cf igel
