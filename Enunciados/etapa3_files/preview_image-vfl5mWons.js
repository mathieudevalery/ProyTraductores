// Generated by CoffeeScript 1.7.1
define(['external/react', 'jquery', 'modules/clean/image_cache', 'modules/clean/image_size', 'modules/clean/react/previews/preview_image_zoom', 'modules/core/browser', 'modules/core/i18n', 'modules/core/uri'], function(React, $j, ImageCache, _arg, _arg1, Browser, i18n, URI) {
  var PreviewImage, PreviewImageZoom, cx, d, image_best_fit_size, _;
  image_best_fit_size = _arg.image_best_fit_size;
  PreviewImageZoom = _arg1.PreviewImageZoom;
  cx = React.addons.classSet;
  d = React.DOM;
  _ = i18n._;
  PreviewImage = React.createClass({
    displayName: "PreviewImage",
    propTypes: {
      "thumbnail-url-tmpl": React.PropTypes.string,
      imagesToPreload: React.PropTypes.array,
      onLoad: React.PropTypes.func,
      onError: React.PropTypes.func
    },
    getInitialState: function() {
      return {
        imageVisibility: "hidden"
      };
    },
    _getSizedImageUrl: function(thumbnailUrlTmpl) {
      return URI.parse(thumbnailUrlTmpl).updateQuery({
        size: image_best_fit_size($j(window).width(), $j(window).height()),
        size_mode: 2
      }).toString();
    },
    _preloadImages: function() {
      var imageCache, thumbnailUrl, _i, _len, _ref, _results;
      imageCache = new ImageCache();
      _ref = this.props.imagesToPreload;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        thumbnailUrl = _ref[_i];
        _results.push(imageCache.preload_image(this._getSizedImageUrl(thumbnailUrl)));
      }
      return _results;
    },
    _onImageLoad: function() {
      var $img, $imgContainer, _base;
      $imgContainer = $j(".preview-image-container");
      $img = $imgContainer.find(".preview-image");
      this.setState({
        imageVisibility: "visible"
      });
      if (!this._shouldDisableZoom()) {
        $img.on("click", (function(_this) {
          return function() {
            return PreviewImageZoom.open(_this.props["thumbnail-url-tmpl"], _this._getSizedImageUrl(_this.props["thumbnail-url-tmpl"]));
          };
        })(this));
      }
      return typeof (_base = this.props).onLoad === "function" ? _base.onLoad() : void 0;
    },
    _onImageError: function() {
      var _base;
      return typeof (_base = this.props).onError === "function" ? _base.onError() : void 0;
    },
    _shouldDisableZoom: function() {
      return Browser.msie_version_at_most(9);
    },
    render: function() {
      var classSet;
      classSet = {
        "preview-image-container": true,
        "zoom-disabled": this._shouldDisableZoom()
      };
      return d.div({
        className: cx(classSet)
      }, d.div({
        className: "preview-image-wrapper"
      }, d.img({
        className: "preview-image",
        src: this._getSizedImageUrl(this.props["thumbnail-url-tmpl"]),
        style: {
          visibility: this.state.imageVisibility
        },
        onLoad: this._onImageLoad,
        onError: this._onImageError
      })));
    }
  });
  return {
    PreviewImage: PreviewImage
  };
});

//# sourceMappingURL=preview_image.map
