// Generated by CoffeeScript 1.7.1
define(['jquery', 'external/react', 'modules/clean/analytics', 'modules/clean/ajax', 'modules/clean/dbmodal', 'modules/clean/em_string', 'modules/clean/filepath', 'modules/clean/react/button', 'modules/clean/react/modal', 'modules/core/i18n', 'modules/core/notify', 'modules/core/uri'], function($j, React, analytics, ajax, _arg, Emstring, FilePath, button, _arg1, _arg2, Notify, URI) {
  var DBModalStack, Modal, NonNamespaceManageAccessModal, d, _;
  DBModalStack = _arg.DBModalStack;
  Modal = _arg1.Modal;
  _ = _arg2._;
  d = React.DOM;
  NonNamespaceManageAccessModal = React.createClass({
    statics: {
      showInstance: function(nonNamespaceManageAccessModalContent) {
        return Modal.showInstance(nonNamespaceManageAccessModalContent);
      }
    },
    propTypes: {
      user: React.PropTypes.object.isRequired,
      fq_path: React.PropTypes.string.isRequired,
      done_callback: React.PropTypes.func.isRequired
    },
    render: function() {
      var snippetted_filename;
      snippetted_filename = Emstring.em_snippet(FilePath.filename(this.props.fq_path), 16);
      return Modal({
        title: _("Remove access to \u2018%(filename)s\u2019?").format({
          filename: snippetted_filename
        }),
        autoClose: false,
        showX: false,
        buttonComponent: this._renderButtons(),
        ref: 'modal'
      }, d.div({}, _("You previously shared this folder and gave people permission to view it. If you remove their access, only you will be able to see it.")));
    },
    _renderButtons: function() {
      return d.div({
        className: 'db-modal-buttons'
      }, d.button({
        className: 'dbmodal-button button-primary',
        onClick: this._remove_link_button_clicked
      }, _("Remove access")), d.button({
        className: 'dbmodal-button button-tertiary',
        onClick: (function(_this) {
          return function() {
            return _this._onDone(false);
          };
        })(this)
      }, _("Cancel")));
    },
    _onDone: function(linkRemoved) {
      this.refs['modal'].close();
      return this.props.done_callback.bind(null, !linkRemoved)();
    },
    _remove_link_button_clicked: function() {
      return ajax.WebRequest({
        url: URI({
          path: '/sm/disable_token_at_path' + FilePath.normalize(this.props.fq_path)
        }),
        subject_user: this.props.user.id,
        type: "POST",
        success: (function(_this) {
          return function() {
            $j(document).trigger("db:browse:update");
            Notify.success(_("Link removed"));
            analytics.SimpleSharingLogger.log(_this.props.user.id, 25);
            return _this._onDone(true);
          };
        })(this),
        error: (function(_this) {
          return function() {
            return Notify.error(_("An error occurred when removing link"));
          };
        })(this)
      });
    }
  });
  return NonNamespaceManageAccessModal;
});

//# sourceMappingURL=non_namespace_manage_access_modal.map
