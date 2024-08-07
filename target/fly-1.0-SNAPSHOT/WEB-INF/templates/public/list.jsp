<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<title></title>

		<link rel="stylesheet" href="static/index/list/styles/style.css">

		<link rel="stylesheet" type="text/css" href="static/index/swiper-2.7.6.min.css" />
		<link rel="stylesheet" type="text/css" href="static/index/jquery-ui-1.10.4.custom.css" />
		<link rel="stylesheet" type="text/css" href="static/index/global.css" />
		<link rel="stylesheet" type="text/css" href="static/index/index.css" />
		<link rel="stylesheet" type="text/css" href="static/index/trip-box.css" />
		<script type="text/javascript" src="static/index/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="static/index/global.js"></script>
		<script type="text/javascript" src="static/index/swiper-2.7.6.min.js"></script>
		<script type="text/javascript" src="static/index/jquery-ui-1.10.4.custom.min.js"></script>
		<script type="text/javascript" src="static/index/index.js"></script>
		<script type="text/javascript" src="static/index/ticket_box.js"></script>
		<script type="text/javascript" src="static/index/airport.js"></script>
		<script type="text/javascript" src="static/index/autocomplete.js"></script>

	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="ariaaaty99381zs">

		<div class="content" id="content">
			<div class="container">
					<div class="steps flt-steps step-short flt-steps2" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
					<div class="steps1">
						<div class="inner">
							<i class="icon-search" tabindex="0"></i><span class="dot" tabindex="0">航班查询</span>
						</div>
					</div>
					<div class="steps2">
						<div class="inner">
							<i class="icon-aircraft" tabindex="0"></i><span class="dot" tabindex="0">航班选择</span>
						</div>
					</div>
					<div class="steps3">
						<div class="inner">
							<i class="icon-flight" tabindex="0"></i><span class="dot" tabindex="0">航班概况</span>
						</div>
					</div>
					<div class="steps4">
						<div class="inner">
							<i class="icon-pen" tabindex="0"></i><span class="dot" tabindex="0">填写信息</span>
						</div>
					</div>
			
					<div class="steps5">
						<div class="inner">
							<i class="icon-correct" tabindex="0"></i><span class="dot" tabindex="0">预订成功</span>
						</div>
					</div>
				</div>
				<br />
				<div id="trip-box-1" class="trip-box-sub">
					<div class="tab-container">
						<br />
					
							<div id="ticket-1" class="trip-pannel position-relative">
								<div class="clearfix mb-20 row-1">
	                          <form action="${pageContext.request.contextPath}/list">
									<div class="city-box departure-city fl">
										<div class="inp-prefix">出发城市：</div>
										<input type="text" required name="start_city" value="${requestScope.start_city}" data-code="BJS" data-type="C" id="from_city1" placeholder="" class="inp-1" />
										<div class="msg"></div>
									</div>
									<div class="middle-icon site change-site fl"></div>
									<div class="city-box arrival-city fl">
										<div class="inp-prefix">到达城市：</div>
										<input type="text" required name="end_city" value="${requestScope.end_city}" id="to_city1" placeholder="" class="inp-1" />
										<div class="msg"></div>
									</div>
									<div class="departure-date focus-date fl">
										<div class="inp-prefix">出发日期：</div>
										<input id="flightBeginDate1" type="date" required name="date" value="${requestScope.date}" placeholder="YYYY-MM-DD" class="inp-1" />
										<div class="msg"></div>
									</div>
									<div class="ticket-1-radio fl" style="margin-left: 5px;">

										<button type="submit" class="btn-search">搜索航班</button>

									</div>
										</form>
								</div>

							</div>
					
					</div>
				</div>

				<div class="flight-list old-list-flight" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
					<div class="flight-res-hd flight-list-hd">
						<a href="javascript:" class="sort order-by-firstTime" tabindex="0">起飞时间</a>
						<a href="javascript:" class="sort order-by-transferTime" tabindex="0">中转时长</a>
						<a href="javascript:" class="sort order-by-lastTime" tabindex="0">到达时间</a>
						<div class="res-hd-sorts">
							<a href="javascript:" class="sort order-by-pricec" tabindex="0">公务舱</a>
							<a href="javascript:" class="sort order-by-pricec" tabindex="0">经济舱 </a>
						</div>
					</div>
					<div class="flight-list-go">


						<div class="flight-list-item" seq="1" index="1">
							<c:if test="${empty requestScope.flyList[0]}">
							<div class="order-table show-this" id="no-result">&nbsp;&nbsp;&nbsp;对不起！没有搜索到航班！</div>
							</c:if>
							<c:forEach items="${requestScope.flyList}" var="o">
							<div class="row-control">
								<div class="row-cell flight-info-wrap">
									<div class="flight-info">
										<div class="info-resume">
											<div class="flight-route-line">
												<div class="flight-departure">
													<p class="time" tabindex="0" setedaria="true">${o.start_time}</p>
													<p class="airport" tabindex="0" setedaria="true">${o.start_address}</p>
													<p class="date" tabindex="0" setedaria="true">${requestScope.date}</p>
												</div>
												<div class="flight-to">
													<div class="to-line"><i class="icon-aircraftRight" tabindex="0"></i></div><span class="time-expend" tabindex="0">${o.duration}</span></div>
												<div class="flight-arrive">
													<p class="time" tabindex="0" setedaria="true">${o.end_time}</p>
													<p class="airport" tabindex="0" setedaria="true">${o.end_address}</p>
													<p class="date" tabindex="0" setedaria="true">${requestScope.date}</p>
												</div>
											</div>
											<div class="flight-airline-info">
												<div class="airline-info-wrap" tabindex="0" aria-atomic="true"><span class="airline-code" tabindex="-1"><span class="logo-wrap" tabindex="-1"><i class="icon-aircraft" tabindex="0"></i></span><span tabindex="-1">${o.fly_name} </span><span tabindex="-1">${o.fly_card} </span></span>
													<div class="plane-type-box" tabindex="-1"><span class="plane-type" tabindex="-1">${o.type}</span></div>
												</div>
												<div class="airline-server"><span class="server-item" tabindex="0"><i class="icon-lunch" tabindex="0"></i>${o.eat}<span class="trigger-info" data-tip="如有疑问或需购买行李额、餐食，请致电首都航空客服热线<span class='tel-strong'>99999</span>" tabindex="0"></span>
													</span>
												</div>
											</div>
											<div class="tag-box"></div>
										</div>
									</div>
								</div>
								<div class="row-cell cabin-item cabin-item1">
									<div class="flight-cabin" cabincode="C">
										<p class="cabin-type" tabindex="0" setedaria="true">公务舱</p>
										<p class="ticket-price" tabindex="0" setedaria="true">
											<p class="ticket-price line-through">￥<strong class="pricetag">${o.business_old}</strong>起</p>
											<p class="ticket-price">￥<strong class="pricetag">${o.business_new}</strong>起</p>
										</p>
										<p class="more-mark" tabindex="0" setedaria="true"><i class="icon-crrow" tabindex="0"></i></p>
										<c:if test="${not empty sessionScope.power}">
										<a class="btn btn-default fR" href="${pageContext.request.contextPath}/FlyController/one?fid=${o.fid}&space=公务舱&price=${o.business_new}&date=${requestScope.date}" type="button" tabindex="0">立即预订</a>
										</c:if>
									</div>
								</div>
								<div class="row-cell cabin-item cabin-item3">
									<div class="flight-cabin" cabincode="Y">
										<p class="cabin-type" tabindex="0" setedaria="true">经济舱</p>
										<p class="ticket-price" tabindex="0" setedaria="true">
											<p class="ticket-price line-through">￥<strong class="pricetag">${o.economy_old}</strong>起</p>
											<p class="ticket-price">￥<strong class="pricetag">${o.economy_new}</strong>起</p>
										</p>
										<p class="more-mark" tabindex="0" setedaria="true"><i class="icon-crrow" tabindex="0"></i></p>
										<c:if test="${not empty sessionScope.power}">
										<a class="btn btn-default fR" href="${pageContext.request.contextPath}/FlyController/one?fid=${o.fid}&space=经济舱&price=${o.economy_new}&date=${requestScope.date}" type="button"  tabindex="0">立即预订</a>
										</c:if>
									</div>
								</div>
							</div>
							<br />
							</c:forEach>

						</div>



					</div>
				</div>

			</div>
			<div class="flight-list-back"></div>
		</div>


	</body>

</html>