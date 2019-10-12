    /*
    浣跨敤js妯℃嫙placeholder
    娣诲姞涓€涓澶栫殑鏍囩锛坰pan锛夊埌input 鐖惰妭鐐逛腑锛屼綔涓篿nput鍏勫紵鑺傜偣锛岀劧鍚庣粷瀵瑰畾浣嶈鐩栧埌input涓婇潰锛涘input鐨勭埗鑺傜偣娣诲姞relative灞炴€�
    */
    $.fn.placeholder = function(option, callback) {
        var settings = $.extend({
            word: '',
            color: '#999',
            evtType: 'focus',
            zIndex: 20,
            diffPaddingLeft: 3
        }, option);
     
        function bootstrap($that) {
            // some alias
            var word    = settings.word;
            var color   = settings.color;
            var evtType = settings.evtType;
            var zIndex  = settings.zIndex;
            var diffPaddingLeft = settings.diffPaddingLeft;
     
            // default css
            var width       = $that.outerWidth();
            var height      = $that.outerHeight();
            var fontSize    = $that.css('font-size');
            var fontFamily  = $that.css('font-family');
            var paddingLeft = $that.css('padding-left');
     
            // process
            paddingLeft = parseInt(paddingLeft, 10) + diffPaddingLeft;
            // redner
            var $placeholder = $('<span class="placeholder"></span>');
            $placeholder.css({
                position: 'absolute',
                zIndex: '20',
                color: color,
                width: (width - paddingLeft) + 'px',
                height: height + 'px',
                fontSize: fontSize,
                paddingLeft: paddingLeft + 'px',
                fontFamily: fontFamily
            }).text(word).hide();
            // 浣嶇疆璋冩暣
            move();
            // textarea 涓嶅姞line-heihgt灞炴€�
            if ($that.is('input')) {
                $placeholder.css({
                    lineHeight: height + 'px'
                });
            }
            $placeholder.appendTo($that.parent());
            // 鍐呭涓虹┖鏃舵墠鏄剧ず锛屾瘮濡傚埛鏂伴〉闈㈣緭鍏ュ煙宸茬粡濉叆浜嗗唴瀹规椂
            var val = $that.val();
            if ( val == '' && $that.is(':visible') ) {
                $placeholder.show();
            }
     
            function hideAndFocus() {
                $placeholder.hide();
                $that[0].focus();
            }
            function move() {
                var offset = $that.position();
                var top    = offset.top
                var left   = offset.left
                $placeholder.css({
                    top: top,
                    left: left
                });
            }
            function asFocus() {
                $placeholder.click(function() {
                    hideAndFocus();
                    // 鐩栦綇鍚庢棤娉曡Е鍙慽nput鐨刢lick浜嬩欢锛岄渶瑕佹ā鎷熺偣鍑讳笅
                    setTimeout(function(){
                        $that.click();
                    }, 100);
                });
                // IE鏈変簺bug锛屽師鏈笉鐢ㄥ姞姝ゅ彞
                $that.click(hideAndFocus);
                $that.blur(function() {
                    var txt = $that.val();
                    if (txt == '') {
                        $placeholder.show();
                    }
                });
            }
            function asKeydown() {
                $placeholder.click(function() {
                    $that[0].focus();
                });
            }
     
            if (evtType == 'focus') {
                asFocus();
            } else if (evtType == 'keydown') {
                asKeydown();
            }
     
            $that.keyup(function() {
                var txt = $that.val();
                if (txt == '') {
                    $placeholder.show();
                } else {
                    $placeholder.hide();
                }
            });
     
            // 绐楀彛缂╂斁鏃跺鐞�
            $(window).resize(function() {
                move();
            });
     
            // cache
            $that.data('el', $placeholder);
            $that.data('move', move);
     
        }
     
        return this.each(function() {
            var $elem = $(this);
            bootstrap($elem);
            if ($.isFunction(callback)) callback($elem);
        });
    } 