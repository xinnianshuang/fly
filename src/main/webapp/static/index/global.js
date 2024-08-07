$(function(){
    Search();
    Lang();
    Nav();
    Safety();
    FooterSelect();
    TipsHover();
    PopupModal();
});

//国际化模块交互
function Lang(){
    $('.lang-box .lang-name').click(function(){
        var father =  $(this).closest('.lang');
        if(!father.hasClass('on')){
            father.addClass('on').find('.lang-select').stop().show(100);
        }else{
            father.removeClass('on').find('.lang-select').stop().hide(100);
        }
    });
    $('.lang .lang-list li .click').click(function(){
        $('.lang .lang-list li .children-opt').stop().hide(100);
        $(this).closest('li').addClass('on').siblings().removeClass('on');
        $(this).closest('li').find('.children-opt').stop().slideDown(100);
    });
    $(document).click(function (e) {
        var evt = $(e.target);
        if(!evt.hasClass('lang') && !evt.closest('.lang').length>0){
            $(".lang.on").removeClass('on').find('.lang-select').stop().hide(100);
        }
    })

}

//搜索模块
function Search(){
    var flage=false;
    $(".search-box .search-button").click(function (e) {
        if (!flage) {
            e.preventDefault();
            flage=true;
            $(this).closest('.search-box').addClass('on').find('.search-inp').stop().fadeIn(200);
        }else{
            $(".search-box>form").submit();
        }
    })
    $(document).click(function (e) {
        var evt = $(e.target);
        if(!evt.hasClass('search-box') && !evt.closest('.search-box').length>0){
            flage=false;
            $(".search-box").removeClass('on').find('.search-inp').hide();
        }
    })
}

//导航模块
function Nav() {
    var child = $('.nav .nav-children');
    var menu = '.down-menu';
    // $('.nav .down-menu').each(function(index,el){
    //     $(el).css('height',$(el).outerHeight(true));
    // });
    child.mouseenter(function(){
        var list =$(this).find(menu);
        list.css('height',list.outerHeight(true)).stop().slideDown(200);
    }).mouseleave(function(){
        var list =$(this).find(menu);
        list.stop().slideUp(200,function(){
            list.attr("style","");
        });
    });
}


//安全提示信息条
function Safety() {
    if($(".tips-safety").length<1) return false;

    let items =  $(".tips-safety .swiper-slide strong"),
        newTime = (new Date()).getTime() - 1000*60*60*24*3,
        num =0;
    for(var i=0,l=items.length;i<l;i++){
        var s = items[i],
            time = (new Date(s.getAttribute("data-time"))).getTime();
        if(time>newTime){
            s.innerHTML=s.innerHTML+'<span class="icon"></span>'
            console.log(s.innerHTML)
            num++;
        }
    }
    
    //有最新消息
    if(num){
        $(".tips-safety .new-news-num").html('<span class="icon"></span>'+"【"+parseInt(num/2)+"条最新消息】")
        // $(".tips-safety .new-news-num").html('<span class="icon"></span>'+"new message")
    }

    $(".tips-safety .swiper-container").slide({mainCell:".swiper-wrapper",autoPage:true,effect:"topLoop",autoPlay:true});
    $('.tips-safety .btn-close').click(function () {
        $(this).closest('.tips-safety').hide();
    })

    $(".containerlistroll").mouseenter(function(){
    $(".containerlist").slideDown();
    $(this).hide();
    })

    $(".containerlist").mouseleave(function(){

        $(".containerlist").hide();
        $(".containerlistroll").show();
    })


}

//页尾选择列表
function FooterSelect(){
    $('.simulation-select .select').click(function(e){
        e.stopPropagation();
        $(this).find('.list').stop().slideDown(200);
        // return false;
    });
    $(document).click(function () {
        $('.simulation-select .list').stop().slideUp(200);
    })
}

function DownMenu(obj,tri,down){
    obj.each(function(){
        $(this).mouseenter(function(){
            $(this).find(tri).stop().show(100);
            $(this).find(down).stop().slideDown(200);
        });
        $(this).mouseleave(function(){
            $(this).find(tri).stop().hide(100);
            $(this).find(down).stop().slideUp(200);
        });
    });
}

//鼠标悬停展示提示信息
function TipsHover() {
    $("body").on('mouseenter','.tip-trigger',function () {
        $(this).addClass('hover');
    });
    $("body").on('mouseleave','.tip-trigger',function () {
        $(this).removeClass('hover');
    });
}

//模态框
function PopupModal() {
    $('.popup-modal .btn-close').click(function () {
        //pop_info 提示框关闭时，减少需弹出的城市信息数量
        //alert("you have click close button");
        alert_show_id.splice(0,alert_show_id.length);
        console.log(alert_show_id);
        //end
        $(this).closest('.popup-modal').stop().fadeOut();
    })
}

checkBrowser();
function checkBrowser(){
    var DEFAULT_VERSION = 9.0;
    var ua = navigator.userAgent.toLowerCase();
    var isIE = ua.indexOf("msie")>-1;
    var safariVersion;
    if(isIE){
     safariVersion =  ua.match(/msie ([\d.]+)/)[1];
    }
    if(safariVersion <= DEFAULT_VERSION ){
     $("body,html").append("<div style='width:100%;min-width:1000px;height:40px;line-height:40px;background:#f7f7f7;font-size:14px;color:#666;text-align:center;'>为了提升页面的浏览效果，建议您使用谷歌、火狐或者更高版本浏览器进行浏览。</div>")
    };
}

/*预定框点默认显示消失*/
function TipsHover() {
    $(".city-box .inp-1").click(function(){
  $(this).val("")
})

}

function isMobile(){
    let info = navigator.userAgent;
    let agents = ["Android", "iPhone","HarmonyOS", "SymbianOS", "Windows Phone", "iPod", "iPad"];
    for(let i = 0; i < agents.length; i++){
        if(info.indexOf(agents[i]) >= 0) return true;
    }
    return false;
}

//在移动端打开，需要加在m站的脚本
if(isMobile()){
    $.ajax({
        url:"https://m.hnair.com/package/vender/HnairAppBridge.js?V=8.10.0",
        type:"get",
        cache:true,
        dataType:"script",
        success:function(){
                window.HnairApp = new HnairAppJSBridge({ appId: "www" })
            }
    })
}






