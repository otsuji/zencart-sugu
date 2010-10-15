(function($) {
    if ($.jQTouch)
    {
        $.jQTouch.addExtension(function LinkToAjax(jQT) {
            // href�����N��Ajax�Ŏ擾���ăA�j���[�V�������ĕ\������
            function changeLinkToAjax(e) {
                var anchor = $(e.currentTarget);
                var href = anchor.attr('href');
                if (href == undefined) return;
                if (href.match(/^#/)) return;
                
                var c = anchor.attr('class');
                if (! c.match(/flip|slideup|dissolve|fade|pop|swap|cube/)) {
                    c += ' slide';
                    anchor.attr('class', c);
                }
                
                $.get(href, function(contents) {
                    // contents����<body>�`</body>���폜����
                    contents = contents.replace(/^((?:[\r\n]|.)*<body[^>]*>)/,'');
                    contents = contents.replace(/(<\/body[^>]*>(?:[\r\n]|.)*)$/,'');
                    
                    var id = MD5_hexhash(href);
                    $('body').append('<div id="' + id + '" >' + contents + '</div>');
                    $('#'+id+' a').click(jQT.changeLinkToAjax);
                    anchor.attr('href', '#' + id);
                    anchor.tap();
                });
                
                return false;
            }
            return {
                changeLinkToAjax: changeLinkToAjax
            }
        });
    }
})(jQuery);