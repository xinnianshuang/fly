$(function() {
    $('#trip-box').tabs();
    $('#trip-box-1').tabs();
    $('#trip-box-2').tabs();
    $('#trip-box-3').tabs();

    documentHandle();
    function documentHandle() {
        $(document).click(function() {
            $('.d-down-list.d-down-select')
                .stop()
                .slideUp(200);
            $('.d-down-list.d-down-document')
                .stop()
                .slideUp(200);
        });
    }

    //鼠标悬停展示提示信息
    TipsHover();
    function TipsHover() {
        $('body').on('mouseenter', '.tip-trigger', function() {
            $(this).addClass('hover');
        });
        $('body').on('mouseleave', '.tip-trigger', function() {
            $(this).removeClass('hover');
        });
    }

    // 下拉选择
    SelectImitation();
    function SelectImitation() {
        var manTypeInput = '1成人 0儿童 0婴儿';
        var manType = {"adult":"成人","child":"儿童","baby":"婴儿","police":"伤残人民警察",
            "soldier":"伤残军人"};
        $('.d-select .d-inp').click(function() {
            $("#trip-box").trigger('click');

            $('.d-down-list')
                .stop()
                .slideUp(200);
            $(this)
                .siblings('.d-down-list')
                .stop()
                .slideToggle(200);
            return false;
        });
        $('.d-select .d-icon').click(function() {
            if (
                $(this)
                    .siblings('.d-inp')
                    .attr('disabled') != 'disabled'
            ) {
                $('.d-down-list')
                    .stop()
                    .slideUp(200);
                $(this)
                    .siblings('.d-down-list')
                    .stop()
                    .slideToggle(200);
            }
            return false;
        });
        $('.d-down-list.d-down-select li').click(function() {
            var str = $(this).text();
            $(this)
                .closest('.d-down-list')
                .stop()
                .slideUp(200)
                .siblings('.d-inp')
                .val(str);
            return false;
        });

        // 下拉增加人数
        $(".d-down-list.d-down-document").click(function(event) {
            /* Act on the event */
            event.stopPropagation();
        });
        $('.d-down-list.d-down-document .btn-plus').click(function(event) {
            var box = $(this).closest('.man-count');
            var adult =box.find('input[name="adult"]');
            var child =box.find('input[name="child"]');
            var baby =box.find('input[name="baby"]');
            var soldier =box.find('input[name="soldier"]');
            var police =box.find('input[name="police"]');
            var input =$(this).siblings('.box-input');
            var text = $.trim(box.find(".d-inp").val());

            var num = parseInt(input.val());
            var name = input.attr('name');
            var txt = num+manType[name];

            if(box.hasClass("member-hotel")){
                $(this).siblings('.btn-minus').attr('disabled', false);
                if( name === 'adult') {
                    if(num<5){
                        input.val(++num);
                        text = num +'成人 '+child.val()+'儿童 ';
                        box.find('.d-inp').val(text);
                    }
                    if(child.val()/2<num){
                        child.siblings('.btn-plus').attr('disabled',false);
                    }
                }else{
                    if(num<5 && num/2<adult.val()){
                        input.val(++num);
                        text = adult.val() +'成人 '+num+'儿童 ';
                        box.find('.d-inp').val(text);
                    }
                    if(num/2<adult.val()){
                        $(this).attr('disabled', false);
                    }else{
                        $(this).attr('disabled', true);
                    }
                }

                if(parseInt(adult.val())+parseInt(child.val())>=5){
                    adult.siblings('.btn-plus').attr('disabled',true);
                    child.siblings('.btn-plus').attr('disabled',true);
                }
            }else{
                if( name === 'adult' || name === 'child' || name === 'baby') {
                    $(this).siblings('.btn-minus').attr('disabled', false);
                    if(name!=='adult'){
                        if(adult.val()<=1){
                            adult.val(1);
                        }
                        soldier.val(0).siblings().attr('disabled',true);
                        police.val(0).siblings().attr('disabled',true);
                    }

                    if( name === 'adult') {
                        if(num<9){
                            input.val(++num);
                        }
                        if(baby.val()<num){
                            baby.siblings('.btn-plus').attr('disabled',false);
                        }
                        // 去掉儿童人数限制
                        // if(child.val()/2<num){
                        //     child.siblings('.btn-plus').attr('disabled',false);
                        // }
                        text = num +'成人 '+child.val()+'儿童 '+baby.val()+'婴儿';
                        box.find('.d-inp').val(text);

                        soldier.val(0).siblings('.btn-minus').attr('disabled',true);
                        police.val(0).siblings('.btn-minus').attr('disabled',true);
                        if(child.val()==0 && baby.val()==0){
                            soldier.val(0).siblings('.btn-plus').attr('disabled',false);
                            police.val(0).siblings('.btn-plus').attr('disabled',false);
                        }
                    }else if(name === 'baby'){
                        if(adult.val()>num && num<3){
                            input.val(++num);

                            text = adult.val()+'成人 '+child.val()+'儿童 '+num+'婴儿';
                            box.find('.d-inp').val(text);
                        }
                        if(adult.val()<=num){
                            $(this).attr('disabled', true);
                        }else{
                            $(this).attr('disabled', false);
                        }
                    }else{
                        //if(num<9 && num/2<adult.val()){
                        if(num<9){
                            input.val(++num);
                            text = adult.val()+'成人 '+num+'儿童 '+baby.val()+'婴儿';
                            box.find('.d-inp').val(text);
                        }
                        // if(num/2<adult.val()){
                        //     $(this).attr('disabled', false);
                        // }else{
                        //     $(this).attr('disabled', true);
                        // }
                    }
                }

                if(name === 'soldier' || name === 'police'){
                    box.find('.d-select ul li .box-input').val(0);
                    box.find('.btn-minus').attr('disabled',true)
                    $(this).attr('disabled',true).siblings('.btn-minus').attr('disabled',false);
                    if(name === 'soldier'){
                        if(num<1){
                            num++
                            soldier.val(num);
                        }
                        text = num + '伤残军人';
                        police.siblings().attr('disabled',true);
                    }else{
                        if(num<1){
                            num++
                            police.val(num);
                        }
                        text = num + '伤残人民警察';
                        soldier.siblings().attr('disabled',true);
                    }
                    box.find('.d-inp').val(text);
                }

                var sum = parseInt(adult.val())+parseInt(child.val())+parseInt(baby.val())
                if(sum>=9){
                    adult.siblings('.btn-plus').attr("disabled",true);
                    child.siblings('.btn-plus').attr("disabled",true);
                    baby.siblings('.btn-plus').attr("disabled",true);
                }
            }
        })

        $('.d-down-list.d-down-document .btn-minus').click(function(event) {
            var box = $(this).closest('.man-count');
            var adult =box.find('input[name="adult"]');
            var child =box.find('input[name="child"]');
            var baby =box.find('input[name="baby"]');
            var soldier =box.find('input[name="soldier"]');
            var police =box.find('input[name="police"]');
            var input =$(this).siblings('.box-input');
            var text = $.trim(box.find(".d-inp").val());

            var num = parseInt(input.val());
            var name = input.attr('name');
            var txt = num+manType[name];

            if(box.hasClass("member-hotel")){
                $(this).siblings('.btn-plus').attr('disabled', false);
                if( name === 'adult') {
                    if(num>1){
                        num--;
                        input.val(num);
                        text = num +'成人 '+child.val()+'儿童 ';

                        if(child.val()/2>=num){
                            var childnum = child.val();
                            child.val(num*2);
                            text = text.replace(childnum+'儿童',(num*2)+'儿童');
                        }

                        box.find('.d-inp').val(text);
                    }
                    if(num<=1){
                        $(this).attr('disabled',true);
                    }
                }else{
                    if(num>=1){
                        num--;
                        input.val(num);
                        text = adult.val() +'成人 '+num+'儿童 ';
                        box.find('.d-inp').val(text);
                    }
                    if(num<=0){
                        $(this).attr('disabled',true);
                    }
                }

                if(parseInt(adult.val())+parseInt(child.val())<=1){
                    adult.siblings('.btn-minus').attr('disabled',true);
                    child.siblings('.btn-minus').attr('disabled',true);
                }
                if(parseInt(adult.val())+parseInt(child.val())<5){
                    adult.siblings('.btn-plus').attr('disabled',false);
                    if(adult.val()>child.val()/2){
                        child.siblings('.btn-plus').attr("disabled",false);
                    }else{
                        child.siblings('.btn-plus').attr("disabled",true);
                    }
                }

            }else{
                if(name !== 'adult'){
                    if(num>0){
                        num--;
                        input.val(num);
                        $(this).siblings('.btn-plus').attr('disabled', false);
                        text=text.replace(txt,num+manType[name]);
                        box.find('.d-inp').val(text);
                    }

                    if(name === 'child' || name === 'baby'){
                        if(child.val()<=0 && baby.val()<=0 ){
                            $(this).attr('disabled',true).siblings('.btn-plus').attr('disabled',false);
                            police.siblings(".btn-plus").attr('disabled',false);
                            soldier.siblings(".btn-plus").attr('disabled',false);
                            text = adult.val()+'成人 0儿童 0婴儿';
                        }else if(num<=0){
                            $(this).attr('disabled',true).siblings('.btn-plus').attr('disabled',false);
                            text=text.replace(txt,num+manType[name]);
                        }
                        box.find('.d-inp').val(text);
                    }else{
                        if(num-1<=0){
                            $(this).attr('disabled',true);
                            police.siblings(".btn-plus").attr('disabled',false);
                            soldier.siblings(".btn-plus").attr('disabled',false);
                            text = adult.val()+'成人 0儿童 0婴儿';
                            box.find('.d-inp').val(text);
                        }
                    }

                }else{
                    if(num>1){
                        num--;
                        input.val(num);
                        $(this).siblings('.btn-plus').attr('disabled', false);

                        if(baby.val()>=num){
                            var babynum = baby.val();
                            baby.val(num);
                            text = text.replace(babynum+'婴儿',num+'婴儿');
                        }
                        text = text.replace(txt,num+manType[name]);
                        box.find('.d-inp').val(text);
                    }

                }
                var sum = parseInt(adult.val())+parseInt(child.val())+parseInt(baby.val())
                if(sum<9){
                    adult.siblings('.btn-plus').attr("disabled",false);
                    child.siblings('.btn-plus').attr("disabled",false);
                    if(adult.val()>baby.val()){
                        baby.siblings('.btn-plus').attr("disabled",false);
                    }
                }
                if(adult.val()==0 && child.val()==0 && baby.val()==0 &&police.val()==0 && soldier.val()==0){
                    text = '1成人 0儿童 0婴儿';
                    adult.val(1);
                    box.find('.d-inp').val(text);
                }
            }
        })

        $(".login-method .d-down-list li").click(function(event) {
            /* Act on the event */
            var method = $(this).text();
            if(method==="金鹏卡号"){
                $(".login-method-info").removeClass('label3em');
            }else{
                $(".login-method-info").addClass('label3em');
            }
            $(".login-method-info .inp-prefix").text(method+":");
        });

    }

    // 单选
    radioHandle();
    function radioHandle() {
        $('.ticket-1-radio .d-radio-box .d-radio').click(function(e) {
            $(this)
                .addClass('on')
                .siblings()
                .removeClass('on');
            var radioName = $(this).attr('name');
            if (radioName === 'round-trip') {
                $('#ticket-1').removeClass('more-trip');
                $('#flightEndDate1').attr('disabled', false);
                $('#flightEndDate1')
                    .parent()
                    .removeClass('arr-disabled');
                $('#ticket-1 .row-1 > div')
                    .not('.ticket-1-radio')
                    .show();
                $('#ticket-1 .row-3').slideUp(200);
                $('#ticket-1 .row-4').slideUp(200);
                $('#ticket-1 .row-edit-box').slideUp(200);
            } else if( radioName === 'single-trip'){
                $('#ticket-1').removeClass('more-trip');
                $('#flightEndDate1').attr('disabled', true);
                $('#flightEndDate1')
                    .parent()
                    .addClass('arr-disabled');
                $('#ticket-1 .row-1 > div')
                    .not('.ticket-1-radio')
                    .show();
                $('#ticket-1 .row-3').slideUp(200);
                $('#ticket-1 .row-4').slideUp(200);
                $('#ticket-1 .row-edit-box').slideUp(200);
            } else {
                $('#ticket-1').addClass('more-trip');
                $('#ticket-1 .row-1 > div')
                    .not('.ticket-1-radio')
                    .hide();
                $('#ticket-1 .row-2').slideUp(0);
                $('#ticket-1 .row-3').slideDown(200);
                $('#ticket-1 .row-4').slideDown(200);
                $('#ticket-1 .row-5').slideDown(200);
                $('#ticket-1 .row-edit-box').slideDown(200);
                e.stopPropagation();
            }
        });
        $('.ticket-2-radio .d-radio-box .d-radio').click(function(e) {
            $(this)
                .addClass('on')
                .siblings()
                .removeClass('on');
            var radioName = $(this).attr('id');
            if (radioName === 'round-trip-id2') {
                $('#flightEndDate2').attr('disabled', false).parent()
                    .removeClass('arr-disabled');
                var dateText = $("#flightEndDate2").datepicker('getDate');
                $("#hotelOutDate").datepicker('option',{'minDate':dateText,'maxDate':dateText}).datepicker('setDate',dateText);
            } else {
                $('#flightEndDate2').attr('disabled', true).parent()
                    .addClass('arr-disabled');
                $("#hotelOutDate").datepicker('option','maxDate','');
            }
        });

        $('.d-single-radio .d-radio').click(function() {
            $(this).toggleClass('on');
        });
    }

    // 添加删除新航线
    editFlightLine();
    function editFlightLine() {
        var len = 2;
        btnDisabled(len);
        sortMultiple();
        function btnDisabled(_len) {
            if (_len >= 6) {
                $('#ticket-1 .row-edit-btn.add-row').css(
                    'opacity',
                    '0.5'
                );
            } else {
                $('#ticket-1 .row-edit-btn.add-row').css('opacity', '1');
            }
            if (_len <= 2) {
                $('#ticket-1 .row-edit-btn.delete-row').css(
                    'opacity',
                    '0.5'
                );
            } else {
                $('#ticket-1 .row-edit-btn.delete-row').css(
                    'opacity',
                    '1'
                );
            }
        }
        // 新增航段
        $('#ticket-1 .row-edit-btn.add-row').click(function() {
            var rowList = $('#ticket-1 .row-4-list');
            len =rowList.find('.row-4').length;
            if (len < 6) {
                btnDisabled(len+1);
                var last = rowList.find('.row-4').last();
                var lastSort = last.attr('data-sort');
                var lastDate = last.find('.date-inputs').val();
                var template = templateMultiple(len+1);
                rowList.append(template);
                bindDate($('.new-box .date-inputs'));
                var num = lastSort-0+1;
                var _id = 'travel-'+num;
                var nextDate = '';
                var reg = new RegExp("^[1-2]\\d{3}-(0?[1-9]||1[0-2])-(0?[1-9]||[1-2][0-9]||3[0-1])$");
                if(reg.test(lastDate)){
                    nextDate = addDay(1,lastDate);
                }
                last.next().attr({'id':_id,'data-sort':num}).find(".date-inputs").val(nextDate);
                InputEvt();
                bindStartCityList($('#'+_id).find('.departure-city'));
                bindEndCityList($('#'+_id).find('.arrival-city'));
            }
        });
        // 删除航段
        $('#ticket-1').on('click','.row-edit-btn.delete-row',function() {
            len = $('#ticket-1 .row-4-list .row-4').length;
            if(len<=2) return false;
            btnDisabled(len - 1);
            $(this).closest('.row-4').remove();
            if(len-1<=2) $(this).css('opacity', '0.5');
            // 重置航段信息
            $('#ticket-1 .seg-p').each(function(idx){
                $(this).text('第'+ditTohz(idx+1)+'段');
            });
        });
    }


    function sortMultiple(){
        $(".ticket-multiple .row-4").each(function(index,el){
            var delay = 7;
            var num = index+1;
            var _id = 'travel-'+num;
            $(this).attr({'id':_id,'data-sort':num}).find(".date-inputs").val(addDay((delay+index),new Date()));
        })
    }


    function addDay(num,date){
        if(date=='' || num==undefined) return;
        var now = new Date(date);
        now.setDate(now.getDate()+num);
        var day = now.getDate();
        var month = now.getMonth()+1;
        var year = now.getFullYear();
        var target = year+"-"+(month<10?"0"+month:month)+"-"+(day<10?"0"+day:day);
        return target;
    }

    function ditTohz(dit){
        if(!dit)
            return '';
        if(dit == 1){
            return '一';
        } else if(dit == 2){
            return '二';
        } else if(dit == 3){
            return '三';
        } else if(dit == 4){
            return '四';
        } else if(dit == 5){
            return '五';
        } else if(dit == 6){
            return '六';
        }
    }

    function templateMultiple(len){
        var html = '<div class="clearfix mb-20 row-4 new-box">';
        html += '<p class="seg-p">第'+ditTohz(len)+'段</p>';
        html += '<div class="city-box departure-city fl">';
        html += '<div class="inp-prefix">出发城市：</div>';
        html +=
            '<input type="text" class="inp-1" name="from_city_more" value="" placeholder="(拼音 / 汉字)">';
        html += '<span class="icon-posi"></span><div class="msg"></div></div>';
        html += '<div class="middle-icon site change-site fl"></div>';
        html += '<div class="city-box arrival-city fl mr-20">';
        html += '<div class="inp-prefix">到达城市：</div>';
        html +=
            '<input type="text" class="inp-1" name="to_city_more" placeholder="(拼音 / 汉字)">';
        html += '<span class="icon-posi"></span><div class="msg"></div></div>';
        html += '<div class="departure-date focus-date fl">';
        html += '<div class="inp-prefix">出发日期：</div>';
        html +=
            '<input type="text" class="inp-1 date-inputs" name="departDate_more" placeholder="YYYY-MM-DD">';
        html += '<span class="text-icon"></span></div><a href="javascript:;" class="row-edit-btn delete-row">&nbsp;</a></div>';
        return html;
    }

    // 机票搜索自动滚动
    tripBoxScroll();
    function tripBoxScroll() {
        $('#trip-box').on('click',function() {
            var scrollTop = $(document).scrollTop();
            if (scrollTop < 200) {
                $('body,html').stop().animate({'scrollTop':400},600);
            }
        });
    }

    ticket1Handle();
    function ticket1Handle() {
        $('#ticket-1 .ticket-1-btn .btn-search').click(function (e) {
            e.preventDefault();
            e.stopPropagation();
            $(this).parent().hide();
            $(this)
                .parent().parent()
                .siblings('.row-5')
                .slideDown(200);
            $("#trip-box").trigger('click');
        })
        $('#ticket-1 .row-1 > div').click(function(e) {
            $("#trip-box").trigger('click');
            if($(this).hasClass('ticket-1-radio')) return false;
            $(this)
                .siblings('.ticket-1-btn')
                .hide();
            $(this)
                .parent()
                .siblings('.row-2')
                .slideDown(200);
            $(this)
                .parent()
                .siblings('.row-5')
                .slideDown(200);
        });

        $('#ticket-1 .row-1 input').click(function() {
            $(this)
                .parent()
                .siblings('.ticket-1-btn')
                .hide();
            $(this)
                .parent()
                .parent()
                .siblings('.row-2')
                .slideDown(200);
            $(this)
                .parent()
                .parent()
                .siblings('.row-5')
                .slideDown(200);
        });
        $('#ticket-1 .row-1 .flight-radio').click(function(e) {
            $("#trip-box").trigger('click');
            if($(this).index()<2){
                $(this).closest('.ticket-1-radio')
                    .siblings('.ticket-1-btn')
                    .hide();
                $(this).closest('.ticket-1-radio')
                    .parent()
                    .siblings('.row-2')
                    .slideDown(200);
                $(this).closest('.ticket-1-radio')
                    .parent()
                    .siblings('.row-5')
                    .slideDown(200);
            }
        });
        $("#trip-box-1 .tab-list-sub li:first").click(function () {
            if($("#trip-box-1 .ticket-1-radio .flight-radio.on").index()<2){
                $("#ticket-1 .row-1 .ticket-1-btn").hide();
                $("#ticket-1 .row-2").stop().slideDown(200);
                $("#ticket-1 .row-5").stop().slideDown(200);
            }
        })
    }

    function bindDate(dateInputs) {
        if (dateInputs.length < 1 || !$.datepicker) {
            return false;
        }
        $.datepicker.regional['zh-CN'] = {
            closeText: '关闭',
            prevText: '&#x3C;上月',
            nextText: '下月&#x3E;',
            currentText: '今天',
            monthNames: [
                '一月',
                '二月',
                '三月',
                '四月',
                '五月',
                '六月',
                '七月',
                '八月',
                '九月',
                '十月',
                '十一月',
                '十二月'
            ],
            monthNamesShort: [
                '一月',
                '二月',
                '三月',
                '四月',
                '五月',
                '六月',
                '七月',
                '八月',
                '九月',
                '十月',
                '十一月',
                '十二月'
            ],
            dayNames: [
                '星期日',
                '星期一',
                '星期二',
                '星期三',
                '星期四',
                '星期五',
                '星期六'
            ],
            dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
            dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
            weekHeader: '周',
            dateFormat: 'yy-mm-dd',
            firstDay: 0,
            isRTL: false,
            showMonthAfterYear: true,
            yearSuffix: '年',

            onSelect: function() {
                var beginDate = $(this).datepicker('getDate');
                if (
                    $('#flightBeginDate1')
                        .parent()
                        .hasClass('focus-date')
                ) {
                    $('#flightEndDate1').datepicker('option', 'minDate', beginDate);
                    setTimeout(function() {
                        $('#flightEndDate1').trigger('focus');
                    }, 100);
                }
                if (
                    $('#flightBeginDate2')
                        .parent()
                        .hasClass('focus-date')
                ) {
                    $('#flightEndDate2').datepicker('option', 'minDate', beginDate);
                    setTimeout(function() {
                        $('#flightEndDate2').trigger('focus');
                    }, 100);
                }
                if (
                    $('#hotelInDate')
                        .parent()
                        .hasClass('focus-date')
                ) {
                    $('#hotelOutDate').datepicker('option', 'minDate', beginDate);
                    setTimeout(function() {
                        $('#hotelOutDate').trigger('focus');
                    }, 100);
                }
                if ($('.ticket-form .jd-in').hasClass('focus-jd')) {
                    setTimeout(function() {
                        $('.ticket-form .jd-leave input').trigger('focus');
                    }, 100);
                }
            }
        };
        $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
        var dd = {
            yuandan: [
                '2014-01-01',
                '2015-01-01',
                '2016-01-01',
                '2017-01-01',
                '2018-01-01',
                '2019-01-01',
                '2020-01-01',
                '2021-01-01',
                '2022-01-01',
                '2023-01-01',
                '2024-01-01',
                '2025-01-01',
                '2026-01-01',
                '2027-01-01',
                '2028-01-01',
                '2029-01-01',
                '2030-01-01'
            ],
            chuxi: [
                '2014-01-30',
                '2015-02-18',
                '2016-02-07',
                '2017-01-27',
                '2018-02-15',
                '2019-02-04',
                '2020-01-24',
                '2021-02-11',
                '2022-01-31',
                '2023-01-21',
                '2024-02-09',
                '2025-01-28',
                '2026-02-16',
                '2027-02-05',
                '2028-01-25',
                '2029-02-12'
            ],
            chunjie: [
                '2014-01-31',
                '2015-02-19',
                '2016-02-08',
                '2017-01-28',
                '2018-02-16',
                '2019-02-05',
                '2020-01-25',
                '2021-02-12',
                '2022-02-01',
                '2023-01-22',
                '2024-02-10',
                '2025-01-29',
                '2026-02-17',
                '2027-02-06',
                '2028-01-26',
                '2029-02-13'
            ],
            yuanxiao: [
                '2014-02-14',
                '2015-03-05',
                '2016-02-22',
                '2017-02-11',
                '2018-03-02',
                '2019-02-19',
                '2020-02-08',
                '2021-02-26',
                '2022-02-15',
                '2023-02-05',
                '2024-02-24',
                '2025-02-12',
                '2026-03-03',
                '2027-02-20',
                '2028-02-09',
                '2029-02-27'
            ],
            qingming: [
                '2014-04-05',
                '2015-04-05',
                '2016-04-04',
                '2017-04-04',
                '2018-04-05',
                '2019-04-05',
                '2020-04-04',
                '2021-04-04',
                '2022-04-05',
                '2023-04-05',
                '2024-04-04',
                '2025-04-04',
                '2026-04-05',
                '2027-04-05',
                '2028-04-04',
                '2029-04-04'
            ],
            wuyi: [
                '2014-05-01',
                '2015-05-01',
                '2016-05-01',
                '2017-05-01',
                '2018-05-01',
                '2019-05-01',
                '2020-05-01',
                '2021-05-01',
                '2022-05-01',
                '2023-05-01',
                '2024-05-01',
                '2025-05-01',
                '2026-05-01',
                '2027-05-01',
                '2028-05-01',
                '2029-05-01'
            ],
            duanwu: [
                '2014-06-02',
                '2015-06-20',
                '2016-06-09',
                '2017-05-30',
                '2018-06-18',
                '2019-06-07',
                '2020-06-25',
                '2021-06-14',
                '2022-06-03',
                '2023-06-22',
                '2024-06-10',
                '2025-05-31',
                '2026-06-19',
                '2027-06-09',
                '2028-06-27',
                '2029-06-16'
            ],
            zhongqiu: [
                '2014-09-08',
                '2015-09-27',
                '2016-09-15',
                '2017-10-04',
                '2018-09-24',
                '2019-09-13',
                '2020-10-01',
                '2021-09-21',
                '2022-09-10',
                '2023-09-29',
                '2024-09-17',
                '2025-10-06',
                '2026-09-25',
                '2027-09-15',
                '2028-10-03',
                '2029-09-22'

            ],
            guoqing: [
                '2014-10-01',
                '2015-10-01',
                '2016-10-01',
                '2017-10-01',
                '2018-10-01',
                '2019-10-01',
                '2020-10-01',
                '2021-10-01',
                '2022-10-01',
                '2023-10-01',
                '2024-10-01',
                '2025-10-01',
                '2026-10-01',
                '2027-10-01',
                '2028-10-01',
                '2029-10-01'
            ]
        };
        var df = [
            '元旦',
            '除夕',
            '春节',
            '元宵',
            '清明',
            '五一',
            '端午',
            '中秋',
            '国庆'
        ];
        dateInputs.each(function() {
            if (
                $(this)
                    .parent()
                    .hasClass('j-cal-range')
            ) {
                $(this).datepicker({
                    numberOfMonths: 2,
                    beforeShow: function(input, inst) {
                        initHoliday(input, inst, 2);
                    },
                    onChangeMonthYear: function(year, month, inst) {
                        dateFun(year, month, 2);
                    }
                });
            } else if (
                $(this)
                    .parent()
                    .hasClass('j-cal-limit')
            ) {
                $(this).datepicker({
                    minDate: -2,
                    maxDate: 2,
                    beforeShow: function(input, inst) {
                        initHoliday(input, inst, 1);
                    },
                    onChangeMonthYear: function(year, month, inst) {
                        dateFun(year, month, 1);
                    }
                });
            } else if (
                $(this)
                    .parent()
                    .hasClass('j-cal-birthday')
            ) {
                $(this).datepicker({
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '1900:c',
                    maxDate: 0,
                    showButtonPanel: false,
                    yearSuffix: ' ',
                    beforeShow: function(input, inst) {
                        initHoliday(input, inst, 1);
                    },
                    onChangeMonthYear: function(year, month, inst) {
                        dateFun(year, month, 1);
                    }
                });
            } else if (
                $(this)
                    .parent()
                    .hasClass('j-cal-passport')
            ) {
                $(this).datepicker({
                    changeMonth: true,
                    changeYear: true,
                    yearRange: '2014:2060',
                    showButtonPanel: false,
                    yearSuffix: ' ',
                    beforeShow: function(input, inst) {
                        initHoliday(input, inst, 1);
                    },
                    onChangeMonthYear: function(year, month, inst) {
                        dateFun(year, month, 1);
                    }
                });
            } else {
                $(this).datepicker({
                    numberOfMonths: 2,
                    minDate: 0,
                    maxDate: '2029-12-31',
                    beforeShow: function(input, inst) {
                        initHoliday(input, inst, 2);
                    },
                    onChangeMonthYear: function(year, month, inst) {
                        dateFun(year, month, 2);
                    }
                });
            }
            $(this).after('<span class="text-icon"></span>');
            $('.departure-date .text-icon, .arrival-date .text-icon, .hotel-in-date .text-icon, .hotel-out-date .text-icon').on('click', function() {
                var sib = $(this).parent(),
                    input = $(this).siblings('.inp-1');
                if (!sib.hasClass('arr-disabled')) {
                    input.trigger('focus');
                }
            });
        });
        function initHoliday(input, inst, status) {
            var _val = $(input).val(),
                _bloor = /^(\d+)-(\d+)-(\d+)$/.test(_val),
                year,
                month,
                today = new Date();
            if (_bloor) {
                var date = $(input)
                    .val()
                    .split('-');
                if (date[0] >= 2014) {
                    year = date[0];
                    month = parseInt(date[1],10);
                } else {
                    year = today.getFullYear();
                    month = today.getMonth() + 1;
                }
            } else {
                // var leftMonth = getLeftMonth(input,today)
                // year = leftMonth.year;
                // month = leftMonth.month;
                year = today.getFullYear();
                month = today.getMonth() + 1;
            }
            dateFun(year, month, status);

            // var _val = $(input).val(),
            //   _bloor = /^(\d+)-(\d+)-(\d+)$/.test(_val),
            //   today = new Date();
            // if (_bloor) {
            //   var date = $(input)
            //     .val()
            //     .split('-');
            //   if (date[0] >= 2014) {
            //     today = new Date(date);
            //   }
            // }
            // var leftMonth = getLeftMonth(input,today)
            // dateFun(leftMonth.year, leftMonth.month, status);

        }
        function getLeftMonth(input,today){
            var minDate = parseInt($(input).datepicker('option','minDate'))
            var maxDate = parseInt($(input).datepicker('option','maxDate'))
            var todayT = today.getTime()
            var minT = todayT+minDate*(24*60*60*1000)
            var maxT = todayT+maxDate*(24*60*60*1000)
            var minDay = new Date(minT)
            var maxDay = new Date(maxT)
            var todayM = $.datepicker.formatDate('m',today)
            var minM = $.datepicker.formatDate('m',minDay)
            var maxM = $.datepicker.formatDate('m',maxDay)
            if(todayM === maxM && todayM !== minM){
                return {
                    year: parseInt($.datepicker.formatDate('yy',minDay)),
                    month: parseInt($.datepicker.formatDate('m',minDay)),
                }
            }else{
                return {
                    year: parseInt($.datepicker.formatDate('yy',today)),
                    month: parseInt($.datepicker.formatDate('m',today)),
                }
            }
        }
        function getYearAndMonthByDatepickerFirst(){
            var first = $('#ui-datepicker-div').children('.ui-datepicker-group-first')
            var year = first.find('[data-year]').attr('data-year')
            var month = first.find('[data-month]').attr('data-month')
            return {
                year:parseInt(year),
                month:parseInt(month)+1
            }
        }
        function dateFun(a, b, status) {
            clearTimeout(_state);
            var _state = setTimeout(function() {
                var obj = getYearAndMonthByDatepickerFirst()
                a = obj.year
                b = obj.month
                console.log(a,b)
                var currentYear = 14,
                    yearNum = parseInt(a.toString().slice(2)) - currentYear,
                    monthNum = b,
                    nextYear = yearNum,
                    nextMon = b + 1;
                if (monthNum == 12) {
                    nextMon = 1;
                    nextYear = nextYear + 1;
                }
                var elem = [];
                var arr = [];
                if (yearNum < 0 || yearNum >= 8) {
                    return;
                }
                for (var t = 0; t < 2; t++) {
                    arr.push(dd['yuandan'][yearNum + t]);
                    arr.push(dd['chuxi'][yearNum + t]);
                    arr.push(dd['chunjie'][yearNum + t]);
                    arr.push(dd['yuanxiao'][yearNum + t]);
                    arr.push(dd['qingming'][yearNum + t]);
                    arr.push(dd['wuyi'][yearNum + t]);
                    arr.push(dd['duanwu'][yearNum + t]);
                    arr.push(dd['zhongqiu'][yearNum + t]);
                    arr.push(dd['guoqing'][yearNum + t]);
                }
                for (var i = 0, len = arr.length; i < len; i++) {
                    var year = parseInt(arr[i].slice(2, 4), 10) - currentYear;
                    var mon = parseInt(arr[i].slice(5, 7), 10);
                    var dayNum = parseInt(arr[i].slice(8, 10), 10);
                    if (mon == monthNum && year == yearNum) {
                        if (status == 1) {
                            $('#ui-datepicker-div')
                                .children('table')
                                .find('.ui-state-default')
                                .eq(dayNum - 1)
                                .addClass('ui-state-red')
                                .prop('data-mark', df[i % 9]);
                        } else if (status == 2) {
                            $('#ui-datepicker-div')
                                .children('.ui-datepicker-group-first')
                                .children('table')
                                .find('.ui-state-default')
                                .eq(dayNum - 1)
                                .addClass('ui-state-red')
                                .prop('data-mark', df[i % 9]);
                        }
                    }
                    if (mon == nextMon && year == nextYear) {
                        $('#ui-datepicker-div')
                            .children('.ui-datepicker-group-last')
                            .children('table')
                            .find('.ui-state-default')
                            .eq(dayNum - 1)
                            .addClass('ui-state-red')
                            .prop('data-mark', df[i % 9]);
                    }
                    $('#ui-datepicker-div')
                        .find('.ui-state-red')
                        .each(function() {
                            $(this).prop('data-path', $(this).text());
                        });
                    $('#ui-datepicker-div')
                        .find('.ui-state-red')
                        .each(function() {
                            clearTimeout(_set);
                            var _mark = $(this).prop('data-mark'),
                                _text = $(this).prop('data-path'),
                                _that = $(this),
                                _set = setTimeout(function() {
                                    _that.text(_mark);
                                }, 1);
                            $(this).hover(
                                function() {
                                    _that.text(_text);
                                },
                                function() {
                                    _that.text(_mark);
                                }
                            );
                        });
                }
            }, 1);
        }
    }
    bindDate($('.date-inputs'));

    flightDynamicsDate();
    function flightDynamicsDate(){
        $("#ahbcx_riqi").datepicker('option',{
            minDate:'-30D',
            maxDate:'+30D'
        });
    }


    function formatNum(num){
        num = num<10? "0"+num:num;
        return num;
    }
    TicketAndHotelDate();
    function TicketAndHotelDate(){
        $("#flightBeginDate2").datepicker('option',{
            onSelect: function(dateText, inst) {
                var addTime = 2*24*60*60*1000;
                var tempDate = new Date(Date.parse(dateText)+addTime);
                var dateStr = tempDate.getFullYear()+"-"+formatNum(parseInt(tempDate.getMonth())+1)+"-"+formatNum(tempDate.getDate());

                // var enddate = $("#flightEndDate2").datepicker('option')
                $("#flightEndDate2").datepicker('option','minDate',dateText).datepicker('setDate',dateStr);
                $("#hotelInDate").datepicker('option',{'minDate':dateText,'maxDate':dateStr}).datepicker('setDate',dateText);
                if($(".ticket-2-radio .d-radio.on").attr("name")=="round-trip"){
                    $("#hotelOutDate").datepicker('option',{'minDate':dateText,'maxDate':dateStr}).datepicker('setDate',dateStr);
                }else{
                    $("#hotelOutDate").datepicker('option',{'minDate':dateText,'maxDate':''}).datepicker('setDate',dateStr);
                }

            },
            minDate:'+3d',
            defaultDate:'+3d',
        })
        $("#flightEndDate2").datepicker('option',{
            onSelect: function(dateText, inst) {
                var delTime = 2*24*60*60*1000;
                var tempDate = new Date(Date.parse(dateText)-delTime);
                var dateStr = tempDate.getFullYear()+"-"+formatNum(parseInt(tempDate.getMonth())+1)+"-"+formatNum(tempDate.getDate());
                $("#flightBeginDate2").datepicker('option','maxDate',dateText);
                $("#hotelInDate").datepicker('option','maxDate',dateText);
                $("#hotelOutDate").datepicker('option','maxDate',dateText).datepicker('setDate',dateText);
            },
            minDate:'+3d',
            defaultDate:'+3d',
        })
        $("#hotelInDate").datepicker('option',{
            onSelect: function(dateText, inst) {
                $("#hotelOutDate").datepicker('option','minDate',dateText);
            },
            minDate:'+3d',
            defaultDate:'+3d',
        })
        $("#hotelOutDate").datepicker('option',{
            onSelect: function(dateText, inst) {
                $("#hotelInDate").datepicker('option','maxDate',dateText);
            },
            minDate:'+3d',
            defaultDate:'+3d',
        })
    }

    InputFocus();
    function InputFocus() {
        $('.city-box .inp-1').after('<span class="icon-posi"></span>');

        $(document).on('focus', '.city-box input', function() {
            $(this).attr('data-sel',0);
            $(this)
                .parent()
                .siblings('.ticket-1-btn')
                .hide();
            $(this)
                .parent()
                .parent()
                .siblings('.row-2')
                .slideDown(200);
            $(this)
                .parent()
                .parent()
                .siblings('.row-5')
                .slideDown(200);
            $("#trip-box").trigger('click');
            $('.city-box').removeClass('focus-city');
            $(this)
                .parent()
                .addClass('focus-city');
            resetCityList();
            $('.city-plug').show();

            var WinWidth = $(window).width();
            var ListWidth = $('.city-plug').outerWidth(); // 自身高度
            var InpHeight = $(this).outerHeight(); // 自身高度
            var InpTop = $(this).offset().top; // 到页面顶部的距离
            var InpLeft = $(this).offset().left; // 到页面左侧的距离

            if (!$('.city-plug').hasClass('absolute')) {
                if(ListWidth+InpLeft>WinWidth){
                    $('.city-plug').css({
                        right: 0,
                        left:'auto',
                        top: InpTop + InpHeight  + 'px'
                    });
                }else{
                    $('.city-plug').css({
                        left: InpLeft + 'px',
                        right:"auto",
                        top: InpTop + InpHeight  + 'px'
                    });
                }
            } else {
                var TicketWidth = $(this)
                    .closest('.ticket-container')
                    .outerWidth(); // 订票框的宽度
                var TicketTop = $(this)
                    .closest('.ticket-container')
                    .offset().top; // 订票框到页面顶部的距离
                var TicketLeft = $(this)
                    .closest('.ticket-container')
                    .offset().left; // 订票框到页面左侧的距离
                var WinWidth = $(window).width(); // 页面的宽度
                if (WinWidth > 1280) {
                    $('.city-plug').css({
                        left: TicketWidth + TicketLeft + 'px',
                        top: TicketTop + 35 + 'px'
                    });
                } else {
                    $('.city-plug').css({
                        left: TicketWidth + TicketLeft + 'px',
                        top: TicketTop + 30 + 'px'
                    });
                }
            }
        });
        $(document).on('keyup', '.city-box input', function() {
            var InpWidth = $(this).outerWidth(); // 自身宽度
            $('.associate-box').css('width', InpWidth - 2 + 'px');

            var InpHeight = $(this).outerHeight(); // 自身高度
            var InpTop = $(this).offset().top; // 到页面顶部的距离
            var InpLeft = $(this).offset().left; // 到页面左侧的距离
            $('.associate-box').css({
                left: InpLeft + 'px',
                top: InpTop + InpHeight + 'px'
            });
            $(this).attr('data-sel', 0);
            if ($(this).val() != '') {
                $('.associate-box').show();
                $('.city-plug').hide();
            } else {
                $('.associate-box').hide();
                $('.city-plug').show();
            }
        });
        $(document).on('blur', '.city-box input', function() {
            $('.associate-box').hide();
        });
        $(document).on('click', function(e) {
            var evt = $(e.target);
            if(!evt.hasClass('city-plug') && evt.closest('.city-plug').length<1){
                $('.city-plug').hide();
            }
        });
        $(document).on('click','.city-box .icon-posi, .city-box .inp-prefix', function(){
            var that = $(this).siblings('.inp-1');
            setTimeout(function(){
                that.focus();
            },1)
        })
        $(document).on('click', '.change-site', function() {
            var departure = $(this).siblings(".departure-city").find("input");
            var arrival = $(this).siblings(".arrival-city").find("input");
            var temp = departure.val();
            departure.val(arrival.val());
            arrival.val(temp);
        });

        $(document).on('click','.city-plug .subcon .city-name a',function() {
            $('.city-box.focus-city')
                .find('input')
                .val($(this).text()).attr({'data-code':$(this).attr('data-code'), 'data-type': 'C', 'data-sel':1});
            $('.city-plug').hide();
            if($('.city-box.focus-city').closest('.ticket-multiple').length<1){
                if (
                    $('.city-box.focus-city')
                        .closest('.ticket-form')
                        .hasClass('defect-form')
                ) {
                    if ($('.departure-city').hasClass('focus-city')) {
                        $('.arrival-city input').focus();
                    } else if ($('.arrival-city').hasClass('focus-city')) {
                        var str = $('.focus-city input').val();
                        $('.gap-departure-city input').val(str);
                        $('.gap-arrival-city input').trigger('focus');
                    } else if ($('.gap-departure-city').hasClass('focus-city')) {
                        $('.gap-arrival-city input').trigger('focus');
                    } else if ($('.gap-arrival-city').hasClass('focus-city')) {
                        $('.departure-date input').trigger('focus');
                    }
                } else {
                    if ($('.departure-city').hasClass('focus-city')) {
                        $('.arrival-city input').focus();
                    } else {
                        $('.departure-date input').trigger('focus');
                    }
                }
            }
            return false;
        });
        $(document).on('focus','.date-inputs',function() {
            $('.departure-date').removeClass('focus-date');
            $('.arrival-date').removeClass('focus-date');
            $('.hotel-in-date').removeClass('focus-date');
            $('.hotel-out-date').removeClass('focus-date');
            $(this)
                .parent()
                .addClass('focus-date');
        });
        $(document).on('click','.city-plug .close',function() {
            $(this).closest('.city-plug').hide();
        });

        $(document).on('click','.d-select .d-inp',function() {
            $('.city-plug').hide();
        });
        $(document).on('click','.d-select .d-icon',function() {
            $('.city-plug').hide();
        });
        InputEvt();
    }
    function InputEvt(){
        $('.city-box input').click(function() {
            $('.d-down-list')
                .stop()
                .slideUp(200);
            return false;
        });
    }
    function resetCityList(){
        $('.city-plug .large-tab-btn .btn').eq(0).trigger('click');
        $('.city-plug .in-btn-box').each(function(index,el){
            $(el).find(".in-btn").eq(0).trigger('click');
            $(el).find(".alphabet").eq(0).trigger('click');
        });
    }

    TicketBox();
    function TicketBox() {
        _tab(
            '.ticket-box .large-tab-btn .btn',
            '.ticket-box .large-tab-con .con'
        );
        _tab(
            '.city-plug .large-tab-btn .btn',
            '.city-plug .large-tab-con .con'
        );
        _tab(
            '.city-plug .internal .in-btn-box .in-btn',
            '.city-plug .internal .subcon-box .subcon'
        );
        _tab(
            '.city-plug .international .in-btn-box .in-btn',
            '.city-plug .international .subcon-box .subcon'
        );
        // _tab(
        //   '.city-plug .international .subcon-box .subcon .in-btn-box .alphabet',
        //   '.city-plug .international .subcon-box .subcon .alphabet-sub'
        // );
        _tab(
            '.revise-padding .query-btn',
            '.revise-padding .query-tab .d-form'
        );
        $('.ticket-box .con').each(function() {
            var oBtn = $(this).find('.in-btn');
            var oCon = $(this).find('.ticket-form');
            _tab(oBtn, oCon);
        });

        $(document).on('click','.city-plug .international .subcon .alphabet',function() {
            var n = $(this).index();
            $(this)
                .addClass('on')
                .siblings()
                .removeClass('on');
            $(this).closest('.subcon').find('.areacon')
                .eq(n)
                .addClass('on')
                .siblings()
                .removeClass('on');
        });

        function _tab(btn, con) {
            $(document).on('click',btn,function() {
                var n = $(this).index();
                $(this)
                    .addClass('on')
                    .siblings()
                    .removeClass('on');
                $(con)
                    .eq(n)
                    .addClass('on')
                    .siblings()
                    .removeClass('on');
            });
        }
    }

    Captcha();
    function Captcha() {
        $(".captcha-box .captcha-pic-part").click(function () {
            $(this).toggleClass('selected');
        })
    }
    Dynamic();
    function Dynamic() {
        $(".service-tab-box1 .d-radio").click(function () {
            var index = $(this).index();
            $(this)
                .addClass('on')
                .siblings()
                .removeClass('on');
            $(".service-tab-box1 .service-tab-con").eq(index).addClass('on').siblings('.service-tab-con').removeClass('on');
        })
    }


    ButtonHandle()
    // 包含乘机人选项的表单提交按钮
    function ButtonHandle() {
        $("#ticket-1 .row-5 .btn-search:first-child").click(function () {
            var ticket1 = $(this).closest('#ticket-1');
            if(ticket1.find(".row-2").is(':visible')){
                if($(this).parent().attr("id")!="btnSearchFlightHotel"){
                    CheckMember(ticket1.find(".row-2 .man-count"));
                }
            }
        })
        // $("#btnSearchFlightHotel .btn-search").click(function () {
        //     var ticket1 = $(this).closest('#ticket-1');
        //     if(ticket1.find(".row-2").is(':visible')){
        //         CheckMember(ticket1.find(".row-2 .man-count"));
        //     }
        // })
        // $("#ticket-2 .btn-search").click(function () {
        //     var member = $(this).closest('#ticket-2').find(".man-count");
        //     CheckMember(member);
        // })
        $(".popup-disabled .btn-disabled").click(function(){
            $(this).closest('.popup-disabled').stop().fadeOut();
        })
        function CheckMember(el) {
            if(el.find('input[name="soldier"]').val()>0 || el.find('input[name="police"]').val()>0){
                $(".popup-disabled").stop().fadeIn();
            }
        }

    }

    // 2019-01-14
    MsgHover();
    function MsgHover(){
        $(document).on('mouseenter',".msg-error",function(){
            $(this).addClass('msg-hidden');
        })
    }

    // 2019-08-07
    AutoFillInit();
    function AutoFillInit(){
        // 办理值机 && 提前选座
        AutoFillCont("#passengerNameOfService2","#passengerName","#passenger_name_id");
        AutoFillCont("#mobileNumberId2","#mobilePhone");
        AutoFillCont("#passengerName","#passengerNameOfService2","#passenger_name_id");
        AutoFillCont("#mobilePhone","#mobileNumberId2");
        AutoFillCont("#passenger_name_id","#passengerNameOfService2","#passengerName");
    }

    function AutoFillCont(ele1,ele2,ele3){

        $(ele1).blur(function(event) {
            /* Act on the event */
            var txt = $(this).val();
            $(ele2).val(txt);
            $(ele3).val(txt);
        });

    }

});