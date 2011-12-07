DESTDIR?=
DISTDIR=       rel/archive

.PHONY: rel deps

all: deps compile

compile:
	@rebar compile

deps:
	@rebar get-deps

clean:
	@rebar clean

distclean: clean relclean
	@rebar delete-deps

rel: relclean deps
	@rebar compile generate

relclean:
	@rm -rf rel/{{appid}}
