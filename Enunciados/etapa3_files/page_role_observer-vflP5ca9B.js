// Generated by CoffeeScript 1.7.1
define(['modules/core/exception'], function(_arg) {
  var PageRoleObserver, assert;
  assert = _arg.assert;
  PageRoleObserver = (function() {
    function PageRoleObserver() {
      this._listeners = [];
    }

    PageRoleObserver.prototype.addListener = function(fn) {
      assert(typeof fn === 'function', "PageRoleState.addListener expects a function, got: " + (typeof fn));
      return this._listeners.push(fn);
    };

    PageRoleObserver.prototype.removeListener = function(fn) {
      var listener;
      assert(typeof fn === 'function', "PageRoleState.removeListener expects a function, got: " + (typeof fn));
      return this._listeners = (function() {
        var _i, _len, _ref, _results;
        _ref = this._listeners;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          listener = _ref[_i];
          if (listener !== fn) {
            _results.push(listener);
          }
        }
        return _results;
      }).call(this);
    };

    PageRoleObserver.prototype.removeAllListeners = function() {
      return this._listeners = [];
    };

    PageRoleObserver.prototype.emit = function(role) {
      var fn, _i, _len, _ref, _results;
      _ref = this._listeners.slice();
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        fn = _ref[_i];
        _results.push(fn(role));
      }
      return _results;
    };

    return PageRoleObserver;

  })();
  return new PageRoleObserver();
});

//# sourceMappingURL=page_role_observer.map
