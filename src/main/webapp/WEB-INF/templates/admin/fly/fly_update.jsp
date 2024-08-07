<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="${pageContext.request.contextPath}/static/h/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/h/css/font-awesome.css" rel="stylesheet">
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">

                    <h5><i class="fa fa fa-plane"></i> 航班管理 > 航班更新</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>

                    </div>
                </div>
                <div class="ibox-content">
                    <form action="${pageContext.request.contextPath}/FlyController/update" method="post" class="form-horizontal">
                        <input type="hidden" name="fid" id="fid" value="${requestScope.fly.fid}">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">所属公司</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="fly_name"  value="${requestScope.fly.fly_name}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">航班号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="fly_card" id="fly_card" value="${requestScope.fly.fly_card}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">机型</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="type" id="type" value="${requestScope.fly.type}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">出发城市</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="start_city" id="start_city"  value="${requestScope.fly.start_city}" required >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">到达城市</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="end_city" id="end_city" value="${requestScope.fly.end_city}" required >
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">出发地点</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="start_address" id="start_address"  value="${requestScope.fly.start_address}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">到达地点</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="end_address" id="end_address"  value="${requestScope.fly.end_address}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">出发时间</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="start_time" id="start_time"  value="${requestScope.fly.start_time}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">到达时间</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="end_time" id="end_time"  value="${requestScope.fly.end_time}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">途径时长</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="duration" id="duration"  value="${requestScope.fly.duration}" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">公务舱原价</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="business_old" id="business_old"  value="${requestScope.fly.business_old}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">公务舱现价</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="business_new" id="business_new"  value="${requestScope.fly.business_new}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">经济舱原价</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="economy_old" id="economy_old"  value="${requestScope.fly.economy_old}" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">经济舱现在</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="economy_new" id="economy_new"  value="${requestScope.fly.economy_new}" required>
                            </div>
                        </div>


                        <div class="form-group text-left">
                            <div class="checkbox i-checks">
                                <label class="col-sm-2 control-label">餐食</label>

                                    <div class="col-sm-10">
                                    <select class="form-control" name="eat">
                                        <option value="${requestScope.fly.eat}">${requestScope.fly.eat}</option>
                                        <option value="无餐食">无餐食</option>
                                        <option value="早餐">早餐</option>
                                        <option value="午餐">午餐</option>
                                        <option value="晚餐">晚餐</option>
                                        <option value="点心">点心</option>
                                    </select>
                                    </div>

                            </div>
                        </div>

                        <div class="form-group text-left">
                            <div class="checkbox i-checks">
                                <label class="col-sm-2 control-label">状态</label>
                                <label class="no-padding">
                                    <input type="radio" name="fly_status" value="启用"  ${requestScope.fly.fly_status=='启用'?'checked':''}><i></i> 启用&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="fly_status" value="关闭"  ${requestScope.fly.fly_status=='关闭'?'checked':''}><i></i> 关闭&nbsp;&nbsp;&nbsp;
                                </label>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">

                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit">提交</button>
                                <button class="btn btn-white" type="reset">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${pageContext.request.contextPath}/static/h/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/h/js/bootstrap.min.js"></script>
<!-- 自定义js -->
<script src="${pageContext.request.contextPath}/static/h/js/content.js"></script>
<!--弹窗js-->
<script src="${pageContext.request.contextPath}/static/h/js/plugins/layer/layer.min.js"></script>


</body>


</html>
