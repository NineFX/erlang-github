-module(egithub_jiffy).

-behaviour(egithub_json).

-export([
         encode/1,
         decode/1
        ]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% egithub_json callbacks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

-spec encode(map()) -> binary().
encode(Map) ->
  jiffy:encode(Map).

-spec decode(binary()) -> map().
decode(Json) ->
  jiffy:decode(Json, [return_maps]).
