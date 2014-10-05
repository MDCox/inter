(function() {
  var $i;

  $i = {
    el: null,
    get: function(selector) {
      this.el = document.querySelectorAll(selector);
      return this;
    },
    set: function(attr, data) {
      this.el[0].setAttribute(attr, data);
      return this;
    }
  };

}).call(this);
