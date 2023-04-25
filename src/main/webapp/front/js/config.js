
var projectName = '新生入学报到管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '学校学院',
	url: './pages/xuexiaoxueyuan/list.jsp'
}, 
{
	name: '公告信息',
	url: './pages/gonggaoxinxi/list.jsp'
}, 
{
	name: '班级信息',
	url: './pages/banjixinxi/list.jsp'
}, 

{
	name: '新生报到步骤',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspm7bxy9/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{
    "backMenu": [{
        "child": [{
            "appFrontIcon": "cuIcon-addressbook",
            "buttons": ["新增", "查看", "修改", "删除", "导出", "导入"],
            "menu": "学生",
            "menuJump": "列表",
            "tableName": "xuesheng"
        }],
        "menu": "学生管理"
    },
        {
            "child": [{
                "appFrontIcon": "cuIcon-qrcode",
                "buttons": ["查看", "修改", "删除", "新生报到统计", "首页统计", "首页总数"],
                "menu": "报到信息",
                "menuJump": "列表",
                "tableName": "baodaoxinxi"
            }],
            "menu": "报到信息管理"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-cardboard",
                "buttons": ["新增", "查看", "修改", "删除"],
                "menu": "班助",
                "menuJump": "列表",
                "tableName": "banzhu"
            }],
            "menu": "班助管理"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-shop",
                "buttons": ["新增", "查看", "修改", "删除"],
                "menu": "班级信息",
                "menuJump": "列表",
                "tableName": "banjixinxi"
            }],
            "menu": "班级信息管理"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-taxi",
                "buttons": ["新增", "查看", "修改", "删除"],
                "menu": "学校学院",
                "menuJump": "列表",
                "tableName": "xuexiaoxueyuan"
            }],
            "menu": "学校学院管理"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-copy",
                "buttons": ["新增", "查看", "修改", "删除"],
                "menu": "宿舍信息",
                "menuJump": "列表",
                "tableName": "sushexinxi"
            }],
            "menu": "宿舍信息管理"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-discover",
                "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                "menu": "公告信息",
                "menuJump": "列表",
                "tableName": "gonggaoxinxi"
            }],
            "menu": "公告信息管理"
        },


        {
            "child": [{
                "appFrontIcon": "cuIcon-link",
                "buttons": ["查看", "修改", "删除"],
                "menu": "宿舍分配",
                "menuJump": "列表",
                "tableName": "sushefenpei"
            }],
            "menu": "宿舍分配管理"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-attentionfavor",
                "buttons": ["查看", "修改"],
                "menu": "轮播图管理",
                "tableName": "config"
            },
                {
                    "appFrontIcon": "cuIcon-news",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "新生报到步骤",
                    "tableName": "news"
                },
                {
                    "appFrontIcon": "cuIcon-send",
                    "buttons": ["查看", "修改"],
                    "menu": "关于我们",
                    "tableName": "aboutus"
                },
                {
                    "appFrontIcon": "cuIcon-rank",
                    "buttons": ["查看", "修改"],
                    "menu": "系统简介",
                    "tableName": "systemintro"
                }],
            "menu": "系统管理"
        }],
    "frontMenu": [{
        "child": [{
            "appFrontIcon": "cuIcon-qrcode",
            "buttons": ["查看", "报到"],
            "menu": "学校学院列表",
            "menuJump": "列表",
            "tableName": "xuexiaoxueyuan"
        }],
        "menu": "学校学院模块"
    },
        {
            "child": [{
                "appFrontIcon": "cuIcon-clothes",
                "buttons": ["查看"],
                "menu": "公告信息列表",
                "menuJump": "列表",
                "tableName": "gonggaoxinxi"
            }],
            "menu": "公告信息模块"
        },
        {
            "child": [{
                "appFrontIcon": "cuIcon-phone",
                "buttons": ["查看"],
                "menu": "班级信息列表",
                "menuJump": "列表",
                "tableName": "banjixinxi"
            }],
            "menu": "班级信息模块"
        }],
    "hasBackLogin": "是",
    "hasBackRegister": "否",
    "hasFrontLogin": "否",
    "hasFrontRegister": "否",
    "roleName": "管理员",
    "tableName": "users"
},
    {
        "backMenu": [{
            "child": [{
                "appFrontIcon": "cuIcon-qrcode",
                "buttons": ["查看", "删除"],
                "menu": "报到信息",
                "menuJump": "列表",
                "tableName": "baodaoxinxi"
            }],
            "menu": "报到信息管理"
        },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-link",
                    "buttons": ["查看"],
                    "menu": "宿舍分配",
                    "menuJump": "列表",
                    "tableName": "sushefenpei"
                }],
                "menu": "宿舍分配管理"
            }],
        "frontMenu": [{
            "child": [{
                "appFrontIcon": "cuIcon-qrcode",
                "buttons": ["查看", "报到"],
                "menu": "学校学院列表",
                "menuJump": "列表",
                "tableName": "xuexiaoxueyuan"
            }],
            "menu": "学校学院模块"
        },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-clothes",
                    "buttons": ["查看"],
                    "menu": "公告信息列表",
                    "menuJump": "列表",
                    "tableName": "gonggaoxinxi"
                }],
                "menu": "公告信息模块"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-phone",
                    "buttons": ["查看"],
                    "menu": "班级信息列表",
                    "menuJump": "列表",
                    "tableName": "banjixinxi"
                }],
                "menu": "班级信息模块"
            }],
        "hasBackLogin": "是",
        "hasBackRegister": "否",
        "hasFrontLogin": "是",
        "hasFrontRegister": "否",
        "roleName": "学生",
        "tableName": "xuesheng"
    },
    {
        "backMenu": [{
            "child": [{
                "appFrontIcon": "cuIcon-addressbook",
                "buttons": ["查看", "导出"],
                "menu": "学生",
                "menuJump": "列表",
                "tableName": "xuesheng"
            }],
            "menu": "学生管理"
        },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-copy",
                    "buttons": ["查看", "入住"],
                    "menu": "宿舍信息",
                    "menuJump": "列表",
                    "tableName": "sushexinxi"
                }],
                "menu": "宿舍信息管理"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看", "查看评论"],
                    "menu": "公告信息",
                    "menuJump": "列表",
                    "tableName": "gonggaoxinxi"
                }],
                "menu": "公告信息管理"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-shop",
                    "buttons": ["查看"],
                    "menu": "班级信息",
                    "menuJump": "列表",
                    "tableName": "banjixinxi"
                }],
                "menu": "班级信息管理"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-qrcode",
                    "buttons": ["查看", "新生报到统计", "首页总数", "首页统计", "修改"],
                    "menu": "报到信息",
                    "menuJump": "列表",
                    "tableName": "baodaoxinxi"
                }],
                "menu": "报到信息管理"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-link",
                    "buttons": ["查看", "删除"],
                    "menu": "宿舍分配",
                    "menuJump": "列表",
                    "tableName": "sushefenpei"
                }],
                "menu": "宿舍分配管理"
            }],
        "frontMenu": [{
            "child": [{
                "appFrontIcon": "cuIcon-qrcode",
                "buttons": ["查看", "报到"],
                "menu": "学校学院列表",
                "menuJump": "列表",
                "tableName": "xuexiaoxueyuan"
            }],
            "menu": "学校学院模块"
        },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-clothes",
                    "buttons": ["查看"],
                    "menu": "公告信息列表",
                    "menuJump": "列表",
                    "tableName": "gonggaoxinxi"
                }],
                "menu": "公告信息模块"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-phone",
                    "buttons": ["查看"],
                    "menu": "班级信息列表",
                    "menuJump": "列表",
                    "tableName": "banjixinxi"
                }],
                "menu": "班级信息模块"
            }],
        "hasBackLogin": "是",
        "hasBackRegister": "否",
        "hasFrontLogin": "否",
        "hasFrontRegister": "否",
        "roleName": "班助",
        "tableName": "banzhu"
    }]

var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
