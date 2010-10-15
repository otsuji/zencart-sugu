(function($) {
    if ($.jQTouch)
    {
        $.jQTouch.addExtension(function FormToAjax(jQT) {
            var $callback;
            
            function setCallback(callback) {
                $callback = callback;
            }
            // form������Ajax�Ǽ������ƥ��˥᡼����󤷤�ɽ������
            function submitFormToAjax(e, callback) {
	            var $form = (typeof(e)==='string') ? $(e) : $(e.target);
                showPageByHrefEx($form.attr('action'), {
                    data: $form.serialize(),
                    method: $form.attr('method') || "POST",
                    animation: 'slide' || null,
                    callback: (callback === undefined ? ($callback === undefined ? '' : $callback) : callback)
                    });
                return false;
	        }
            function showPageByHrefEx(href, options) {
	            var defaults = {
	                data: null,
	                method: 'GET',
	                animation: null,
	                callback: null,
	                $referrer: null
	            };
                
	            var settings = $.extend({}, defaults, options);

	            if (href != '#')
	            {
	                $.ajax({
	                    url: href,
	                    data: settings.data,
	                    type: settings.method,
	                    success: function (data, textStatus) {

// -> zen_smartphone: contents����<body>��</body>��������
	                        data = data.replace(/^((?:[\r\n]|.)*<body[^>]*>)/,'');
	                        data = data.replace(/(<\/body[^>]*>(?:[\r\n]|.)*)$/,'');
// <- zen_smartphone: contents����<body>��</body>��������

// -> zen_smartphone: href��md5������id��<div>�ˤ���contents��Ϥ�
	                        var id = MD5_hexhash(href);
	                        data = '<div id="' + id + '" >' + data + '</div>';
// <- zen_smartphone: href��md5������id��<div>�ˤ���contents��Ϥ�

	                        var firstPage = insertPagesEx(data, settings.animation);
	                        if (firstPage)
	                        {
// -> zen_smartphone: �����jQTSettings�����ʤ�������褦���ʤ�
//	                            if (settings.method == 'GET' && jQTSettings.cacheGetRequests && settings.$referrer)
//	                            {
//	                                settings.$referrer.attr('href', '#' + firstPage.attr('id'));
//	                            }
// <- zen_smartphone: �����jQTSettings�����ʤ�������褦���ʤ�
	                            if (settings.callback) {
// -> zen_smartphone: 
//                                    settings.callback(true);
                                    settings.callback(true, id);
// <- zen_smartphone: 
	                            }
	                        }
	                    },
	                    error: function (data) {
	                        if (settings.$referrer) settings.$referrer.unselect();
	                        if (settings.callback) {
// -> zen_smartphone: 
//                                settings.callback(false);
	                            settings.callback(false, null);
// <- zen_smartphone: 
	                        }
	                    }
	                });
	            }
	            else if ($referrer)
	            {
	                $referrer.unselect();
	            }
	        }
	        function insertPagesEx(nodes, animation) {
	            var $body = $('body');

	            var targetPage = null;
	            $(nodes).each(function(index, node){
	                var $node = $(this);
	                if (!$node.attr('id')) {
	                    $node.attr('id', 'page-' + (++newPageCount));
	                }
	                $node.appendTo($body);
	                if ($node.hasClass('current') || !targetPage ) {
	                    targetPage = $node;
	                }
	            });
	            if (targetPage !== null) {
	                jQT.goTo(targetPage, animation);
	                return targetPage;
	            }
	            else
	            {
	                return false;
	            }
	        }
            return {
                submitFormToAjax: submitFormToAjax,
                setCallback: setCallback
            }
        });
    }
})(jQuery);