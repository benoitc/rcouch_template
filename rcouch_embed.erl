-module({{appid}}).

-export([welcome/0, get_version/0]).

welcome() ->
    io:format("{{appid}} ~s has started.~n", [get_version()]).

get_version() ->
    Releases = release_handler:which_releases(),
    Version = case [V || {"{{appid}}", V, _, current} <- Releases] of
    [] ->
        case [V || {"{{appid}}", V, _, permanent} <- Releases] of
        [] ->
            "dev";
        [Permanent] ->
            Permanent
        end;
    [Current] ->
        Current
    end,
    list_to_binary(Version).
