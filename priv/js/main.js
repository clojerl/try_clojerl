// WebSocket URL
const URL = "ws://" + window.location.host + "/repl";

var Connection = function(url) {
  var self = this;

  this._conn = new WebSocket(url);
  this._conn.onopen    = function(message) { self.onopen(message); };
  this._conn.onmessage = function(message) { self.onmessage(message); };
  this._conn.onclose   = function(message) { self.onclose(message); };
  this._conn.onerror   = function(message) { self.onerror(message); };

  // Default handler
  self.onopen    = console.log;
  self.onmessage = console.log;
  self.onerror   = console.log;
  self.onclose   = console.log;

  self.send = function(data) {
    self._conn.send(data);
  };
};

var callIfNotEmpty = function(value, f) {
  value && value.trim() != "" && f(value);
};

var oninit = function() {
  var self = this;
  self._conn = new Connection(URL);
  self._conn.onopen = function(message) {
    self.echo("WebSocket connection established");
  };
  self._conn.onmessage = function(message) {
      var json = JSON.parse(message.data);
      callIfNotEmpty(json.stdout, self.echo);
      callIfNotEmpty(json.stderr, self.error);
      callIfNotEmpty(json.result, self.echo);
      self.set_prompt(json.prompt);
    };
  self._conn.onclose = function() {
    self.error("WebSocket connection lost, opening a new session...");
    conn = new Connection(URL);
    conn.onopen    = self._conn.onopen;
    conn.onmessage = self._conn.onmessage;
    conn.onclose   = self._conn.onclose;
    conn.onerror   = self._conn.onerror;
    self._conn = conn;
  };
};

var oncommand = function(command) {
  if (command.trim() !== '') {
    try {
      var message = {cmd: command};
      this._conn.send(JSON.stringify(message));
    } catch(e) {
      this.error(new String(e));
    }
  } else {
    this.echo('');
  }
};

var init = function() {
  var options = {
    greetings: 'Welcome to Try Clojerl!',
    height: '100%',
    prompt: 'clje.user=> ',
    onInit: oninit
  };

  $('#terminal').terminal(oncommand, options);
};

$(function($, undefined) { init(); });
