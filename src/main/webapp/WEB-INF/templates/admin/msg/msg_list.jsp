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
                    <h5>  <i class="fa fa fa-pencil-square-o"></i> 反馈管理 > 反馈列表</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>

                    </div>
                </div>
                <div class="ibox-content">
                    <form role="form" class="form-inline">
                        关键字：
                        <div class="form-group" >
                            <input type="text" id="condition" name="condition" value="${requestScope.condition}" class="form-control">
                        </div>
                        &nbsp;&nbsp;&nbsp;
                        <button class="btn btn-white" type="button" onclick="getData(1);">搜索</button>
                    </form>
                </div>

                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>反馈人</th>
                                <th>联系电话</th>
                                <th>航班号</th>
                                <th>乘机时间</th>
                                <th>反馈日期</th>
                                <th>内容</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.page.items}" var="o">
                                <tr>
                                    <td>${o.name}</td>
                                    <td>${o.phone}</td>
                                    <td>${o.num}</td>
                                    <td>${o.times}</td>
                                    <td>${o.dates}</td>
                                    <td>${o.marksStar}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/MsgController/edit?mid=${o.mid}" class="btn btn-white btn-sm" title="查看"><i class="fa fa-pencil"></i> </a>

                                        <a href="javascript:;" class="btn btn-white btn-sm" title="删除" onclick="deleteFn(${o.mid});"><i class="fa fa-remove"></i> </a>

                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>


                        <%--分页条start--%>
                        <div style="text-align: center" id="page_nav">
                            <%--转到第几页第一种写法from表单 这里使用的--%>

                                <a href="javascript:;" onclick="getData(1);">首页</a>

                                <c:if test="${requestScope.page.pageNo>1}">
                                    <a href="javascript:;" onclick="getData(${requestScope.page.pageNo-1});">上一页</a>
                                </c:if>

                                <c:if test="${requestScope.page.pageNo<requestScope.page.pageTotal}">
                                    <a href="javascript:;" onclick="getData(${requestScope.page.pageNo+1});">下一页</a>
                                </c:if>

                                <a href="javascript:;" onclick="getData(${requestScope.page.pageTotal});">末页</a>&nbsp;第${requestScope.page.pageNo}页&nbsp;共${requestScope.page.pageTotal}页&nbsp;${requestScope.page.pageTotalCount}条记录

                        </div>
                        <%--分页条end--%>

                    </div>

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

<script>


    //删除
    function deleteFn(id) {
        //弹窗
        parent.layer.confirm('确认删除？', {
            btn: ['确认', '取消'], //按钮
            shade: false //不显示遮罩
        }, function () {
            parent.layer.msg('正在删除', {
            //icon: 1
               func: window.location = "${pageContext.request.contextPath}/MsgController/delete?mid=" + id
            });
        }, function () {
            parent.layer.msg('取消', {
                shift: 6
            });
        });
    }
    //点击
    function getData(pageNo){
        var condition = $("#condition").val();
        window.location.href = "${pageContext.request.contextPath}/MsgController/list?pageNoString=" + pageNo+"&condition="+condition;
    }


</script>
</html>
