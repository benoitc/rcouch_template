# Rebar templates for generating custom couchdb releases 

This project provide rebar templates that allows you to create your own
CouchDB releases or embed CouchDB applications based on the rebared
version of Apache CouchDB provided by the [refuge
project](http://refuge.io). 

Platforms supported are Linux, FreeBSD 8.0x and sup, MacOSX 10.6/10.7
with Erlang R13B04/R14x, Windows is coming. Tested on i386, amd64 and
Arm platforms.

##Installation:

Install [rebar](https://github.com/basho/rebar). You can do that via
homebrew:

    $ brew update
    $ brew install rebar

*Note:*make sure to use latest rebar version/

Drop these templates in ~/.rebar/templates.

    
##Create a custom CouchDB release

To create a custom release of CouchDB with your own plugins, use the
**rcouch** templatefor trunk or **rcouch11** for 1.1.x branch:

    $ mkdir myapp
    $ rebar create template=rcouch appid=myapp


Then a full custom release has been installed. To use it:


    $ make rel
    $ ./rel/myapp/bin/myapp

You can now start to customize your release by adding your plugins to
rebar config and editing rel/reltool.config.

##Embed CouchDB in your application

To start an Erlang OTP application that embed CouchDB, use the
**rebar_embed** template for trunk or **rcouch11_embed** for 1.1.x
branch:

    $ mkdir myapp
    $ rebar create template=rcouch_embed appid=myapp

It create a custom app in apps/myapp/src that you can edit. Then use it
like above.
