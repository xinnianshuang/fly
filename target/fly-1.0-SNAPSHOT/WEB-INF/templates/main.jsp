<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<title></title>
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

	<body>



	
	
	
	
		<div class="tips-safety">
			<div class="tips-safetyinner container">
				<div class="container clearfix containerlistroll"> <span class="btn-close"></span> <i class="icon icon-bell"></i> <span class="new-news-num"></span>
					<div class="swiper-container">
						<div class="swiper-wrapper clearfix">
							<c:forEach items="${requestScope.announcementList}" var="o">
								<div class="swiper-slide">
									<a href="${pageContext.request.contextPath}/anDetail?aid=${o.aid}" ><strong data-time='${o.dates}'>${o.title}</strong></a>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class=" clearfix containerlist"> <span class="btn-close"></span> <i class="icon icon-bell"></i>
					<div class="listdiv">

						<c:forEach items="${requestScope.announcementList}" var="o">
						<div class="swiper-slide">
							<a href="${pageContext.request.contextPath}/anDetail?aid=${o.aid}" ><strong data-time='${o.dates}'>${o.title}</strong></a>
						</div>
						</c:forEach>
					</div>
					<div class="link-morelist">
<!--						<a href="./guanyuhaihang/hhdt/hhgg/">查看更多公告</a>
-->					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide" ispub=''>
						<a href="${pageContext.request.contextPath}/" target="_top"><img src="static/index/img/1.jpg" alt="经营企业一定要" title="经营企业一定要" /></a>
					</div>
					<div class="swiper-slide" ispub=''>
						<a href="${pageContext.request.contextPath}/" target="_top"><img src="static/index/img/2.jpg" alt="以五星 致飞行" title="以五星 致飞行" /></a>
					</div>
					<div class="swiper-slide" ispub=''>
						<a href="${pageContext.request.contextPath}/" target="_top"><img src="static/index/img/3.jpg" alt="金鹏俱乐部24周年庆开启惊喜之旅" title="金鹏俱乐部24周年庆开启惊喜之旅" /></a>
					</div>
					<div class="swiper-slide" ispub=''>
						<a href="${pageContext.request.contextPath}/" target="_top"><img src="static/index/img/4.jpg" alt="积分叠叠乐，加赠无上限" title="积分叠叠乐，加赠无上限" /></a>
					</div>
					<div class="swiper-slide" ispub=''>
						<a href="${pageContext.request.contextPath}/" target="_top"><img src="static/index/img/5.jpg" alt="银联云闪付" title="银联云闪付" /></a>
					</div>
				</div>
				<div class="pagination"></div>
			</div>
		</div>
		
		
		
		<div class="section index-trip-box">
			<div class="container clearfix">
				<div id="trip-box" class="trip-box has-shadow">
					<ul class="f16 tab-service">
						<li>
							<a href="#trip-box-1" class="w-100 h-100"><i class="icon icon-yuding"></i>
								<div class="trip-tab-1">预订行程</div>
							</a>
						</li>
											
					</ul>
					<div id="trip-box-1" class="trip-box-sub">
						<div class="tab-container">
							<ul class="tab-list-sub">
								<li class="h-100">
									<a href="#ticket-1"><i class="icon icon-jipiao"></i><strong class="sub-tab-01">机票</strong></a>
								</li>
							
							</ul>
							<form action="${pageContext.request.contextPath}/list">
							<div id="ticket-1" class="trip-pannel position-relative">
								<div class="clearfix mb-20 row-1">
									<div class="city-box departure-city fl">
										<div class="inp-prefix">出发城市：</div>
										<input type="text" required name="start_city" value="北京" data-code="BJS" data-type="C" id="from_city1" placeholder="" class="inp-1" />
										<div class="msg"></div>
									</div>
									<div class="middle-icon site change-site fl"></div>
									<div class="city-box arrival-city fl">
										<div class="inp-prefix">到达城市：</div> 
										<input type="text" required name="end_city" id="to_city1" placeholder="" class="inp-1" />
										<div class="msg"></div>
									</div>
									<div class="ticket-1-radio fl">
								
									</div>
									<div class="fr ticket-1-btn"> <button type="submit" class="btn-search">搜索航班</button> </div>
								</div>
								<div class="clearfix mb-20 display-none row-2">
									<div class="departure-date focus-date fl">
										<div class="inp-prefix">出发日期：</div> 
										<input id="flightBeginDate1" required type="date" name="date" placeholder="YYYY-MM-DD" class="inp-1" />
										<div class="msg"></div>
									</div>
									<div class="fl"><span style="padding-left: 61px;"></span></div>
								
								</div>
							
				
								<div class="clearfix display-none row-5">
									<div class="fr"> <button class="btn-search" type="submit" onclick="">搜索航班</button> </div>
								
								</div>
							</div>
				      </form>
						</div>
					</div>
	
					</div>
				</div>
			</div>
		</div>
		
		
		
		<div class="section index-flight">
			<div class="container clearfix">
				<div class="section-tit">
					<h3>精挑细选&nbsp;自在出行</h3> </div>
				<div class="flight-slide">
					<div class="swiper-container clearfix">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath}/" title="" class="item-data" target="_top"><img src="static/index/img/22.jpg" />
								</a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath}/" title="" class="item-data" target="_top"><img src="static/index/img/11.jpg" />
								</a>
							</div>
						</div>
						<div class="pagination"></div>
					</div>
					<div class="swiper-control">
						<a href="javascript:;" title="" class="swiper-prev"></a>
						<a href="javascript:;" title="" class="swiper-next"></a>
					</div>
				</div>
				<div class="state-area">
					<div class="state-area-hd">
						<dl class="state-area-list"> <dt style="width:100%"></dt>
				
							<dd><i class="icon icon-earth"></i><strong>国际/地区</strong></dd>
						</dl>
					</div>
					<div class="state-area-bd">
						<div class="tab-box tab-flight on">
							<div class="tab-hd">
								<ul>
									<li class="on">
										<a href="#stateTab1" title>推荐航班</a>
									</li>
							
									<li>
										<a href="${pageContext.request.contextPath}/more" title class="link-more">更多&nbsp;&nbsp;&raquo;</a>
									</li>
								</ul>
							</div>
							<div class="tab-bd">
								<div id="stateTab1" class="tab-list-flight">

									<c:forEach items="${requestScope.flyList}" var="o">
									<div class="tab-item-flight">
										<a href="${pageContext.request.contextPath}/list?date=${requestScope.date}&start_city=${o.start_city}&end_city=${o.end_city}" >
											<div class="item-site-box"><span class="site-origin"> ${o.start_city}</span><i class="icon icon-site"></i><span class="site-end">${o.end_city}</span></div>
											<div class="item-flight-price"><span>￥</span><strong>${o.economy_new}</strong></div>
											<div class="item-flight-date">${requestScope.date}</div>
											<div class="line-dashed"></div>
										</a>
									</div>
									</c:forEach>
								</div>
							
							
							</div>
						</div>
				
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="section index-activity">
			<div class="container clearfix">
				<div class="section-tit">
					<p>您好&nbsp;世界</p>
					<h3>不期而遇&nbsp;相伴相惜</h3>
					<!--<a href="#" title="">更多活动&nbsp;&nbsp;&raquo;</a>-->
				</div>
				<div class="hot-activity">
					<a href="${pageContext.request.contextPath}/" title="" target="_top"><img src="static/index/img/111.jpg" alt="国际及港澳台航线全新启航 与世界同行" title="国际及港澳台航线全新启航 与世界同行" /></a>
				</div>
				<div class="activity-slide">
					<div class="swiper-container clearfix">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath}/" title="" target="_top"><img src="static/index/img/11111.jpg" alt="无成人陪伴青少年关爱服务" title="无成人陪伴青少年关爱服务" /></a>
							</div>
							<div class="swiper-slide">
									<a href="${pageContext.request.contextPath}/" title="" target="_top"><img src="static/index/img/22222.jpg"  alt="海南航空优享代泊劵" title="海南航空优享代泊劵" /></a>
							</div>
							<div class="swiper-slide">
									<a href="${pageContext.request.contextPath}/" title="" target="_top"><img src="static/index/img/33333.jpg"  alt="暖心保障 安心出行" title="暖心保障 安心出行" /></a>
							</div>
							<div class="swiper-slide">
									<a href="${pageContext.request.contextPath}/" title="" target="_top"><img src="static/index/img/44444.jpg"  alt="尊享专车 专享为您" title="尊享专车 专享为您" /></a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath}/" title="" target="_top"><img src="static/index/img/55555.jpg"  alt="海南航空机构客户服务权益" title="海南航空机构客户服务权益" /></a>
							</div>
						</div>
						<div class="pagination"></div>
					</div>
					<div class="swiper-control">
						<a href="javascript:;" title="" class="swiper-prev"></a>
						<a href="javascript:;" title="" class="swiper-next"></a>
					</div>
				</div>
			</div>
		</div>
		
		


	</body>

</html>