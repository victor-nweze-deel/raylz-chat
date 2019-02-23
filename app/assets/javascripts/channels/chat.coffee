App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    console.log 'WEB SOCKET CLIENT IS CONNECTED'

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log data['message']['username'] # Called when there's incoming data on the websocket for this channel

  send_msg: (data) ->
    @perform 'send_msg', message:data
