$(function () {
    banner()
    indexFlight()
    stateArea();
    tab();
    activity();    
})

function banner() {
    // var indexBanner = new Swiper('.banner .swiper-container',{
    //     calculateHeight:true,
    //     autoplay:4000,
    //     speed:500,
    //     loop:true,
    //     autoplayDisableOnInteraction:false,
    //     updateOnImagesReady : true,
    //     pagination:".banner .pagination",
    //     paginationClickable:true
    // })
    // $(window).resize(function(){
    //     indexBanner.reInit();
    // })
    var slideLen = $(".banner .swiper-slide").length;
    var slidePoint = '';
    for (var i = 0; i < slideLen; i++) {
        slidePoint+="<span class='swiper-pagination-switch "+ (i==0 ? "swiper-active-switch":"") +"'>"+i+"</span>";
    }
    $(".banner .pagination").append(slidePoint);
    var indexBanner = $(".banner .swiper-container").slide({
        mainCell:".swiper-wrapper",
        titCell:".pagination span",
        effect:"fold",
        autoPlay:true,
        trigger:"click",
        interTime:5000,
        delayTime:700,
        easing:'swing',
        titOnClassName:"swiper-active-switch"
    });
}


function indexFlight() {
    var indexFlightSlide = new Swiper('.flight-slide .swiper-container',{
        calculateHeight:true,
        autoplay:3000,
        speed:600,
        loop:true,
        autoplayDisableOnInteraction:false,
        updateOnImagesReady : true,
        pagination:".flight-slide .pagination",
        paginationClickable:true,
        resizeReInit:true
    })
    $(".flight-slide .swiper-prev").click(function () {
        indexFlightSlide.swipePrev();
    })
    $(".flight-slide .swiper-next").click(function () {
        indexFlightSlide.swipeNext();
    })
    $(window).resize(function(event) {
        indexFlightSlide.reInit();
    });
}

function stateArea() {
    $(".state-area-list dd").click(function () {
        var index = $(this).index()-1;
        if(index==1){
            $(this).closest('.state-area-list').addClass('on');
        }else{
            $(this).closest('.state-area-list').removeClass('on');
        }
        $(this).addClass("on").siblings('dd').removeClass('on');
        $('.state-area-bd .tab-box').removeClass('on').stop().slideUp()
            .eq(index).addClass('on').stop().slideDown();
        $('.state-area-bd').find(".tab-flight.on .tab-hd li:first a").trigger('click');

    })
}

function tab() {
    $(".tab-box li a").click(function (e) {
        if(!$(this).hasClass("link-more")){
            e.preventDefault();
            var father = $(this).closest(".tab-box");
            var id = $(this).attr("href");
            father.find(".tab-bd "+id).show().siblings().hide();
            father.find('.tab-hd li').removeClass('on');
            $(this).parent().addClass('on')
        }
    })
}
function activity() {
    var activitySlide = new Swiper('.activity-slide .swiper-container',{
        calculateHeight:true,
        autoplay:4500,
        speed:800,
        loop:true,
        slidesPerView:4,
        autoplayDisableOnInteraction:false,
        updateOnImagesReady : true,
        resizeReInit:true
    })
    $(".activity-slide .swiper-prev").click(function () {
        activitySlide.swipePrev();
    })
    $(".activity-slide .swiper-next").click(function () {
        activitySlide.swipeNext();
    })
    $(window).resize(function(event) {
        activitySlide.reInit();
    });
}

// 识别访问设备
function uaredirect(f){try{if(document.getElementById("bdmark")!=null){return}var b=false;if(arguments[1]){var e=window.location.host;var a=window.location.href;if(isSubdomain(arguments[1],e)==1){f=f+"/#m/"+a;b=true}else{if(isSubdomain(arguments[1],e)==2){f=f+"/#m/"+a;b=true}else{f=a;b=false}}}else{b=true}if(b){var c=window.location.hash;if(!c.match("fromapp")){if((navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i))){location.replace(f)}}}}catch(d){}}function isSubdomain(c,d){this.getdomain=function(f){var e=f.indexOf("://");if(e>0){var h=f.substr(e+3)}else{var h=f}var g=/^www\./;if(g.test(h)){h=h.substr(4)}return h};if(c==d){return 1}else{var c=this.getdomain(c);var b=this.getdomain(d);if(c==b){return 1}else{c=c.replace(".","\\.");var a=new RegExp("\\."+c+"$");if(b.match(a)){return 2}else{return 0}}}};

function getRequest(id){var url=location.search,Request=new Object();if(url.indexOf("?")!=-1){var str=url.substr(1);strs=str.split("&");for(var i=0;i<strs.length;i++){Request[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1])}}return Request[id]};

// 根据访问设备，进行平台切换
checkDevice();
function checkDevice(){
    if (getRequest('from') != 'pc') {
      uaredirect('http://m.hnair.com/')
    }
}

