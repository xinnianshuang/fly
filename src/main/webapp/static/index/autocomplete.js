/**
 * @(#)$Id: openjaw.js,v 1.4 2011/09/19 15:14:07 stuart Exp $
 *
 * Common functions for conversation management and simple HTML GET/POST.
 */
var OpenJaw = {

    requestCounter: 0,

    /**
     * Returns the browser root window.
     * This window contains the conversation ID.
     */
    getRootWindow: function() {
        return window;
    },

    /**
     * Options the current conversation ID.
     */
    getConversationID: function() {
        var w = OpenJaw.getRootWindow();
        return w.name;
    },

    /**
     * Injects the conversation ID parameter into a URL.
     */
    getConversationURL: function(url) {
        var cid = OpenJaw.getConversationID();
        if (url.indexOf('?') == -1) {
            if (url.indexOf('#') == -1) {
                return url + '?ConversationID=' + cid;
            }
            else {
                var buf = new StringBuffer();
                var x = url.split('#');
                for (var i=0; i<x.length; i++) {
                    if (i == x.length - 1) {
                        buf.append('?ConversationID=');
                        buf.append(cid);
                        buf.append('#');
                    }
                    buf.append(x[i]);
                }
                return buf.toString();
            }
        }
        else {
            if (url.indexOf('#') == -1) {
                return url + '&ConversationID=' + cid;
            }
            else {
                var buf = new StringBuffer();
                var x = url.split('#');
                for (var i=0; i<x.length; i++) {
                    if (i == x.length - 1) {
                        buf.append('&ConversationID=');
                        buf.append(cid);
                        buf.append('#');
                    }
                    buf.append(x[i]);
                }
                return buf.toString();
            }
        }
    },

    /**
     * Generates a HTTP query string (URL plus parameters) from an HTML
     * form. The query string can be used to query the server for
     * data (HTML) using the below getFromURL() function.
     */
    generateQueryString: function(form) {
        var buf = new StringBuffer();

        buf.append(form.action);
        buf.append("?x=x");

        for (j=0; j<form.elements.length; j++) {

            var field = form.elements[j];
            var bypass = field.alt;

            if ((bypass == null) || (bypass != 'bypass')) {
                var type = field.type.toLowerCase();

                if ((type == "text") || (type=="hidden") || (type=="textarea") || (type=="password")) {
                    buf.append("&");
                    buf.append(field.name);
                    buf.append("=");
                    buf.append(encodeURIComponent(field.value));
                }
                else if (type=="checkbox") {
                    buf.append("&");
                    buf.append(field.name);
                    buf.append("=");
                    buf.append(encodeURIComponent(field.checked));
                }
                else if(type.substring(0,6) == "select") {
                    if (type.indexOf ("multiple") != -1) {
                        buf.append("&");
                        buf.append(field.name);
                        buf.append("=");
                        for (i =0; i < field.options.length; i++) {
                            if (field.options[i].selected == true) {
                                buf.append(encodeURIComponent(field.options[i].value));
                                buf.append("|");
                            }
                        }
                    }
                    else {
                        buf.append("&");
                        buf.append(field.name);
                        buf.append("=");
                        buf.append(encodeURIComponent(field.options[field.selectedIndex].value));
                    }
                }
                else if (type == "radio") {
                    if (field.checked) {
                        buf.append("&");
                        buf.append(field.name);
                        buf.append("=");
                        buf.append(encodeURIComponent(field.value));
                    }
                }
            }
        }

        return buf.toString();
    },


    /**
     * Issues an HTTP GET command.
     */
    getFromURL: function(url) {

        url = this.getConversationURL(url);

        // We add a bogus parameter to the end of the URL string to
        // ensure that the data at the given URL is reloaded (not cached).
        // The ActiveX object has no way of turning off caching.
        OpenJaw.requestCounter = OpenJaw.requestCounter + 1;

        url = url + "&RequestCounter=" + OpenJaw.requestCounter;

        var request = null;
        if (window.XMLHttpRequest) {
            request = new XMLHttpRequest();
        }
        else if (window.ActiveXObject) {
            request = new ActiveXObject("Microsoft.XMLHTTP");
        }

        if (request) {
            request.open("GET", url, false);
            request.send(null);
            if (request.status == 200) {
                return request.responseText;
            }
            else {
                return 'Error: ' + request.status + ' ' + request.statusText;
            }
        }
        else {
            return null;
        }
    },

    /**
     * Generates an XML document from an HTML form. The XML can be
     * posted to a URL using the above postToURL() function.
     */
    generatePostXML: function(form, xml) {
        var buf = new StringBuffer();
        buf.append("<PostRequest>");

        for (j=0; j<form.elements.length; j++) {
            var field = form.elements[j];
            var type=field.type.toLowerCase();

            if ((type == "text") || (type=="hidden") || (type=="textarea")) {
                buf.append("<");
                buf.append(field.name);
                buf.append(">");
                buf.append("<![CDATA[");
                buf.append(field.value);
                buf.append("]]>");
                buf.append("</");
                buf.append(field.name);
                buf.append(">");
            }
            else if (type == "checkbox") {
                buf.append("<");
                buf.append(field.name);
                buf.append(">");
                buf.append(field.checked);
                buf.append("</");
                buf.append(field.name);
                buf.append(">");
            }
            else if (type.substring(0,6) == "select") {
                if (type.indexOf("multiple") > -1) {
                    for (i =0; i < field.options.length; i++) {
                        if (field.options[i].selected == true) {
                            buf.append("<");
                            buf.append(field.name);
                            buf.append(">");
                            buf.append("<![CDATA[");
                            buf.append(field.options[i].value);
                            buf.append("]]>");
                            buf.append("</");
                            buf.append(field.name);
                            buf.append(">");
                        }
                    }
                }
                else {
                    buf.append("<");
                    buf.append(field.name);
                    buf.append(">");
                    buf.append("<![CDATA[");
                    buf.append(field.options[field.selectedIndex].value);
                    buf.append("]]>");
                    buf.append("</");
                    buf.append(field.name);
                    buf.append(">");
                }
            }
            else if (type=="radio") {
                if (field.checked) {
                    buf.append("<");
                    buf.append(field.name);
                    buf.append(">");
                    buf.append("<![CDATA[");
                    buf.append(field.value);
                    buf.append("]]>");
                    buf.append("</");
                    buf.append(field.name);
                    buf.append(">");
                }
            }
        }

        if (xml != null) buf.append(xml);

        buf.append("</PostRequest>");
        return buf.toString();
    },


    /**
     * Issues an HTTP POST command.
     */
    postToURL: function(url, post, isForm) {
        url = this.getConversationURL(url);

        var request;
        if (window.XMLHttpRequest) {
            request = new XMLHttpRequest();
        }
        else if (window.ActiveXObject) {
            request = new ActiveXObject("Microsoft.XMLHTTP");
        }

        if (request) {
            request.open("POST", url, false);
            if (isForm){
                request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=UTF-8');
            }
            request.send(post);
            if (request.status == 200) {
                return trim(request.responseText, true, true);
            }
            else {
                return 'Error: ' + request.status + ' ' + request.statusText;
            }
        }
        else {
            return null;
        }
    }

}

// Create string trim function if it doesn't already exist:
if (String.trim == null) {
    String.prototype.trim = function () {
        return this.replace(/^\s*/, "").replace(/\s*$/, "");
    }
}


/**
 * 航信智能联想数据API接口 2019/02/25 13:07:56
 */
function hierarchyLocationSearch(destination) {
    responseJson = null;
    if(destination==''){
        return responseJson;
    }
    var locationType = ['airport','city'];
    $.ajax({
        async:false,
        url:baseIBEUrl+'/hierarchylocationsearch.do?&language=zh&searchableOnly=true&format=json' + '&ConversationID='+OpenJaw.getConversationID(),
        data:{'locationType':locationType,'ajaxSearch':destination,'jsonpCallback':'handleLocaltionResponse'},
        dataType: 'jsonp',
        jsonp : 'callback', //指定一个查询参数名称来覆盖默认的 jsonp 回调参数名 callback
        jsonpCallback: 'handleLocaltionResponse', //设置回调函数名
        success:function(data){
            responseJson = data;
            curInp.update(responseJson);
        }
    });
    return responseJson;
}
var curInp = null;
$(function(){
    // 城市联想示例
    bindStartCityList($('.departure-city'));
    bindEndCityList($('.arrival-city'));


})

function bindStartCityList(obj){
    var cityList = obj.cityList({
        // 初始化回调函数
        onInit: function () {
            // console.log('init');

        },
        // 输入回调函数
        onType: function (value) {
            curInp = this;
            if(value=='')return;
            var result = hierarchyLocationSearch(value);

            return result;

        },
        // 选择城市回调函数
        onSelect: function (value) {
            curInp = this;
            if($(curInp.contain).closest('.ticket-multiple').length<1){
                if($('.departure-city .inp-1').val() !== '') {
                    $('.arrival-city .inp-1').focus();
                }
            }else{
                if($('.departure-city .inp-1').val() !== '') {
                    $(curInp.contain).closest('.departure-city').siblings('.arrival-city').find('.inp-1').focus();
                }
            }

        }
    });
}
function bindEndCityList(obj){
    obj.cityList({
        // 初始化回调函数
        onInit: function () {
        },
        // 输入回调函数
        onType: function (value) {
            curInp = this;
            this.input.attr('data-sel',0);
            if(value=='')return;
            var result = hierarchyLocationSearch(value);
            return result;      // 传递获取到的远程数据到插件

        },
        // 选择城市回调函数
        onSelect: function (value) {

        }
    });
}