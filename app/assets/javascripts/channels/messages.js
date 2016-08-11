App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    $("#nomessagesyet").css("visibility", "hidden");
    $("#messages").css("visibility", "visible");
    // $("#message_username").attr('value','');
    $("#message_content").val('');
    return $('#messages').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return "<div><strong>" + data.message.username + ":</strong> " + data.message.content + "</div>";
  }
});
