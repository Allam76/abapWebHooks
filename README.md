# abapWebHooks
ABAP Notify BOR Event changes through web hooks

# API
The request is a POST request with a simple json object. This object has the following parameters:
- action
- object
- event
- callbackurl

# Tests
Web hook request with curl

`curl -X POST -H "Content-Type: application/json" -u <username>:<password> 
 -d '{"action":"","object":"BUS1006","event":"created","http://localserver/handle/event"}' http://<server>:<port>/webhook`

example with trial abap system:

`curl -X POST -H "Content-Type: application/json" -u sapuser:Appl1ance http://vhcalnplci.dummy.nodomain:8000/webhook`
