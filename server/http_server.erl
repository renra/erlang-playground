-module(http_server).
-export([start_server/0, stop_server/0]).

start_server() -> 
    inets:start(),
    inets:start(httpd, [{port, 3000}, {server_name, "httpd_test"}, {server_root,"/tmp"}, {document_root,"./server"}]).
%    inets:start(httpd, [{port, 3000}, {server_name, "httpd_test"}, {server_root,"/tmp"}, {document_root,"./server"}, {bind_address, "localhost"}]).

stop_server() ->
    inets:stop().
