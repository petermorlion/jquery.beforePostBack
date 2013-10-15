(function ($) {
    $.beforePostBack = function (func) {
        if (typeof func !== 'function') {
            return;
        }

        var old__doPostBack = __doPostBack;
        __doPostBack = function (eventTarget, eventArgument) {
            if (func() != false) {
                old__doPostBack(eventTarget, eventArgument);
            }
        };
    };
})(jQuery);