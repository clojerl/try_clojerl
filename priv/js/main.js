var send = function (terminal, command) {
  $.post("/repl", command, function(data) {
    terminal.echo(data);
  });
};

$(function($, undefined) {
  $('#terminal').terminal(function(command) {
    if (command.trim() !== '') {
      try {
        send(this, command);
        // var result = window.eval(command);
        // if (result !== undefined) {
        //   this.echo(new String(result));
        // }
      } catch(e) {
        this.error(new String(e));
      }
    } else {
      this.echo('');
    }
  }, {
    greetings: 'Clojure 0.0.0-1258.78ac823',
    height: "100%",
    prompt: 'clje.user=> '
  });
});
