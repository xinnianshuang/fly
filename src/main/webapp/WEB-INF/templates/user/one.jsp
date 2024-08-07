<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/index/list/styles/style.css">

		<script type="text/javascript" language="javascript">
			var usercookies = "我们使用Cookies";
			var cookiesdescribe1 = "为了提供个性化的展示与改善您的浏览体验，本网站使用cookie。继续浏览我们的网站，即表示您同意我们的";
			var cookiesurlname = "cookie政策";
			var cookiesdescribe2 = "隐私条款";
			var cookiesurls = "";
			var cookiesdescribe3 = "以及";
			var cookiePrivacysurl = "";
			var cookiejuhao = "。";
		</script>
		

	</head>

	<body aria-basefontsize="14" class="hasOldFixed" id="ariajmoxqxop9yg">

		
		
		<div class="content" id="content">
			<div class="container">
				<div class="steps flt-steps step-short flt-steps3" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
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
			
				<div class="con-flight con-overview">
					<div class="con-left" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
						<div class="main">
							<div class="con-top" >
								<div class="con-tit" tabindex="0">请仔细核对您的行程</div>
							</div>
							<div class="con-hd-sub" tabindex="0">机票行程信息<span class="hd-sub-tip" tabindex="0">航班时间为当地时间</span>
							</div>
							<div class="flight-detail">
								<div class="row-control">
									<div class="row-cell route-type" style="background-image: url(${pageContext.request.contextPath}/static/image_new/footer-bg.png);">
										<div class="route-type-text" tabindex="0">机票</div>
									</div>
									<div class="row-cell flight-wrap">
										<div class="flight-route clearfix">
											<div class="route-wrap">
												<span class="time" tabindex="0">${requestScope.fly.start_time}</span><span class="date" tabindex="0">${requestScope.date}</span><span class="airport" tabindex="0">${requestScope.fly.start_address}</span>
											</div>
											<div class="flight-to">
												<div class="to-line">
													<i class="icon-aircraftRight" tabindex="0"></i>
												</div>
											</div>
											<div class="route-wrap">
												<span class="time" tabindex="0">${requestScope.fly.end_time}</span><span class="date" tabindex="0">${requestScope.date}</span><span class="airport" tabindex="0">${requestScope.fly.end_address}</span>
											</div>
										</div>
										<div class="flight-airline clearfix">
											<div class="airline-info-wrap clearfix" tabindex="0" aria-atomic="true">
												<span class="airline-code" tabindex="-1"><span class="logo-wrap" tabindex="-1"><i class="icon-aircraft" tabindex="0"></i></span><span tabindex="-1">${requestScope.fly.fly_name} • ${requestScope.fly.fly_card}</span></span>
												<div class="plane-type-box" tabindex="-1">
													<span class="plane-type trigger-info pos-l" tabindex="-1">${requestScope.fly.type}</span>
													<div class="hover-con" tabindex="-1">
														<span class="crew-con-arrow" tabindex="-1"></span>
														<div class="crew-con-wrap arrow-left" tabindex="-1">
															<img src="${pageContext.request.contextPath}/static/index/img/fly.jpg" tabindex="-1"></div>
													</div>
												</div>
											</div>
											<div class="service-wrap clearfix">
												<ul>
													<li class="service-item" tabindex="0">
														<i class="icon-ticket" tabindex="0"></i><span class="item-text" tabindex="0">${requestScope.space}</span>
													</li>
													<li class="service-item" tabindex="0">
														<i class="icon-trunk" tabindex="0"></i>
														<a href="javascript:" class="trigger-info pos-c txt" tabindex="0">托运行李额</a>
														<div class="hover-con">
															<span class="crew-con-arrow" tabindex="0"></span>
															<div class="crew-con-wrap crew-con-tb">
																<div class="acc-wrap">
																	<table class="policy-tb policy-box crew-con active">
																		<thead>
																			<tr>
																				<th width="16%"><b tabindex="0">行李类型</b></th>
																				<th width="20%"><b tabindex="0">规格</b></th>
																				<th><b tabindex="0">说明</b></th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td tabindex="0"><b tabindex="0">托运行李额</b></td>
																				<td tabindex="0">20KG</td>
																				<td class="left-td" tabindex="0">托运行李每件最大重量不能超过50KG，体积不能超过40×60×100厘米。超过上述规定的行李，应事先征得海南航空的同意才能托运。上方数据请以出票后订单中展示的信息为准。</td>
																			</tr>
																			<tr>
																				<td tabindex="0"><b tabindex="0">手提行李额</b></td>
																				<td tabindex="0">1件</td>
																				<td class="left-td" tabindex="0">每位旅客可以随身携带1件，每件重量不超过5KG的手提行李，每件手提行李的体积不得超过20×40×55厘米。</td>
																			</tr>
																			<tr>
																				<td tabindex="0"><b tabindex="0">机场现场超限行李</b></td>
																				<td tabindex="0">35元/KG</td>
																				<td class="left-td" tabindex="0">超限行李每公斤按经济舱Y舱公布运价的1.5%收费。以上价格仅供参考，以机场现场实际支付为准。</td>
																			</tr>
																			<tr>
																				<td tabindex="0"><b tabindex="0">预付费行李</b></td>
																				<td tabindex="0">159元/5KG起</td>
																				<td class="left-td" tabindex="0">每5KG按机场现场超限行李收费标准的9折收费。以上价格仅供参考，以实际支付为准。</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>20KG</li>
												
												</ul>
											</div>
										</div>
								
									</div>
								</div>
							</div>
							<div class="panel-point">
								<div class="acc">
									<div class="acc-trigger" tabindex="0">退改签规则<i class="icon-crrow" tabindex="0"></i>
									</div>
									<div class="acc-con" style="display: none; overflow: hidden;">
										<div class="con-tips" tabindex="0">${requestScope.fly.start_address}-${requestScope.fly.end_address}</div>
										<div class="acc-wrap">
							
											<table class="policy-tb mb15 policy-box policy-tb-n crew-con active">
												<thead>
													<tr>
														<th width="32%"><b tabindex="0"></b></th>
														<th width="17%"><b tabindex="0">变更费(每次)</b></th>
														<th width="17%"><b tabindex="0">退票费</b></th>
														<th width="17%"><b tabindex="0">签转条件</b></th>
														<th width="17%"><b tabindex="0">基础消费积分</b></th>
													</tr>
												</thead>
												<tbody>
													<tr class="out-date">
														<td tabindex="0"><b tabindex="0">起飞前2日 08:00（含）前</b></td>
														<td tabindex="0">￥0</td>
														<td tabindex="0">￥118</td>
														<td class="policy-initial-color" rowspan="4" tabindex="0">自愿签转</td>
														<td class="policy-initial-color" rowspan="4" tabindex="0"><span class="miles-mark" tabindex="0">${requestScope.price}.0起</span></td>
													</tr>
													<tr class="out-date">
														<td tabindex="0"><b tabindex="0">起飞前1日 08:00（含）前</b></td>
														<td tabindex="0">￥118</td>
														<td tabindex="0">￥118</td>
													</tr>
													<tr>
														<td tabindex="0"><b tabindex="0">起飞当日 04:00（含）前</b></td>
														<td tabindex="0">￥118</td>
														<td tabindex="0">￥236</td>
													</tr>
													<tr>
														<td tabindex="0"><b tabindex="0">起飞当日 04:00（不含）后</b></td>
														<td tabindex="0">￥236</td>
														<td tabindex="0">￥472</td>
													</tr>
													<tr>
														<td tabindex="0"><b tabindex="0">其他</b></td>
														<td colspan="4" tabindex="0">
															<ul class="policy-tips">
																<li tabindex="0">客票改期升舱时，需同时收取票价价差（多不退少补）和变更手续费；改升后客票退票时，票价价差退回，剩余部分按原客票（第一张客票）舱位收取退票手续费，已收取的变更手续费不退；允许自愿签转的客票自愿签转时，需同时收取票价价差和变更手续费。</li>
															</ul>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="panel-btns">
								<a class="btn btn-default fR" type="button"  href="${pageContext.request.contextPath}/FlyController/two?fid=${requestScope.fly.fid}&space=${requestScope.space}&price=${requestScope.price}&date=${requestScope.date}" tabindex="0">立即预订航班</a>
								<a class="btn btn-warn" href="javascript:" onclick="javascript:history.back(-1);" tabindex="0">返回</a>
							</div>

						</div>
					</div>
					<div class="con-right" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
						<div class="con-right" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
							<div class="cart-con">
								<div class="box-airline">
									<div class="sec-loc mb">
										<i class="i-line" tabindex="0"></i>
										<div class="line">
											<i class="icon icon-coordinate" tabindex="0"></i>
											<div class="txt tit" tabindex="0">${requestScope.fly.start_city}</div>起点
											<div class="txt" tabindex="0">${requestScope.fly.start_address}</div>
										</div>
										<div class="line">
											<i class="icon icon-coordinate" tabindex="0"></i>
											<div class="txt tit" tabindex="0">${requestScope.fly.end_city}</div>终点
											<div class="txt" tabindex="0">${requestScope.fly.end_address}</div>
										</div>
									</div>
									<div class="sec-time">
										<div class="line">
											<i class="i-time" tabindex="0">时</i>
											<div class="txt" tabindex="0">${requestScope.date}&nbsp;&nbsp;${requestScope.fly.start_city}&nbsp;&nbsp;-&nbsp;&nbsp;${requestScope.fly.end_city}</div>
										</div>
									</div>
								</div>
								<div class="box-detail" id="boxdetail">
									<div class="line txt" tabindex="0">
										<div class="tit" tabindex="0">行程价格明细</div>
										<div class="price" id="prices" tabindex="0">￥${requestScope.price}</div>
									</div>
									<div class="acc price-list">
										<input name="product$1000$/passenger$1$/" type="hidden" disabled="disabled">
										<div class="line txt acc-trigger" tabindex="0">
											<span class="fR allAmout" amount="${requestScope.price}" tabindex="0" aria-atomic="true">￥${requestScope.price}</span><i class="icon-add" tabindex="0"></i>&nbsp;<span tabindex="0">旅客<span class="passengerNumber" tabindex="0">1</span>&nbsp;&nbsp;<span class="passengerType" passengertype="ADT" tabindex="0">成人</span>&nbsp;&nbsp;</span>
										</div>
										<div class="acc-con" style="overflow: hidden; display: none;">
											<div class="line txt" tabindex="0">
												<span amount="2360" class="fR baseAmout" title="*为航空公司收取的费用" tabindex="0" aria-atomic="true">￥${requestScope.price-50-60}<i class="need" tabindex="-1">
				*
				</i></span><span tabindex="0">机票价</span>
											</div>
											<div class="line txt" tabindex="0">
												<span amount="50" class="fR cnAmout" tabindex="0" aria-atomic="true">￥50<i class="need" tabindex="-1">
				*
				</i></span><span tabindex="0">民航发展基金</span>
											</div>
											<div class="line txt" tabindex="0">
												<span amount="60" class="fR yqAmout" title="*为航空公司收取的费用" tabindex="0" aria-atomic="true">￥60<i class="need" tabindex="-1">
		   		*
				</i></span><span tabindex="0">燃油费</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			
				</div>

			
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/index/detail/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/index/detail/main.js"></script>

	

	
		

	</body>

</html>