# abapWebHooks
ABAP Notify BOR Event changes through web hooks

# API
The request is a POST request with a simple json object. This object has the following parameters:
- action
The action to perform can be `subscribe` or `unsubscribe`.
- object
The SAP BOR object that sends the event. `BUS1006` Partner or `BUS1178001` Material for example.
- event
The SAP BOR Event. `created` or `changed` for instance.
- callbackurl
The url the ABAP system should contact when the event is raised.

# Tests
Web hook request with curl

`curl -X POST -H "Content-Type: application/json" -u <username>:<password> 
 -d '{"action":"","object":"BUS1006","event":"created","http://localserver/handle/event"}' http://<server>:<port>/webhook`

example with trial abap system:

`curl -X POST -H "Content-Type: application/json" -u sapuser:Appl1ance -d '{
"action":"subscribe",
"object":"BUS1006",
"event":"created",
"callbackUrl": "http://localserver/handle/event"}'http://vhcalnplci.dummy.nodomain:8000/webhook
}' http://vhcalnplci.dummy.nodomain:8000/webhook `
