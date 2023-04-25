<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="jsp/static/head.jsp"%>
</head>
<style>
	#home-container {
				padding: 0px;
				background: none;
				min-height: 100vh;
				height: 100%;
			}
	
	#home-container div.home-container-title {
				padding: 20px 0 0;
				margin: 0px auto 0;
				color: rgb(51, 51, 51);
				background:  no-repeat center top;
				font-weight: bold;
				width: 100%;
				font-size: 32px;
				text-align: center;
				height: auto;
			}
	
	#home-container .cards {
				margin: 50px auto 0;
				background: none;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
			}
	
	#home-container .cards .item {
				border-radius: 0px;
				box-shadow: 0 0px 0px rgba(0,0,0,.3);
				margin: 0 0px 10px;
				display: flex;
				width: 80%;
				justify-content: center;
			}
	
	#home-container .cards .item .link {

				width: auto;
				border-color: #c7ebdb;
				border-width: 1px 0 1px 1px;
				border-style: solid;
				min-width: 200px;
				height: 120px;
			}
	
	#home-container .cards .item .item-body {
				border: 1px solid #c7ebdb;
				flex-direction: column;
				background: #fff;
				display: flex;
				width: auto;
				justify-content: center;
				align-items: center;
				min-width: 50%;
			}
	
	#home-container .cards .item .item-body .num {
				margin: 5px 0;
				color: #333;
				font-weight: bold;
				font-size: 20px;
				line-height: 24px;
				height: 24px;
			}
	
	#home-container .cards .item .item-body .name {
				margin: 5px 0;
				color: #666;
				font-size: 16px;
				line-height: 24px;
				height: 24px;
			}
	
    .homeCharts{
        display: flex;
        width: 100%;
        /*align-items: center;*/
        height: 700px;
        box-shadow: 0 4px 10px rgba(0,0,0,.3);
        border-radius: 10px;
        margin-bottom: 20px;
    }
</style> 
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="jsp/static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
			
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">主页</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
			</ol>
		</div>
		<!-- /Breadcrumb -->
			
		<!-- Main Content -->
		<div id="home-container">

			<div class="cards" :style='{"margin":"50px auto 0","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center"}'>
				<div class="item" :style='{"width":"80%","boxShadow":"0 0px 0px rgba(0,0,0,.3)","margin":"0 0px 10px","borderRadius":"0px","justifyContent":"center","display":"flex"}' v-if="crossBtnControl2('baodaoxinxi','首页总数')">
					<div class="link" :style='{"borderColor":"#c7ebdb","borderWidth":"1px 0 1px 1px","width":"auto","minWidth":"200px","borderStyle":"solid","height":"120px"}'></div>
					<div class="item-body" :style='{"border":"1px solid #c7ebdb","alignItems":"center","flexDirection":"column","background":"#fff","display":"flex","width":"auto","minWidth":"50%","justifyContent":"center"}'>
						<div class="num" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{baodaoxinxiCount}}</div>
						<div class="name" :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>报到信息总数</div>
					</div>
				</div>
			</div>
			
			<div class="homeCharts">
				<div id="baodaoxinxiMain1" v-if="crossBtnControl2('baodaoxinxi','首页统计')" class="graph" style="width: 100%;height:100%;"></div>
			</div>
		</div>
		<!-- /Main Content -->
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="jsp/static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>

	<script>
		<%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>
        <%@ include file="jsp/static/crossBtnControl.js"%>
		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>
        var vm = new Vue({
            el: '#home-container',
            data: {
            baodaoxinxiCount: 0,
            }
        });
        function getbaodaoxinxiCount() {
                $.ajax({
                    type: "GET",
                    url: baseUrl+`baodaoxinxi/count`,
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function(data){
                        if(data.code == 0){
                            vm.baodaoxinxiCount = data.data;
                        }else if(data.code == 401){
                            <%@ include file="jsp/static/toLogin.jsp"%>
                        }else{
                            alert(data.msg);
                        }
                    },
                });
        }

                <%--function baodaoxinxichartDialog1(){--%>

                <%--    $.ajax({--%>
                <%--        type: "GET",--%>
                <%--        url: baseUrl+"baodaoxinxi/typeStat/baodaozhuangtai/xueshengxingming",--%>
                <%--        beforeSend: function(xhr) {--%>
                <%--            xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));--%>
                <%--        },--%>
                <%--        success: function(data){--%>
                <%--            if(data.code == 0){--%>
                <%--                if(data.data != null){--%>
                <%--                    let res = data.data;--%>
                <%--                    let xAxis = [];--%>
                <%--                    let yAxis1 = [];--%>
                <%--                    let yAxis2 = [];--%>
                <%--                    let pArray = []--%>
                <%--                    for(let i=0;i<res.length;i++){--%>
                <%--                        xAxis.push(res[i].xueshengxingming);--%>
                <%--                        yAxis1.push(parseFloat((res[i].已报到)));--%>
                <%--                        yAxis2.push(parseFloat((res[i].未报到)));--%>
                <%--                        pArray.push({--%>
                <%--                            name: res[i].baodaozhuangtai--%>
                <%--                        })--%>
                <%--                    }--%>

                <%--                    var myChart = echarts.init(document.getElementById('baodaoxinxiMain1'),'macarons');--%>
                <%--                    var option = {};--%>
                <%--                    option = {--%>
                <%--                        title: {--%>
                <%--                            text: '新生报到统计',--%>
                <%--                        },--%>
                <%--                        legend: {--%>
                <%--                          data: [--%>
                <%--                            '已报到',--%>
                <%--                            '未报到',--%>
                <%--                            ]--%>
                <%--                        },--%>
                <%--                        tooltip: {--%>
                <%--                          trigger: 'axis'--%>
                <%--                        },--%>
                <%--                        xAxis: {--%>
                <%--                            type: 'category',--%>
                <%--                            data: xAxis--%>
                <%--                        },--%>
                <%--                        yAxis: {--%>
                <%--                            type: 'value'--%>
                <%--                        },--%>
                <%--                        series: [--%>
                <%--                        {--%>
                <%--                            name: '已报到',--%>
                <%--                            data: yAxis1,--%>
                <%--                            type: 'bar'--%>
                <%--                        },--%>
                <%--                        {--%>
                <%--                            name: '未报到',--%>
                <%--                            data: yAxis2,--%>
                <%--                            type: 'bar'--%>
                <%--                        },--%>
                <%--                        ],--%>
                <%--                    };--%>

                <%--                    // 使用刚指定的配置项和数据显示图表。--%>
                <%--                    myChart.setOption(option);--%>
                <%--                }--%>
                <%--            }else if(data.code == 401){--%>
                <%--                <%@ include file="jsp/static/toLogin.jsp"%>--%>
                <%--            }else{--%>
                <%--                alert(data.msg);--%>
                <%--            }--%>
                <%--        },--%>
                <%--    });--%>
                <%--}--%>







		function baodaoxinxichartDialog1() {
			// 发送AJAX请求获取数据
			$.ajax({
				type: "GET", // 请求类型为GET
				url: baseUrl + "baodaoxinxi/typeStat/baodaozhuangtai/xueshengxingming", // 请求URL
				beforeSend: function(xhr) { // 发送请求前执行的回调函数
					xhr.setRequestHeader("token", window.sessionStorage.getItem('token')); // 添加请求头
				},
				success: function(data) { // 请求成功后执行的回调函数
					if (data.code == 0) { // 如果返回状态码为0（成功）
						if (data.data != null) { // 如果返回的数据不为空
							let res = data.data; // 将返回的数据赋值给res变量
							console.log('数据：', res);

							let xAxis = ['已报到', '未报到']; // X轴上的两个分类
							let yAxis = [0, 0, 0]; // Y轴上的条形数据

							for (let i = 0; i < res.length; i++) { // 遍历返回的数据
								yAxis[0] += parseFloat(res[i].已报到); // 累加已报到的人数
								yAxis[1] += parseFloat(res[i].未报到); // 累加未报到的人数
							}
							console.log('xAxis：', xAxis);
							console.log('yAxis：', yAxis);

							// 创建ECharts图表对象
							var myChart = echarts.init(document.getElementById('baodaoxinxiMain1'), 'macarons');
							var option = {};
							option = {
								// 图表标题
								title: {
									text: '新生报到统计',
								},
								legend: {},
								tooltip: {
									trigger: 'axis' // 提示框触发方式为坐标轴触发
								},
								grid: {
									top:50,
									bottom: 100,
									left: 50,
									right: 50
								},
								// X轴配置
								xAxis: {
									type: 'category',
									data: xAxis // X轴显示的数据
								},
								// Y轴配置
								yAxis: {
									type: 'value'
								},
								// 数据系列配置
								series: [{
									name: '报到情况', // 系列名称
									type: 'bar', // 显示为柱状图
									data: yAxis, // 数据
									barWidth: 30, // 柱形宽度
									label: {
										show: true,
										position: 'top'
									}
								}]
							};

							// 使用刚指定的配置项和数据显示图表。
							myChart.setOption(option);

							// 修改容器高度样式，使整个图表高度增加300px
							var container = document.getElementById('baodaoxinxiMain1');
							container.style.height = (parseInt(container.style.height) + 300) + 'px';
						} else {
							console.log('数据为空！');
						}
					} else if (data.code == 401) { // 如果返回状态码为401（未授权）
						<%@ include file="jsp/static/toLogin.jsp"%> // 跳转到登录页面
					} else { // 其他错误情况
						alert(data.msg); // 弹出错误提示
					}





				},
				error: function(jqXHR, textStatus, errorThrown) { // 请求失败后执行的回调函数
					console.log('AJAX 请求失败：', jqXHR, textStatus, errorThrown);
				}
			});


			// 添加一个函数来处理图表数据
			function processGenderData(res) {
				let genderData = [
					{value: 0, name: '男生'},
					{value: 0, name: '女生'}
				];

				for (let i = 0; i < res.length; i++) {
					if (res[i].性别 === '男') {
						genderData[0].value += parseFloat(res[i].人数);
					} else if (res[i].性别 === '女') {
						genderData[1].value += parseFloat(res[i].人数);
					}
				}

				return genderData;
			}

// 在 AJAX 请求的 success 回调中处理返回的数据

			if (data.code == 0) {
				if (data.data != null) {
					let res = data.data;
					console.log('数据：', res);

					let genderData = processGenderData(res);

					// 创建ECharts图表对象
					var myChart = echarts.init(document.getElementById('genderPieChart'), 'macarons');
					var option = {
						title: {
							text: '男女生人数比例',
						},
						tooltip: {
							trigger: 'item',
							formatter: '{a} <br/>{b} : {c} ({d}%)'
						},
						legend: {
							orient: 'vertical',
							left: 'left',
							data: ['男生', '女生']
						},
						series: [
							{
								name: '性别',
								type: 'pie',
								radius: '55%',
								center: ['50%', '60%'],
								data: genderData,
								emphasis: {
									itemStyle: {
										shadowBlur: 10,
										shadowOffsetX: 0,
										shadowColor: 'rgba(0, 0, 0, 0.5)'
									}
								}
							}
						]
					};

					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				} else {
					console.log('数据为空！');
				}
			} else if (data.code == 401) {
				// 跳转到登录页面
			} else {
				alert(data.msg);
			}



		}




		$(document).ready(function() {
		//我的后台,session信息转移
		if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
			  if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
				  window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
				  window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
				  window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
				  window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
			  }
		  }			
          $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
		  $('.sidebar-header h3 a').html(projectName)
		  var token = window.sessionStorage.getItem("token");
		  if(token == "null" || token == null){
		  	alert("请登录后再操作");
		  	window.location.href = ("jsp/login.jsp");
		  }
			setMenu();
			<%@ include file="jsp/static/myInfo.js"%>
            getbaodaoxinxiCount();
            baodaoxinxichartDialog1()
		});
	</script>
</body>

</html>
