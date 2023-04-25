<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #666;
						font-size: 14px;
						border-color: #ddd;
						line-height: 40px;
						border-radius: 30px;
						outline: none;
						background: #fff;
						width: 350px;
						border-width: 1px;
						border-style: solid;
						height: 40px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container" :style='{"padding":"30px 7% 40px","margin":"10px auto","alignItems":"flex-start","flexWrap":"wrap","background":"rgba(255,255,255,0)","display":"block","width":"100%","justifyContent":"space-between"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">报到编号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.baodaobianhao" type="text" :readonly="ro.baodaobianhao" name="baodaobianhao" id="baodaobianhao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">学院名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.xueyuanmingcheng" type="text" :readonly="ro.xueyuanmingcheng" name="xueyuanmingcheng" id="xueyuanmingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">学生账号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.xueshengzhanghao" type="text" :readonly="ro.xueshengzhanghao" name="xueshengzhanghao" id="xueshengzhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">学生姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.xueshengxingming" type="text" :readonly="ro.xueshengxingming" name="xueshengxingming" id="xueshengxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">性别：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.xingbie" type="text" :readonly="ro.xingbie" name="xingbie" id="xingbie" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">班级名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.banjimingcheng" type="text" :readonly="ro.banjimingcheng" name="banjimingcheng" id="banjimingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">联系方式：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.lianxifangshi" type="text" :readonly="ro.lianxifangshi" name="lianxifangshi" id="lianxifangshi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">报到状态</div>
						<select name="baodaozhuangtai" id="baodaozhuangtai" lay-filter="baodaozhuangtai"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in baodaozhuangtai" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex","width":"100%","borderStyle":"solid","float":"left"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">报到时间：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="baodaoshijian" id="baodaoshijian" autocomplete="off" class="layui-input" >
					</div>

					<div :style='{"margin":"0 0 10px 0","alignItems":"center","background":"linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(178,213,232,1) 100%)","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"150px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#278bc0","textAlign":"right"}' class="label">备注：</div>
						<textarea :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"20px 0 20px","borderColor":"#ddd","backgroundColor":"rgba(255,255,255,.8)","borderRadius":"0","borderWidth":"1px","width":"88%","borderStyle":"solid","height":"auto"}' name="beizhu" id="beizhu">请输入备注</textarea>
					</div>

					<div :style='{"margin":"20px 0 0 0px","alignItems":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","boxShadow":"inset 0px 0px 12px 0px #b3d7ea","margin":"0 10px","borderColor":"#288bbf","color":"#288bbf","minWidth":"150px","outline":"none","borderRadius":"8px","background":"#fff","borderWidth":"2px","width":"auto","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"48px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","boxShadow":"inset 0px 0px 12px 0px #eee","margin":"0 10px","borderColor":"#ccc","color":"#999","minWidth":"150px","outline":"none","borderRadius":"8px","background":"none","borderWidth":"2px","width":"auto","fontSize":"16px","lineHeight":"44px","borderStyle":"solid","height":"48px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        baodaobianhao : false,
                                        xueyuanmingcheng : false,
                                        xueshengzhanghao : false,
                                        xueshengxingming : false,
                                        xingbie : false,
                                        banjimingcheng : false,
                                        lianxifangshi : false,
                                        baodaozhuangtai : false,
                                        baodaoshijian : false,
                                        beizhu : false,
					},
                    detail: {
                        baodaobianhao: genTradeNo(),
                        xueyuanmingcheng: '',
                        xueshengzhanghao: '',
                        xueshengxingming: '',
                        xingbie: '',
                        banjimingcheng: '',
                        lianxifangshi: '',
                        baodaozhuangtai: '',
                        baodaoshijian: '',
                        beizhu: '',
                    },
					baodaozhuangtai: '已报到,未报到'.split(','),
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '520px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '6000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
                form.on('select(baodaozhuangtai)', function (data) {
                    vue.detail.baodaozhuangtai=data.value;
                });
                                jquery('#baodaoshijian').val(getCurDate());
				laydate.render({
					elem: '#baodaoshijian'
				});
                var edit = tinymce.render({
                    elem: "#beizhu",
                    height: 600,
                    images_upload_handler: function(blobInfo, succFun, failFun) {
                        var xhr, formData;
                        var file = blobInfo.blob(); //转化为易于理解的file对象
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', http.baseurl + 'file/upload');
                        xhr.setRequestHeader("Token", localStorage.getItem('Token')); //设置请求头
                        xhr.onload = function() {
                            var json;
                            if (xhr.status != 200) {
                                failFun('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.file != 'string') {
                                failFun('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            succFun(http.baseurl + '/upload/' + json.file);
                        };
                        formData = new FormData();
                        formData.append('file', file, file.name); //此处与源文档不一样
                        xhr.send(formData);
                    }
                }, (opt) => {

                });
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='xueshengzhanghao'){
                                vue.detail['xueshengzhanghao'] = data[`${key}`]
                                vue.ro.xueshengzhanghao = true;
                                continue;
                        }
                        if(key=='xueshengxingming'){
                                vue.detail['xueshengxingming'] = data[`${key}`]
                                vue.ro.xueshengxingming = true;
                                continue;
                        }
                        if(key=='xingbie'){
                                vue.detail['xingbie'] = data[`${key}`]
                                vue.ro.xingbie = true;
                                continue;
                        }
                        if(key=='banjimingcheng'){
                                vue.detail['banjimingcheng'] = data[`${key}`]
                                vue.ro.banjimingcheng = true;
                                continue;
                        }
                        if(key=='lianxifangshi'){
                                vue.detail['lianxifangshi'] = data[`${key}`]
                                vue.ro.lianxifangshi = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='baodaobianhao'){
                                vue.detail[o] = obj[o];
                                vue.ro.baodaobianhao = true;
                                continue;
                        }
                        if(o=='xueyuanmingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueyuanmingcheng = true;
                                continue;
                        }
                        if(o=='xueshengzhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueshengzhanghao = true;
                                continue;
                        }
                        if(o=='xueshengxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueshengxingming = true;
                                continue;
                        }
                        if(o=='xingbie'){
                                vue.detail[o] = obj[o];
                                vue.ro.xingbie = true;
                                continue;
                        }
                        if(o=='banjimingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.banjimingcheng = true;
                                continue;
                        }
                        if(o=='lianxifangshi'){
                                vue.detail[o] = obj[o];
                                vue.ro.lianxifangshi = true;
                                continue;
                        }
                        if(o=='baodaozhuangtai'){
                                vue.detail[o] = obj[o];
                                vue.ro.baodaozhuangtai = true;
                                continue;
                        }
                        if(o=='baodaoshijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.baodaoshijian = true;
                                jquery('#baodaoshijian').val(obj[o]);
                                continue;
                        }
                        if(o=='beizhu'){
                                vue.detail[o] = obj[o];
                                vue.ro.beizhu = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
					var beizhu = tinymce.get('#beizhu').getContent()
					data.beizhu = beizhu;

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('baodaoxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('baodaoxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('baodaoxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
