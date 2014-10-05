(function() {
  var $i;

  $i = (function() {
    function $i() {}

    $i.prototype.el = null;

    $i.prototype.get = function(selector) {
      this.el = document.querySelectorAll(selector);
      return this;
    };

    $i.prototype.set = function(attr, data) {
      var el, _i, _len, _ref;
      _ref = this.el;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        el = _ref[_i];
        el.setAttribute(attr, data);
      }
      return this;
    };

    $i.prototype.add = function(tag) {
      this.el = [document.createElement(tag)];
      return this;
    };

    return $i;

  })();

  (typeof exports !== "undefined" && exports !== null ? exports : this).$i = new $i;

}).call(this);
