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

	<body aria-basefontsize="14" class="hasOldFixed" id="ariaq5j21osxsm8">

		<div class="content" id="content">
			<div class="container">
				<div class="steps flt-steps flt-steps4" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
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
				<div id="epidemicPassenger" style="display:none" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true"></div>
				<div class="con-flight con-fill">
					<form name="passengerInformation"  >
						<input name="SessionPageRandom" type="hidden" value="5708340"><input name="GA_Page" type="hidden" value="IBE"><input type="hidden" name="flightInvoice"><input type="hidden" name="hotelInvoice"><input type="hidden" name="delivery" value=""><input type="hidden" name="surname"><input type="hidden" name="gender"><input type="hidden" name="tel"><input type="hidden" name="zip"><input type="hidden" name="province"><input type="hidden" name="city"><input type="hidden" name="address"><input type="hidden" name="province"><input type="hidden" name="invoiceTitle"><input type="hidden" name="taxpayerID"><input type="hidden" name="contactEmail">
						<div class="con-left">
							<div class="acc acc-overview acc-on" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区" aria-autolabel="true">
								<div class="con-top acc-trigger" tabindex="0">
									<div class="con-tit" tabindex="0">
										<i class="icon-crrow" tabindex="0"></i>航班概况</div>
								</div>
								<div class="acc-con" style="display: block;">
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
																<i class="icon-ticket" tabindex="0"></i><span class="item-text" tabindex="0" id="type">${requestScope.space}</span>
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
								</div>
							</div>
							<input type="hidden" value="" name="BookingChannelPackage">
							<div class="panel-fill" aria-region="true" aria-regiontype="1" tabindex="0" aria-label="视窗区,证件说明" aria-autolabel="true">
								<div class="fill-hd">
									<div class="con-tit">填写乘机人信息</div>
								</div>
								<div class="fill-con">
									<div class="fill-tip">
										<span tabindex="0">请您填写乘机人信息</span>
									</div>
									<input name="flightDate" value="2023-04-08" type="hidden"><input name="firstFlightDate" value="2023-04-08" type="hidden">
									<div class="box-psg">
										<div class="row-form passenger-info-title">
											<i class="icon-aircraft" tabindex="0"></i>
											<strong class="passenger-desc" tabindex="0">旅客</strong>
										</div>
										<div class="row-form passenger-type">
											<span class="type-text" tabindex="0">旅客类型:</span><label date-text="adult" class="crew-radio-label crew-radio-passengerType" style=""><span class="crew-radio selected" tabindex="0"><input type="radio" name="passenger-type1" data-name="passenger-type1"><i class="icon-choice" tabindex="0"></i></span>成人(≥12岁)</label><label date-text="children" class="crew-radio-label crew-radio-passengerType" style="display: none;"><span class="crew-radio" tabindex="0"><input type="radio" name="passenger-type1" data-name="passenger-type1"><i class="icon-unchoice" tabindex="0"></i></span>儿童(2-11岁)</label><label date-text="baby" class="crew-radio-label crew-radio-passengerType" style="display: none;"><span class="crew-radio" tabindex="0"><input type="radio" name="passenger-type1" data-name="passenger-type1"><i class="icon-unchoice" tabindex="0"></i></span>婴儿
				（&lt;2岁）
											  
			</label><span class="tkt-tip" tabindex="0"><i href="javascript:" class="trigger-info pos-l icon-ask" tabindex="0"></i>
<div class="hover-con">
<span class="crew-con-arrow" tabindex="0"></span>
											<div class="crew-con-wrap">
												<div class="tip-baby">
													<p tabindex="0" setedaria="true">① 成人旅客在乘机当天应满12周岁；</p>
													<p tabindex="0" setedaria="true">② 儿童旅客在乘机当天应满2周岁但未满12周岁，儿童需要年满18周岁（不含18岁公历生日当天）的成人陪伴乘机，如需儿童单独乘机，您可以申请无陪儿童服务；</p>
													<p tabindex="0" setedaria="true">③ 婴儿旅客在乘机当天应满14天但未满2周岁，婴儿需要年满18周岁（不含18岁公历生日当天）的成人陪伴乘机。</p>
												</div>
											</div>
										</div>
										</span>
									</div>
									<div class="row-form">

										<div class="row-l">
											<div class="select-group select-l select-name">

												<a class="select-show" href="javascript:" tabindex="0">
													<span class="select-text" tabindex="0">姓名</span></a>
												<input class="input-txt" name="name" id="name" value="${sessionScope.user.name}" placeholder="请输入姓名">

												<div class="input-tip">
													<i href="javascript:" class="trigger-info pos-l icon-ask" tabindex="0"></i>
													<div class="hover-con">
														<span class="crew-con-arrow" tabindex="0"></span>
														<div class="crew-con-wrap other-con-wrap">
															<div class="con-wrap no-padding papers-wrap">
																<ul class="papers-tab clearfix">
																	<li class="tab-item active" tabindex="0">
																		<span class="item-text" tabindex="0">填写说明</span>
																	</li>

																</ul>
																<div class="crew-con active">
																	<p class="con" tabindex="0" setedaria="true">请确保所填旅客姓名与该旅客乘机所持证件上的姓名一致。<br>若姓名为纯英文，姓和名之间用“/”隔开，格式“姓/名”。<br>若姓为英文字母，英文后不得为汉字，汉字后可以为英文；<br>若姓名中包含生僻字，则生僻字及其之后的汉字都需用拼音代替。<br>姓名中含空格或特殊符号“.” “_”等可省略输入。<br>
																	</p>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tip-name"></div>
											</div>
										</div>

										<div class="row-r">
											<div class="select-group select-r select-search">
												<input class="select-input" type="hidden" name="product$1000$/passenger$1$/Nationality" value="CN">
												<i class="select-req" tabindex="0">*</i><span class="select-tlt" tabindex="0">国籍</span>
												<a class="select-show ariaskiptheme" href="javascript:" tabindex="0"><span class="select-text" id="nationality" tabindex="0">中国</span><i class="i-arrow icon-crrow" tabindex="0"></i></a>
												<dl class="select-list skipAutoFix" aria-skipautofix="true">
													<dd data-value="CN" class="select-option skipAutoFix" tabindex="0">中国</dd>
													<dd data-value="HK" class="select-option skipAutoFix" tabindex="0">中国香港</dd>
													<dd data-value="MO" class="select-option skipAutoFix" tabindex="0">中国澳门</dd>
													<dd data-value="TW" class="select-option skipAutoFix" tabindex="0">中国台湾</dd>
													<dd data-value="US" class="select-option skipAutoFix" tabindex="0">美国</dd>
													<dd data-value="CA" class="select-option skipAutoFix" tabindex="0">加拿大</dd>
													<dd data-value="TH" class="select-option skipAutoFix" tabindex="0">泰国</dd>
													<dd data-value="JP" class="select-option skipAutoFix" tabindex="0">日本</dd>
													<dd data-value="AU" class="select-option skipAutoFix" tabindex="0">澳大利亚</dd>
													<dd data-value="NZ" class="select-option skipAutoFix" tabindex="0">新西兰</dd>
													<dd data-value="DE" class="select-option skipAutoFix" tabindex="0">德国</dd>
													<dd data-value="GB" class="select-option skipAutoFix" tabindex="0">英国</dd>
													<dd data-value="FR" class="select-option skipAutoFix" tabindex="0">法国</dd>
													<dd data-value="RU" class="select-option skipAutoFix" tabindex="0">俄罗斯联邦</dd>
													<dd data-value="AL" class="select-option skipAutoFix" tabindex="0">阿尔巴尼亚</dd>
													<dd data-value="DZ" class="select-option skipAutoFix" tabindex="0">阿尔及利亚</dd>
													<dd data-value="AF" class="select-option skipAutoFix" tabindex="0">阿富汗</dd>
													<dd data-value="AR" class="select-option skipAutoFix" tabindex="0">阿根廷</dd>
													<dd data-value="AE" class="select-option skipAutoFix" tabindex="0">阿拉伯联合酋长国</dd>
													<dd data-value="AW" class="select-option skipAutoFix" tabindex="0">阿鲁巴</dd>
													<dd data-value="OM" class="select-option skipAutoFix" tabindex="0">阿曼</dd>
													<dd data-value="AZ" class="select-option skipAutoFix" tabindex="0">阿塞拜疆</dd>
													<dd data-value="EG" class="select-option skipAutoFix" tabindex="0">埃及</dd>
													<dd data-value="ET" class="select-option skipAutoFix" tabindex="0">埃塞俄比亚</dd>
													<dd data-value="IE" class="select-option skipAutoFix" tabindex="0">爱尔兰</dd>
													<dd data-value="EE" class="select-option skipAutoFix" tabindex="0">爱沙尼亚</dd>
													<dd data-value="AD" class="select-option skipAutoFix" tabindex="0">安道尔</dd>
													<dd data-value="AO" class="select-option skipAutoFix" tabindex="0">安哥拉</dd>
													<dd data-value="AI" class="select-option skipAutoFix" tabindex="0">安圭拉</dd>
													<dd data-value="AG" class="select-option skipAutoFix" tabindex="0">安提瓜和巴布达</dd>
													<dd data-value="AT" class="select-option skipAutoFix" tabindex="0">奥地利</dd>
													<dd data-value="AX" class="select-option skipAutoFix" tabindex="0">奥兰群岛</dd>
													<dd data-value="BB" class="select-option skipAutoFix" tabindex="0">巴巴多斯</dd>
													<dd data-value="PG" class="select-option skipAutoFix" tabindex="0">巴布亚新几内亚</dd>
													<dd data-value="BS" class="select-option skipAutoFix" tabindex="0">巴哈马</dd>
													<dd data-value="PK" class="select-option skipAutoFix" tabindex="0">巴基斯坦</dd>
													<dd data-value="PY" class="select-option skipAutoFix" tabindex="0">巴拉圭</dd>
													<dd data-value="PS" class="select-option skipAutoFix" tabindex="0">巴勒斯坦</dd>
													<dd data-value="BH" class="select-option skipAutoFix" tabindex="0">巴林</dd>
													<dd data-value="PA" class="select-option skipAutoFix" tabindex="0">巴拿马</dd>
													<dd data-value="BR" class="select-option skipAutoFix" tabindex="0">巴西</dd>
													<dd data-value="BY" class="select-option skipAutoFix" tabindex="0">白俄罗斯</dd>
													<dd data-value="BM" class="select-option skipAutoFix" tabindex="0">百慕大</dd>
													<dd data-value="BG" class="select-option skipAutoFix" tabindex="0">保加利亚</dd>
													<dd data-value="BJ" class="select-option skipAutoFix" tabindex="0">贝宁</dd>
													<dd data-value="BE" class="select-option skipAutoFix" tabindex="0">比利时</dd>
													<dd data-value="IS" class="select-option skipAutoFix" tabindex="0">冰岛</dd>
													<dd data-value="PR" class="select-option skipAutoFix" tabindex="0">波多黎各</dd>
													<dd data-value="PL" class="select-option skipAutoFix" tabindex="0">波兰</dd>
													<dd data-value="BA" class="select-option skipAutoFix" tabindex="0">波斯尼亚和黑塞哥维那</dd>
													<dd data-value="BO" class="select-option skipAutoFix" tabindex="0">玻利维亚</dd>
													<dd data-value="BZ" class="select-option skipAutoFix" tabindex="0">伯利兹</dd>
													<dd data-value="BW" class="select-option skipAutoFix" tabindex="0">博茨瓦纳</dd>
													<dd data-value="BT" class="select-option skipAutoFix" tabindex="0">不丹</dd>
													<dd data-value="BF" class="select-option skipAutoFix" tabindex="0">布基纳法索</dd>
													<dd data-value="BI" class="select-option skipAutoFix" tabindex="0">布隆迪</dd>
													<dd data-value="BV" class="select-option skipAutoFix" tabindex="0">布维岛</dd>
													<dd data-value="KP" class="select-option skipAutoFix" tabindex="0">朝鲜</dd>
													<dd data-value="GQ" class="select-option skipAutoFix" tabindex="0">赤道几内亚</dd>
													<dd data-value="DK" class="select-option skipAutoFix" tabindex="0">丹麦</dd>
													<dd data-value="TL" class="select-option skipAutoFix" tabindex="0">东帝汶</dd>
													<dd data-value="TG" class="select-option skipAutoFix" tabindex="0">多哥</dd>
													<dd data-value="DM" class="select-option skipAutoFix" tabindex="0">多米尼加</dd>
													<dd data-value="EC" class="select-option skipAutoFix" tabindex="0">厄瓜多尔</dd>
													<dd data-value="ER" class="select-option skipAutoFix" tabindex="0">厄立特里亚</dd>
													<dd data-value="FX" class="select-option skipAutoFix" tabindex="0">法国大都会</dd>
													<dd data-value="FO" class="select-option skipAutoFix" tabindex="0">法罗群岛</dd>
													<dd data-value="PF" class="select-option skipAutoFix" tabindex="0">法属波利尼西亚</dd>
													<dd data-value="GF" class="select-option skipAutoFix" tabindex="0">法属圭亚那</dd>
													<dd data-value="VA" class="select-option skipAutoFix" tabindex="0">梵蒂冈</dd>
													<dd data-value="PH" class="select-option skipAutoFix" tabindex="0">菲律宾</dd>
													<dd data-value="FJ" class="select-option skipAutoFix" tabindex="0">斐济</dd>
													<dd data-value="FI" class="select-option skipAutoFix" tabindex="0">芬兰</dd>
													<dd data-value="CV" class="select-option skipAutoFix" tabindex="0">佛得角</dd>
													<dd data-value="GM" class="select-option skipAutoFix" tabindex="0">冈比亚</dd>
													<dd data-value="CG" class="select-option skipAutoFix" tabindex="0">刚果</dd>
													<dd data-value="CD" class="select-option skipAutoFix" tabindex="0">刚果（金）</dd>
													<dd data-value="CO" class="select-option skipAutoFix" tabindex="0">哥伦比亚</dd>
													<dd data-value="CR" class="select-option skipAutoFix" tabindex="0">哥斯达黎加</dd>
													<dd data-value="GD" class="select-option skipAutoFix" tabindex="0">格林纳达</dd>
													<dd data-value="GE" class="select-option skipAutoFix" tabindex="0">格鲁吉亚</dd>
													<dd data-value="GG" class="select-option skipAutoFix" tabindex="0">根西岛</dd>
													<dd data-value="CU" class="select-option skipAutoFix" tabindex="0">古巴</dd>
													<dd data-value="GP" class="select-option skipAutoFix" tabindex="0">瓜德罗普岛</dd>
													<dd data-value="GU" class="select-option skipAutoFix" tabindex="0">关岛</dd>
													<dd data-value="GY" class="select-option skipAutoFix" tabindex="0">圭亚那</dd>
													<dd data-value="KZ" class="select-option skipAutoFix" tabindex="0">哈萨克斯坦</dd>
													<dd data-value="HT" class="select-option skipAutoFix" tabindex="0">海地</dd>
													<dd data-value="KR" class="select-option skipAutoFix" tabindex="0">韩国</dd>
													<dd data-value="NL" class="select-option skipAutoFix" tabindex="0">荷兰</dd>
													<dd data-value="ME" class="select-option skipAutoFix" tabindex="0">黑山</dd>
													<dd data-value="HN" class="select-option skipAutoFix" tabindex="0">洪都拉斯</dd>
													<dd data-value="KI" class="select-option skipAutoFix" tabindex="0">基里巴斯</dd>
													<dd data-value="DJ" class="select-option skipAutoFix" tabindex="0">吉布提</dd>
													<dd data-value="KG" class="select-option skipAutoFix" tabindex="0">吉尔吉斯斯坦</dd>
													<dd data-value="GN" class="select-option skipAutoFix" tabindex="0">几内亚</dd>
													<dd data-value="GW" class="select-option skipAutoFix" tabindex="0">几内亚比绍</dd>
													<dd data-value="GH" class="select-option skipAutoFix" tabindex="0">加纳</dd>
													<dd data-value="GA" class="select-option skipAutoFix" tabindex="0">加蓬</dd>
													<dd data-value="KH" class="select-option skipAutoFix" tabindex="0">柬埔寨</dd>
													<dd data-value="CZ" class="select-option skipAutoFix" tabindex="0">捷克</dd>
													<dd data-value="ZW" class="select-option skipAutoFix" tabindex="0">津巴布韦</dd>
													<dd data-value="CM" class="select-option skipAutoFix" tabindex="0">喀麦隆</dd>
													<dd data-value="QA" class="select-option skipAutoFix" tabindex="0">卡塔尔</dd>
													<dd data-value="CC" class="select-option skipAutoFix" tabindex="0">科科斯（基林）群岛</dd>
													<dd data-value="KM" class="select-option skipAutoFix" tabindex="0">科摩罗</dd>
													<dd data-value="CI" class="select-option skipAutoFix" tabindex="0">科特迪瓦</dd>
													<dd data-value="KW" class="select-option skipAutoFix" tabindex="0">科威特</dd>
													<dd data-value="HR" class="select-option skipAutoFix" tabindex="0">克罗地亚</dd>
													<dd data-value="KE" class="select-option skipAutoFix" tabindex="0">肯尼亚</dd>
													<dd data-value="CK" class="select-option skipAutoFix" tabindex="0">库克群岛</dd>
													<dd data-value="LV" class="select-option skipAutoFix" tabindex="0">拉脱维亚</dd>
													<dd data-value="LS" class="select-option skipAutoFix" tabindex="0">莱索托</dd>
													<dd data-value="LA" class="select-option skipAutoFix" tabindex="0">老挝</dd>
													<dd data-value="LB" class="select-option skipAutoFix" tabindex="0">黎巴嫩</dd>
													<dd data-value="LT" class="select-option skipAutoFix" tabindex="0">立陶宛</dd>
													<dd data-value="LR" class="select-option skipAutoFix" tabindex="0">利比里亚</dd>
													<dd data-value="LY" class="select-option skipAutoFix" tabindex="0">利比亚</dd>
													<dd data-value="LI" class="select-option skipAutoFix" tabindex="0">列支敦士登</dd>
													<dd data-value="RE" class="select-option skipAutoFix" tabindex="0">留尼汪岛</dd>
													<dd data-value="LU" class="select-option skipAutoFix" tabindex="0">卢森堡</dd>
													<dd data-value="RW" class="select-option skipAutoFix" tabindex="0">卢旺达</dd>
													<dd data-value="RO" class="select-option skipAutoFix" tabindex="0">罗马尼亚</dd>
													<dd data-value="MG" class="select-option skipAutoFix" tabindex="0">马达加斯加</dd>
													<dd data-value="IM" class="select-option skipAutoFix" tabindex="0">马恩岛</dd>
													<dd data-value="MV" class="select-option skipAutoFix" tabindex="0">马尔代夫</dd>
													<dd data-value="MT" class="select-option skipAutoFix" tabindex="0">马耳他</dd>
													<dd data-value="MW" class="select-option skipAutoFix" tabindex="0">马拉维</dd>
													<dd data-value="MY" class="select-option skipAutoFix" tabindex="0">马来西亚</dd>
													<dd data-value="ML" class="select-option skipAutoFix" tabindex="0">马里</dd>
													<dd data-value="MK" class="select-option skipAutoFix" tabindex="0">马其顿</dd>
													<dd data-value="MH" class="select-option skipAutoFix" tabindex="0">马绍尔群岛</dd>
													<dd data-value="MQ" class="select-option skipAutoFix" tabindex="0">马提尼克岛</dd>
													<dd data-value="YT" class="select-option skipAutoFix" tabindex="0">马约特</dd>
													<dd data-value="MU" class="select-option skipAutoFix" tabindex="0">毛里求斯</dd>
													<dd data-value="MR" class="select-option skipAutoFix" tabindex="0">毛里塔尼亚</dd>
													<dd data-value="AS" class="select-option skipAutoFix" tabindex="0">美属萨摩亚</dd>
													<dd data-value="MN" class="select-option skipAutoFix" tabindex="0">蒙古</dd>
													<dd data-value="MS" class="select-option skipAutoFix" tabindex="0">蒙特塞拉特</dd>
													<dd data-value="BD" class="select-option skipAutoFix" tabindex="0">孟加拉</dd>
													<dd data-value="PE" class="select-option skipAutoFix" tabindex="0">秘鲁</dd>
													<dd data-value="MF" class="select-option skipAutoFix" tabindex="0">密克罗尼西亚</dd>
													<dd data-value="MM" class="select-option skipAutoFix" tabindex="0">缅甸</dd>
													<dd data-value="MD" class="select-option skipAutoFix" tabindex="0">摩尔多瓦</dd>
													<dd data-value="MA" class="select-option skipAutoFix" tabindex="0">摩洛哥</dd>
													<dd data-value="MC" class="select-option skipAutoFix" tabindex="0">摩纳哥</dd>
													<dd data-value="MZ" class="select-option skipAutoFix" tabindex="0">莫桑比克</dd>
													<dd data-value="MX" class="select-option skipAutoFix" tabindex="0">墨西哥</dd>
													<dd data-value="NA" class="select-option skipAutoFix" tabindex="0">纳米比亚</dd>
													<dd data-value="ZA" class="select-option skipAutoFix" tabindex="0">南非</dd>
													<dd data-value="YU" class="select-option skipAutoFix" tabindex="0">南斯拉夫</dd>
													<dd data-value="NR" class="select-option skipAutoFix" tabindex="0">瑙鲁</dd>
													<dd data-value="NP" class="select-option skipAutoFix" tabindex="0">尼泊尔</dd>
													<dd data-value="NI" class="select-option skipAutoFix" tabindex="0">尼加拉瓜</dd>
													<dd data-value="NE" class="select-option skipAutoFix" tabindex="0">尼日尔</dd>
													<dd data-value="NG" class="select-option skipAutoFix" tabindex="0">尼日利亚</dd>
													<dd data-value="NU" class="select-option skipAutoFix" tabindex="0">纽埃</dd>
													<dd data-value="NO" class="select-option skipAutoFix" tabindex="0">挪威</dd>
													<dd data-value="NF" class="select-option skipAutoFix" tabindex="0">诺福克岛</dd>
													<dd data-value="PW" class="select-option skipAutoFix" tabindex="0">帕劳</dd>
													<dd data-value="PN" class="select-option skipAutoFix" tabindex="0">皮特凯恩群岛</dd>
													<dd data-value="PT" class="select-option skipAutoFix" tabindex="0">葡萄牙</dd>
													<dd data-value="SE" class="select-option skipAutoFix" tabindex="0">瑞典</dd>
													<dd data-value="CH" class="select-option skipAutoFix" tabindex="0">瑞士</dd>
													<dd data-value="SV" class="select-option skipAutoFix" tabindex="0">萨尔瓦多</dd>
													<dd data-value="WS" class="select-option skipAutoFix" tabindex="0">萨摩亚</dd>
													<dd data-value="RS" class="select-option skipAutoFix" tabindex="0">塞尔维亚</dd>
													<dd data-value="SL" class="select-option skipAutoFix" tabindex="0">塞拉利昂</dd>
													<dd data-value="SN" class="select-option skipAutoFix" tabindex="0">塞内加尔</dd>
													<dd data-value="CY" class="select-option skipAutoFix" tabindex="0">塞浦路斯</dd>
													<dd data-value="SC" class="select-option skipAutoFix" tabindex="0">塞舌尔</dd>
													<dd data-value="SA" class="select-option skipAutoFix" tabindex="0">沙特阿拉伯</dd>
													<dd data-value="CX" class="select-option skipAutoFix" tabindex="0">圣诞岛</dd>
													<dd data-value="ST" class="select-option skipAutoFix" tabindex="0">圣多美和普林西比</dd>
													<dd data-value="SH" class="select-option skipAutoFix" tabindex="0">圣赫勒拿</dd>
													<dd data-value="KN" class="select-option skipAutoFix" tabindex="0">圣基茨和尼维斯</dd>
													<dd data-value="LC" class="select-option skipAutoFix" tabindex="0">圣卢西亚</dd>
													<dd data-value="SM" class="select-option skipAutoFix" tabindex="0">圣马力诺</dd>
													<dd data-value="VG" class="select-option skipAutoFix" tabindex="0">圣文森特和格林纳丁斯</dd>
													<dd data-value="LK" class="select-option skipAutoFix" tabindex="0">斯里兰卡</dd>
													<dd data-value="SK" class="select-option skipAutoFix" tabindex="0">斯洛伐克</dd>
													<dd data-value="SI" class="select-option skipAutoFix" tabindex="0">斯洛文尼亚</dd>
													<dd data-value="SZ" class="select-option skipAutoFix" tabindex="0">斯威士兰</dd>
													<dd data-value="SD" class="select-option skipAutoFix" tabindex="0">苏丹</dd>
													<dd data-value="SR" class="select-option skipAutoFix" tabindex="0">苏里南</dd>
													<dd data-value="SB" class="select-option skipAutoFix" tabindex="0">所罗门群岛</dd>
													<dd data-value="SO" class="select-option skipAutoFix" tabindex="0">索马里</dd>
													<dd data-value="TJ" class="select-option skipAutoFix" tabindex="0">塔吉克斯坦</dd>
													<dd data-value="TZ" class="select-option skipAutoFix" tabindex="0">坦桑尼亚</dd>
													<dd data-value="TO" class="select-option skipAutoFix" tabindex="0">汤加</dd>
													<dd data-value="TT" class="select-option skipAutoFix" tabindex="0">特立尼达和多巴哥</dd>
													<dd data-value="TN" class="select-option skipAutoFix" tabindex="0">突尼斯</dd>
													<dd data-value="TV" class="select-option skipAutoFix" tabindex="0">图瓦卢</dd>
													<dd data-value="TR" class="select-option skipAutoFix" tabindex="0">土耳其</dd>
													<dd data-value="TM" class="select-option skipAutoFix" tabindex="0">土库曼斯坦</dd>
													<dd data-value="TK" class="select-option skipAutoFix" tabindex="0">托克劳</dd>
													<dd data-value="WF" class="select-option skipAutoFix" tabindex="0">瓦利斯群岛和富图纳群岛</dd>
													<dd data-value="VU" class="select-option skipAutoFix" tabindex="0">瓦努阿图</dd>
													<dd data-value="GT" class="select-option skipAutoFix" tabindex="0">危地马拉</dd>
													<dd data-value="VE" class="select-option skipAutoFix" tabindex="0">委内瑞拉</dd>
													<dd data-value="BN" class="select-option skipAutoFix" tabindex="0">文莱</dd>
													<dd data-value="UG" class="select-option skipAutoFix" tabindex="0">乌干达</dd>
													<dd data-value="UA" class="select-option skipAutoFix" tabindex="0">乌克兰</dd>
													<dd data-value="UY" class="select-option skipAutoFix" tabindex="0">乌拉圭</dd>
													<dd data-value="UZ" class="select-option skipAutoFix" tabindex="0">乌兹别克斯坦</dd>
													<dd data-value="ES" class="select-option skipAutoFix" tabindex="0">西班牙</dd>
													<dd data-value="EH" class="select-option skipAutoFix" tabindex="0">西撒哈拉</dd>
													<dd data-value="GR" class="select-option skipAutoFix" tabindex="0">希腊</dd>
													<dd data-value="SG" class="select-option skipAutoFix" tabindex="0">新加坡</dd>
													<dd data-value="NC" class="select-option skipAutoFix" tabindex="0">新喀里多尼亚</dd>
													<dd data-value="JE" class="select-option skipAutoFix" tabindex="0">新泽西州</dd>
													<dd data-value="HU" class="select-option skipAutoFix" tabindex="0">匈牙利</dd>
													<dd data-value="SY" class="select-option skipAutoFix" tabindex="0">叙利亚</dd>
													<dd data-value="JM" class="select-option skipAutoFix" tabindex="0">牙买加</dd>
													<dd data-value="AM" class="select-option skipAutoFix" tabindex="0">亚美尼亚</dd>
													<dd data-value="YE" class="select-option skipAutoFix" tabindex="0">也门</dd>
													<dd data-value="IQ" class="select-option skipAutoFix" tabindex="0">伊拉克</dd>
													<dd data-value="IR" class="select-option skipAutoFix" tabindex="0">伊朗</dd>
													<dd data-value="IL" class="select-option skipAutoFix" tabindex="0">以色列</dd>
													<dd data-value="IT" class="select-option skipAutoFix" tabindex="0">意大利</dd>
													<dd data-value="IN" class="select-option skipAutoFix" tabindex="0">印度</dd>
													<dd data-value="ID" class="select-option skipAutoFix" tabindex="0">印度尼西亚</dd>
													<dd data-value="JO" class="select-option skipAutoFix" tabindex="0">约旦</dd>
													<dd data-value="VN" class="select-option skipAutoFix" tabindex="0">越南</dd>
													<dd data-value="ZM" class="select-option skipAutoFix" tabindex="0">赞比亚</dd>
													<dd data-value="TD" class="select-option skipAutoFix" tabindex="0">乍得</dd>
													<dd data-value="GI" class="select-option skipAutoFix" tabindex="0">直布罗陀</dd>
													<dd data-value="CL" class="select-option skipAutoFix" tabindex="0">智利</dd>
													<dd data-value="CF" class="select-option skipAutoFix" tabindex="0">中非</dd>
												</dl>
											</div>
										</div>
									</div>

									<div class="row-form  clearfix infchddispalybirthday">
										<div class="row-r infdoctype" style="display:block">
											<div class="select-group select-l select-doctType">
												<a class="select-show" href="javascript:" tabindex="0">
													<span class="select-text" tabindex="0">身份证</span></a>
												<input class="input-txt" type="text" name="product$1000$/passenger$1$/Passport/DocID" id="idcard" placeholder="请输入对应的证件号" value="${sessionScope.user.card}">
											
												<div class="tip-name"></div>
											</div>
										</div>
									</div>

							
									<div class="row-form">
										
										<div class="row-l">
											<div class="select-code select-r db newPassengerPage">
												<div class="select-group select-disabled">
													<input class="select-input countryCodeInput" type="hidden" name="product$1000$/passenger$1$/Telephone/@CountryCode" value="86"><i class="select-req" tabindex="0">*</i><span class="select-tlt" tabindex="0">手机号码</span>
													<a class="select-show ariaskiptheme" href="javascript:" tabindex="0"><span class="select-text countryCodeText" data-text="+86" tabindex="0"><span class="select-place" tabindex="0">+86</span></span><i class="icon-crrow" tabindex="0"></i></a>
												
													<input class="input-txt telephoneNumberInput" name="product$1000$/passenger$1$/Telephone/@PhoneNumber" value="${sessionScope.user.phone}" id="ophone" autocomplete="off" placeholder="填写中国大陆手机">
													<div class="input-tip">
														<i href="javascript:" class="trigger-info pos-l icon-ask" tabindex="0"></i>
														<div class="hover-con">
															<span class="crew-con-arrow" tabindex="0"></span>
															<div class="crew-con-wrap">
																<p class="tip-item" tabindex="0" setedaria="true">请您在购票时如实填写乘机人本人的手机信息，以便于发生航变及其他情况时，我们能及时将信息<br>通知至旅客本人。我们将做好隐私保护工作，该订单的出票信息依然发送至下方旅客联系信息栏中<br>的联络方式，请注意查收。</p>
															</div>
														</div>
													</div>
													<div class="tip-name tip-on"></div>
												</div>
											</div>
										</div>
										
										<div class="row-r">
											<div class="select-group select-r select-search">
												<input class="select-input" type="hidden" name="product$1000$/passenger$1$/Passport/IssueLocation" value="CN"><i class="select-req" tabindex="0">*</i><span class="select-tlt" tabindex="0">证件签发国</span>
												<a class="select-show ariaskiptheme" href="javascript:" tabindex="0"><span class="select-text" id="visa" tabindex="0">中国</span><i class="i-arrow icon-crrow" tabindex="0"></i></a>
												<dl class="select-list skipAutoFix" aria-skipautofix="true">
													<dd data-value="CN" class="select-option skipAutoFix" tabindex="0">中国</dd>
													<dd data-value="HK" class="select-option skipAutoFix" tabindex="0">中国香港</dd>
													<dd data-value="MO" class="select-option skipAutoFix" tabindex="0">中国澳门</dd>
													<dd data-value="TW" class="select-option skipAutoFix" tabindex="0">中国台湾</dd>
													<dd data-value="US" class="select-option skipAutoFix" tabindex="0">美国</dd>
													<dd data-value="CA" class="select-option skipAutoFix" tabindex="0">加拿大</dd>
													<dd data-value="TH" class="select-option skipAutoFix" tabindex="0">泰国</dd>
													<dd data-value="JP" class="select-option skipAutoFix" tabindex="0">日本</dd>
													<dd data-value="AU" class="select-option skipAutoFix" tabindex="0">澳大利亚</dd>
													<dd data-value="NZ" class="select-option skipAutoFix" tabindex="0">新西兰</dd>
													<dd data-value="DE" class="select-option skipAutoFix" tabindex="0">德国</dd>
													<dd data-value="GB" class="select-option skipAutoFix" tabindex="0">英国</dd>
													<dd data-value="FR" class="select-option skipAutoFix" tabindex="0">法国</dd>
													<dd data-value="RU" class="select-option skipAutoFix" tabindex="0">俄罗斯联邦</dd>
													<dd data-value="AL" class="select-option skipAutoFix" tabindex="0">阿尔巴尼亚</dd>
													<dd data-value="DZ" class="select-option skipAutoFix" tabindex="0">阿尔及利亚</dd>
													<dd data-value="AF" class="select-option skipAutoFix" tabindex="0">阿富汗</dd>
													<dd data-value="AR" class="select-option skipAutoFix" tabindex="0">阿根廷</dd>
													<dd data-value="AE" class="select-option skipAutoFix" tabindex="0">阿拉伯联合酋长国</dd>
													<dd data-value="AW" class="select-option skipAutoFix" tabindex="0">阿鲁巴</dd>
													<dd data-value="OM" class="select-option skipAutoFix" tabindex="0">阿曼</dd>
													<dd data-value="AZ" class="select-option skipAutoFix" tabindex="0">阿塞拜疆</dd>
													<dd data-value="EG" class="select-option skipAutoFix" tabindex="0">埃及</dd>
													<dd data-value="ET" class="select-option skipAutoFix" tabindex="0">埃塞俄比亚</dd>
													<dd data-value="IE" class="select-option skipAutoFix" tabindex="0">爱尔兰</dd>
													<dd data-value="EE" class="select-option skipAutoFix" tabindex="0">爱沙尼亚</dd>
													<dd data-value="AD" class="select-option skipAutoFix" tabindex="0">安道尔</dd>
													<dd data-value="AO" class="select-option skipAutoFix" tabindex="0">安哥拉</dd>
													<dd data-value="AI" class="select-option skipAutoFix" tabindex="0">安圭拉</dd>
													<dd data-value="AG" class="select-option skipAutoFix" tabindex="0">安提瓜和巴布达</dd>
													<dd data-value="AT" class="select-option skipAutoFix" tabindex="0">奥地利</dd>
													<dd data-value="AX" class="select-option skipAutoFix" tabindex="0">奥兰群岛</dd>
													<dd data-value="BB" class="select-option skipAutoFix" tabindex="0">巴巴多斯</dd>
													<dd data-value="PG" class="select-option skipAutoFix" tabindex="0">巴布亚新几内亚</dd>
													<dd data-value="BS" class="select-option skipAutoFix" tabindex="0">巴哈马</dd>
													<dd data-value="PK" class="select-option skipAutoFix" tabindex="0">巴基斯坦</dd>
													<dd data-value="PY" class="select-option skipAutoFix" tabindex="0">巴拉圭</dd>
													<dd data-value="PS" class="select-option skipAutoFix" tabindex="0">巴勒斯坦</dd>
													<dd data-value="BH" class="select-option skipAutoFix" tabindex="0">巴林</dd>
													<dd data-value="PA" class="select-option skipAutoFix" tabindex="0">巴拿马</dd>
													<dd data-value="BR" class="select-option skipAutoFix" tabindex="0">巴西</dd>
													<dd data-value="BY" class="select-option skipAutoFix" tabindex="0">白俄罗斯</dd>
													<dd data-value="BM" class="select-option skipAutoFix" tabindex="0">百慕大</dd>
													<dd data-value="BG" class="select-option skipAutoFix" tabindex="0">保加利亚</dd>
													<dd data-value="BJ" class="select-option skipAutoFix" tabindex="0">贝宁</dd>
													<dd data-value="BE" class="select-option skipAutoFix" tabindex="0">比利时</dd>
													<dd data-value="IS" class="select-option skipAutoFix" tabindex="0">冰岛</dd>
													<dd data-value="PR" class="select-option skipAutoFix" tabindex="0">波多黎各</dd>
													<dd data-value="PL" class="select-option skipAutoFix" tabindex="0">波兰</dd>
													<dd data-value="BA" class="select-option skipAutoFix" tabindex="0">波斯尼亚和黑塞哥维那</dd>
													<dd data-value="BO" class="select-option skipAutoFix" tabindex="0">玻利维亚</dd>
													<dd data-value="BZ" class="select-option skipAutoFix" tabindex="0">伯利兹</dd>
													<dd data-value="BW" class="select-option skipAutoFix" tabindex="0">博茨瓦纳</dd>
													<dd data-value="BT" class="select-option skipAutoFix" tabindex="0">不丹</dd>
													<dd data-value="BF" class="select-option skipAutoFix" tabindex="0">布基纳法索</dd>
													<dd data-value="BI" class="select-option skipAutoFix" tabindex="0">布隆迪</dd>
													<dd data-value="BV" class="select-option skipAutoFix" tabindex="0">布维岛</dd>
													<dd data-value="KP" class="select-option skipAutoFix" tabindex="0">朝鲜</dd>
													<dd data-value="GQ" class="select-option skipAutoFix" tabindex="0">赤道几内亚</dd>
													<dd data-value="DK" class="select-option skipAutoFix" tabindex="0">丹麦</dd>
													<dd data-value="TL" class="select-option skipAutoFix" tabindex="0">东帝汶</dd>
													<dd data-value="TG" class="select-option skipAutoFix" tabindex="0">多哥</dd>
													<dd data-value="DM" class="select-option skipAutoFix" tabindex="0">多米尼加</dd>
													<dd data-value="EC" class="select-option skipAutoFix" tabindex="0">厄瓜多尔</dd>
													<dd data-value="ER" class="select-option skipAutoFix" tabindex="0">厄立特里亚</dd>
													<dd data-value="FX" class="select-option skipAutoFix" tabindex="0">法国大都会</dd>
													<dd data-value="FO" class="select-option skipAutoFix" tabindex="0">法罗群岛</dd>
													<dd data-value="PF" class="select-option skipAutoFix" tabindex="0">法属波利尼西亚</dd>
													<dd data-value="GF" class="select-option skipAutoFix" tabindex="0">法属圭亚那</dd>
													<dd data-value="VA" class="select-option skipAutoFix" tabindex="0">梵蒂冈</dd>
													<dd data-value="PH" class="select-option skipAutoFix" tabindex="0">菲律宾</dd>
													<dd data-value="FJ" class="select-option skipAutoFix" tabindex="0">斐济</dd>
													<dd data-value="FI" class="select-option skipAutoFix" tabindex="0">芬兰</dd>
													<dd data-value="CV" class="select-option skipAutoFix" tabindex="0">佛得角</dd>
													<dd data-value="GM" class="select-option skipAutoFix" tabindex="0">冈比亚</dd>
													<dd data-value="CG" class="select-option skipAutoFix" tabindex="0">刚果</dd>
													<dd data-value="CD" class="select-option skipAutoFix" tabindex="0">刚果（金）</dd>
													<dd data-value="CO" class="select-option skipAutoFix" tabindex="0">哥伦比亚</dd>
													<dd data-value="CR" class="select-option skipAutoFix" tabindex="0">哥斯达黎加</dd>
													<dd data-value="GD" class="select-option skipAutoFix" tabindex="0">格林纳达</dd>
													<dd data-value="GE" class="select-option skipAutoFix" tabindex="0">格鲁吉亚</dd>
													<dd data-value="GG" class="select-option skipAutoFix" tabindex="0">根西岛</dd>
													<dd data-value="CU" class="select-option skipAutoFix" tabindex="0">古巴</dd>
													<dd data-value="GP" class="select-option skipAutoFix" tabindex="0">瓜德罗普岛</dd>
													<dd data-value="GU" class="select-option skipAutoFix" tabindex="0">关岛</dd>
													<dd data-value="GY" class="select-option skipAutoFix" tabindex="0">圭亚那</dd>
													<dd data-value="KZ" class="select-option skipAutoFix" tabindex="0">哈萨克斯坦</dd>
													<dd data-value="HT" class="select-option skipAutoFix" tabindex="0">海地</dd>
													<dd data-value="KR" class="select-option skipAutoFix" tabindex="0">韩国</dd>
													<dd data-value="NL" class="select-option skipAutoFix" tabindex="0">荷兰</dd>
													<dd data-value="ME" class="select-option skipAutoFix" tabindex="0">黑山</dd>
													<dd data-value="HN" class="select-option skipAutoFix" tabindex="0">洪都拉斯</dd>
													<dd data-value="KI" class="select-option skipAutoFix" tabindex="0">基里巴斯</dd>
													<dd data-value="DJ" class="select-option skipAutoFix" tabindex="0">吉布提</dd>
													<dd data-value="KG" class="select-option skipAutoFix" tabindex="0">吉尔吉斯斯坦</dd>
													<dd data-value="GN" class="select-option skipAutoFix" tabindex="0">几内亚</dd>
													<dd data-value="GW" class="select-option skipAutoFix" tabindex="0">几内亚比绍</dd>
													<dd data-value="GH" class="select-option skipAutoFix" tabindex="0">加纳</dd>
													<dd data-value="GA" class="select-option skipAutoFix" tabindex="0">加蓬</dd>
													<dd data-value="KH" class="select-option skipAutoFix" tabindex="0">柬埔寨</dd>
													<dd data-value="CZ" class="select-option skipAutoFix" tabindex="0">捷克</dd>
													<dd data-value="ZW" class="select-option skipAutoFix" tabindex="0">津巴布韦</dd>
													<dd data-value="CM" class="select-option skipAutoFix" tabindex="0">喀麦隆</dd>
													<dd data-value="QA" class="select-option skipAutoFix" tabindex="0">卡塔尔</dd>
													<dd data-value="CC" class="select-option skipAutoFix" tabindex="0">科科斯（基林）群岛</dd>
													<dd data-value="KM" class="select-option skipAutoFix" tabindex="0">科摩罗</dd>
													<dd data-value="CI" class="select-option skipAutoFix" tabindex="0">科特迪瓦</dd>
													<dd data-value="KW" class="select-option skipAutoFix" tabindex="0">科威特</dd>
													<dd data-value="HR" class="select-option skipAutoFix" tabindex="0">克罗地亚</dd>
													<dd data-value="KE" class="select-option skipAutoFix" tabindex="0">肯尼亚</dd>
													<dd data-value="CK" class="select-option skipAutoFix" tabindex="0">库克群岛</dd>
													<dd data-value="LV" class="select-option skipAutoFix" tabindex="0">拉脱维亚</dd>
													<dd data-value="LS" class="select-option skipAutoFix" tabindex="0">莱索托</dd>
													<dd data-value="LA" class="select-option skipAutoFix" tabindex="0">老挝</dd>
													<dd data-value="LB" class="select-option skipAutoFix" tabindex="0">黎巴嫩</dd>
													<dd data-value="LT" class="select-option skipAutoFix" tabindex="0">立陶宛</dd>
													<dd data-value="LR" class="select-option skipAutoFix" tabindex="0">利比里亚</dd>
													<dd data-value="LY" class="select-option skipAutoFix" tabindex="0">利比亚</dd>
													<dd data-value="LI" class="select-option skipAutoFix" tabindex="0">列支敦士登</dd>
													<dd data-value="RE" class="select-option skipAutoFix" tabindex="0">留尼汪岛</dd>
													<dd data-value="LU" class="select-option skipAutoFix" tabindex="0">卢森堡</dd>
													<dd data-value="RW" class="select-option skipAutoFix" tabindex="0">卢旺达</dd>
													<dd data-value="RO" class="select-option skipAutoFix" tabindex="0">罗马尼亚</dd>
													<dd data-value="MG" class="select-option skipAutoFix" tabindex="0">马达加斯加</dd>
													<dd data-value="IM" class="select-option skipAutoFix" tabindex="0">马恩岛</dd>
													<dd data-value="MV" class="select-option skipAutoFix" tabindex="0">马尔代夫</dd>
													<dd data-value="MT" class="select-option skipAutoFix" tabindex="0">马耳他</dd>
													<dd data-value="MW" class="select-option skipAutoFix" tabindex="0">马拉维</dd>
													<dd data-value="MY" class="select-option skipAutoFix" tabindex="0">马来西亚</dd>
													<dd data-value="ML" class="select-option skipAutoFix" tabindex="0">马里</dd>
													<dd data-value="MK" class="select-option skipAutoFix" tabindex="0">马其顿</dd>
													<dd data-value="MH" class="select-option skipAutoFix" tabindex="0">马绍尔群岛</dd>
													<dd data-value="MQ" class="select-option skipAutoFix" tabindex="0">马提尼克岛</dd>
													<dd data-value="YT" class="select-option skipAutoFix" tabindex="0">马约特</dd>
													<dd data-value="MU" class="select-option skipAutoFix" tabindex="0">毛里求斯</dd>
													<dd data-value="MR" class="select-option skipAutoFix" tabindex="0">毛里塔尼亚</dd>
													<dd data-value="AS" class="select-option skipAutoFix" tabindex="0">美属萨摩亚</dd>
													<dd data-value="MN" class="select-option skipAutoFix" tabindex="0">蒙古</dd>
													<dd data-value="MS" class="select-option skipAutoFix" tabindex="0">蒙特塞拉特</dd>
													<dd data-value="BD" class="select-option skipAutoFix" tabindex="0">孟加拉</dd>
													<dd data-value="PE" class="select-option skipAutoFix" tabindex="0">秘鲁</dd>
													<dd data-value="MF" class="select-option skipAutoFix" tabindex="0">密克罗尼西亚</dd>
													<dd data-value="MM" class="select-option skipAutoFix" tabindex="0">缅甸</dd>
													<dd data-value="MD" class="select-option skipAutoFix" tabindex="0">摩尔多瓦</dd>
													<dd data-value="MA" class="select-option skipAutoFix" tabindex="0">摩洛哥</dd>
													<dd data-value="MC" class="select-option skipAutoFix" tabindex="0">摩纳哥</dd>
													<dd data-value="MZ" class="select-option skipAutoFix" tabindex="0">莫桑比克</dd>
													<dd data-value="MX" class="select-option skipAutoFix" tabindex="0">墨西哥</dd>
													<dd data-value="NA" class="select-option skipAutoFix" tabindex="0">纳米比亚</dd>
													<dd data-value="ZA" class="select-option skipAutoFix" tabindex="0">南非</dd>
													<dd data-value="YU" class="select-option skipAutoFix" tabindex="0">南斯拉夫</dd>
													<dd data-value="NR" class="select-option skipAutoFix" tabindex="0">瑙鲁</dd>
													<dd data-value="NP" class="select-option skipAutoFix" tabindex="0">尼泊尔</dd>
													<dd data-value="NI" class="select-option skipAutoFix" tabindex="0">尼加拉瓜</dd>
													<dd data-value="NE" class="select-option skipAutoFix" tabindex="0">尼日尔</dd>
													<dd data-value="NG" class="select-option skipAutoFix" tabindex="0">尼日利亚</dd>
													<dd data-value="NU" class="select-option skipAutoFix" tabindex="0">纽埃</dd>
													<dd data-value="NO" class="select-option skipAutoFix" tabindex="0">挪威</dd>
													<dd data-value="NF" class="select-option skipAutoFix" tabindex="0">诺福克岛</dd>
													<dd data-value="PW" class="select-option skipAutoFix" tabindex="0">帕劳</dd>
													<dd data-value="PN" class="select-option skipAutoFix" tabindex="0">皮特凯恩群岛</dd>
													<dd data-value="PT" class="select-option skipAutoFix" tabindex="0">葡萄牙</dd>
													<dd data-value="SE" class="select-option skipAutoFix" tabindex="0">瑞典</dd>
													<dd data-value="CH" class="select-option skipAutoFix" tabindex="0">瑞士</dd>
													<dd data-value="SV" class="select-option skipAutoFix" tabindex="0">萨尔瓦多</dd>
													<dd data-value="WS" class="select-option skipAutoFix" tabindex="0">萨摩亚</dd>
													<dd data-value="RS" class="select-option skipAutoFix" tabindex="0">塞尔维亚</dd>
													<dd data-value="SL" class="select-option skipAutoFix" tabindex="0">塞拉利昂</dd>
													<dd data-value="SN" class="select-option skipAutoFix" tabindex="0">塞内加尔</dd>
													<dd data-value="CY" class="select-option skipAutoFix" tabindex="0">塞浦路斯</dd>
													<dd data-value="SC" class="select-option skipAutoFix" tabindex="0">塞舌尔</dd>
													<dd data-value="SA" class="select-option skipAutoFix" tabindex="0">沙特阿拉伯</dd>
													<dd data-value="CX" class="select-option skipAutoFix" tabindex="0">圣诞岛</dd>
													<dd data-value="ST" class="select-option skipAutoFix" tabindex="0">圣多美和普林西比</dd>
													<dd data-value="SH" class="select-option skipAutoFix" tabindex="0">圣赫勒拿</dd>
													<dd data-value="KN" class="select-option skipAutoFix" tabindex="0">圣基茨和尼维斯</dd>
													<dd data-value="LC" class="select-option skipAutoFix" tabindex="0">圣卢西亚</dd>
													<dd data-value="SM" class="select-option skipAutoFix" tabindex="0">圣马力诺</dd>
													<dd data-value="VG" class="select-option skipAutoFix" tabindex="0">圣文森特和格林纳丁斯</dd>
													<dd data-value="LK" class="select-option skipAutoFix" tabindex="0">斯里兰卡</dd>
													<dd data-value="SK" class="select-option skipAutoFix" tabindex="0">斯洛伐克</dd>
													<dd data-value="SI" class="select-option skipAutoFix" tabindex="0">斯洛文尼亚</dd>
													<dd data-value="SZ" class="select-option skipAutoFix" tabindex="0">斯威士兰</dd>
													<dd data-value="SD" class="select-option skipAutoFix" tabindex="0">苏丹</dd>
													<dd data-value="SR" class="select-option skipAutoFix" tabindex="0">苏里南</dd>
													<dd data-value="SB" class="select-option skipAutoFix" tabindex="0">所罗门群岛</dd>
													<dd data-value="SO" class="select-option skipAutoFix" tabindex="0">索马里</dd>
													<dd data-value="TJ" class="select-option skipAutoFix" tabindex="0">塔吉克斯坦</dd>
													<dd data-value="TZ" class="select-option skipAutoFix" tabindex="0">坦桑尼亚</dd>
													<dd data-value="TO" class="select-option skipAutoFix" tabindex="0">汤加</dd>
													<dd data-value="TT" class="select-option skipAutoFix" tabindex="0">特立尼达和多巴哥</dd>
													<dd data-value="TN" class="select-option skipAutoFix" tabindex="0">突尼斯</dd>
													<dd data-value="TV" class="select-option skipAutoFix" tabindex="0">图瓦卢</dd>
													<dd data-value="TR" class="select-option skipAutoFix" tabindex="0">土耳其</dd>
													<dd data-value="TM" class="select-option skipAutoFix" tabindex="0">土库曼斯坦</dd>
													<dd data-value="TK" class="select-option skipAutoFix" tabindex="0">托克劳</dd>
													<dd data-value="WF" class="select-option skipAutoFix" tabindex="0">瓦利斯群岛和富图纳群岛</dd>
													<dd data-value="VU" class="select-option skipAutoFix" tabindex="0">瓦努阿图</dd>
													<dd data-value="GT" class="select-option skipAutoFix" tabindex="0">危地马拉</dd>
													<dd data-value="VE" class="select-option skipAutoFix" tabindex="0">委内瑞拉</dd>
													<dd data-value="BN" class="select-option skipAutoFix" tabindex="0">文莱</dd>
													<dd data-value="UG" class="select-option skipAutoFix" tabindex="0">乌干达</dd>
													<dd data-value="UA" class="select-option skipAutoFix" tabindex="0">乌克兰</dd>
													<dd data-value="UY" class="select-option skipAutoFix" tabindex="0">乌拉圭</dd>
													<dd data-value="UZ" class="select-option skipAutoFix" tabindex="0">乌兹别克斯坦</dd>
													<dd data-value="ES" class="select-option skipAutoFix" tabindex="0">西班牙</dd>
													<dd data-value="EH" class="select-option skipAutoFix" tabindex="0">西撒哈拉</dd>
													<dd data-value="GR" class="select-option skipAutoFix" tabindex="0">希腊</dd>
													<dd data-value="SG" class="select-option skipAutoFix" tabindex="0">新加坡</dd>
													<dd data-value="NC" class="select-option skipAutoFix" tabindex="0">新喀里多尼亚</dd>
													<dd data-value="JE" class="select-option skipAutoFix" tabindex="0">新泽西州</dd>
													<dd data-value="HU" class="select-option skipAutoFix" tabindex="0">匈牙利</dd>
													<dd data-value="SY" class="select-option skipAutoFix" tabindex="0">叙利亚</dd>
													<dd data-value="JM" class="select-option skipAutoFix" tabindex="0">牙买加</dd>
													<dd data-value="AM" class="select-option skipAutoFix" tabindex="0">亚美尼亚</dd>
													<dd data-value="YE" class="select-option skipAutoFix" tabindex="0">也门</dd>
													<dd data-value="IQ" class="select-option skipAutoFix" tabindex="0">伊拉克</dd>
													<dd data-value="IR" class="select-option skipAutoFix" tabindex="0">伊朗</dd>
													<dd data-value="IL" class="select-option skipAutoFix" tabindex="0">以色列</dd>
													<dd data-value="IT" class="select-option skipAutoFix" tabindex="0">意大利</dd>
													<dd data-value="IN" class="select-option skipAutoFix" tabindex="0">印度</dd>
													<dd data-value="ID" class="select-option skipAutoFix" tabindex="0">印度尼西亚</dd>
													<dd data-value="JO" class="select-option skipAutoFix" tabindex="0">约旦</dd>
													<dd data-value="VN" class="select-option skipAutoFix" tabindex="0">越南</dd>
													<dd data-value="ZM" class="select-option skipAutoFix" tabindex="0">赞比亚</dd>
													<dd data-value="TD" class="select-option skipAutoFix" tabindex="0">乍得</dd>
													<dd data-value="GI" class="select-option skipAutoFix" tabindex="0">直布罗陀</dd>
													<dd data-value="CL" class="select-option skipAutoFix" tabindex="0">智利</dd>
													<dd data-value="CF" class="select-option skipAutoFix" tabindex="0">中非</dd>
												</dl>
											</div>
										</div>
									</div>
									
							

								</div>

							</div>
						</div>
						<div class="area"></div>
						<div class="model-check clearfix">

							<div class="check-coupon coupons-intel">
								<p class="ck-price" tabindex="0" setedaria="true">共<span class="tol-cost" id="tol-costs" tabindex="0">CNY&nbsp;${requestScope.price}</span>
								</p>
							</div>
							<a class="btn btn-default" onclick="createOrders();" tabindex="0">确认预订</a>
						</div>
				</div>

				</form>
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
											<input type="hidden" id="fid" value="${requestScope.fly.fid}">
											<input type="hidden" id="price" value="${requestScope.price}">
											<input type="hidden" id="date" value="${requestScope.date}">
										</div>
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/index/jquery-1.12.3.min.js"></script>
	</body>
<script>

	function createOrders() {
		var price = document.getElementById("price").value;
		var visa = document.getElementById("visa").innerText;
		var types = document.getElementById("type").innerText;
		var nationality = document.getElementById("nationality").innerText;
		var ophone = document.getElementById("ophone").value;
		var idcard = document.getElementById("idcard").value;
		var oname = document.getElementById("name").value;
		var fid = document.getElementById("fid").value;
		var date = document.getElementById("date").value;
		if (oname==""||oname==null){
			alert("乘机人名字不能为空！");
			return false;
		}

		if (idcard==""||idcard==null){
			alert("身份证不能为空！");
			return false;
		}
		if (idcard.length!=18){
			alert("身份证为18位字符！");
			return false;
		}
		if (ophone==""||ophone==null){
			alert("手机号不能为空！");
			return false;
		}

		if (ophone.length!=11){
			alert("手机号码为11位数字！");
			return false;
		}
		$.ajax({
			url: "${pageContext.request.contextPath}/OrdersController/createOrders",
			type: "post",
			data:{ophone:ophone,idcard:idcard,oname:oname,nationality:nationality,types:types,visa:visa,price:price,fid:fid,date:date},
			success: function (str) {
				if ("success"==str){
					window.location.href="${pageContext.request.contextPath}/OrdersController/three";
				}else {
					alert("预订失败！")
				}
			},
			error:function (){
				alert("网络连接失败")
			}
		});
	}
</script>
</html>