(function() {
  var $i;

  $i = {
    el: null,
    get: function(selector) {
      this.el = document.querySelectorAll(selector);
      return this;
    },
    set: function(attr, data) {
      var el, _i, _len, _ref;
      _ref = this.el;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        el = _ref[_i];
        el.setAttribute(attr, data);
      }
      return this;
    },
    add: function(tag) {
      this.el = [document.createElement(tag)];
      return this;
    }
  };

}).call(this);
