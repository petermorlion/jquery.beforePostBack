(function ($) {
    if (typeof __doPostBack === 'function') {
        var old__doPostBack = __doPostBack;
        __doPostBack = function (eventTarget, eventArgument) {
            $('form').trigger('beforePostBack');
            old__doPostBack(eventTarget, eventArgument);
        };
    }

    $.beforePostBack = function (func) {
        $('form').on('beforePostBack', function () {
            func();
        });
    };
})(jQuery);