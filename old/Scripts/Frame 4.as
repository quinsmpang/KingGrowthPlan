//Frame 4
//  Action tag #0

stop();

//  Action tag #1

function 新的游戏程序()
{
    片头主界面.removeMovieClip();
    _root.attachMovie("片头选择部分", "片头选择部分", 22, {_x: 0, _y: 0});
    按钮不要显示(片头选择部分.底);
    片头选择部分.底.onPress = function ()
    {
    }
    ;
}
_root.attachMovie("片头主界面", "片头主界面", 23, {_x: 0, _y: 0});
按钮不要显示(片头主界面.底);
片头主界面.底.onPress = function ()
{
}
;

//  Action tag #2

function 丞相的动作(文本)
{
    大殿.丞相的话._visible = true;
    大殿.丞相的话._alpha = 100;
    大殿.丞相的话.文本.text = 文本;
    大殿.丞相的话.时间 = 75;
    大殿.丞相的话.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 < 0) 
        {
            this.文本.text = "";
            this._alpha = this._alpha - 30;
            if (this._alpha < 0) 
            {
                this._visible = false;
                delete this.onEnterFrame;
            }
        }
    }
    ;
}
function 主要面板操作()
{
    大殿.吏部1板.官职表按.onRelease = function ()
    {
        _root.大殿.attachMovie("官职表", "官职表", 90000, {_x: 0, _y: 0});
        大殿.说话.文本.text = 大殿.说话.文本.text + ("\n目前主要官员：" + 所有人才.length + "名");
        大殿.说话.文本.scroll = 大殿.说话.文本.maxscroll;
        刷新官职表();
    }
    ;
    大殿.吏部1板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.吏部板.调换官员.onRelease = function ()
    {
        _root.调换官员显示面板();
    }
    ;
    大殿.吏部板.封爵.onRelease = function ()
    {
        _root.封爵面板();
    }
    ;
    大殿.吏部板.开科考试.onRelease = function ()
    {
        _root.开科考试函数();
    }
    ;
    大殿.吏部板.官员外调.onRelease = function ()
    {
        _root.外调官员函数();
    }
    ;
    大殿.吏部板.各地方针.onRelease = function ()
    {
        _root.各地方针程序();
    }
    ;
    大殿.吏部板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.户部1板.民生表按.onRelease = function ()
    {
        _root.大殿.attachMovie("民生面板", "民生面板", 1000, {_x: 0, _y: 0});
        刷新民生面板(_root.大殿.民生面板);
    }
    ;
    大殿.户部1板.经济表按.onRelease = function ()
    {
        _root.大殿.attachMovie("经济表", "经济表", 1000, {_x: 0, _y: 0});
        更新经济表(_root.大殿.经济表);
    }
    ;
    大殿.户部1板.收支表按.onRelease = function ()
    {
        _root.大殿.attachMovie("收支表", "收支表", 1000, {_x: 0, _y: 0});
        收支表程序(_root.大殿.收支表);
    }
    ;
    大殿.户部1板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.户部板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.户部板.户口普查.onRelease = function ()
    {
        _root.户口普查函数();
    }
    ;
    大殿.户部板.中央补助.onRelease = function ()
    {
        _root.补助小条的程序();
    }
    ;
    大殿.户部板.购买武器.onRelease = function ()
    {
        _root.购买武器函数();
    }
    ;
    大殿.户部板.税率调整.onRelease = function ()
    {
        _root.调整税率函数();
    }
    ;
    大殿.户部板.强制征税.onRelease = function ()
    {
        _root.强制征税函数();
    }
    ;
    大殿.礼部1板.外交总表.onRelease = function ()
    {
        _root.外交的总表();
    }
    ;
    大殿.礼部1板.贸易总表.onRelease = function ()
    {
        _root.外交外贸的总表();
    }
    ;
    大殿.礼部1板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.礼部板.祭祀.onRelease = function ()
    {
        _root.祭祀函数();
    }
    ;
    大殿.礼部板.联姻.onRelease = function ()
    {
        联姻处理程序(大殿);
    }
    ;
    大殿.礼部板.贸易.onRelease = function ()
    {
        进行外交面板();
    }
    ;
    大殿.礼部板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.兵部1板.军事表按.onRelease = function ()
    {
        attachMovie("军事表", "军事表", 1000, {_x: 0, _y: 0});
    }
    ;
    大殿.兵部1板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.兵部1板.军事细查.onRelease = function ()
    {
        _root.查军事明细();
    }
    ;
    大殿.兵部1板.军事总表.onRelease = function ()
    {
        _root.军事总表();
    }
    ;
    大殿.兵部板.发动战争.onRelease = function ()
    {
        _root.战争程序();
    }
    ;
    大殿.兵部板.招募士兵.onRelease = function ()
    {
        if (_root.主角.出战 == 1) 
        {
            _root.小提示("军队正在备战");
            return;
        }
        if (_root.国家.金钱 < 0) 
        {
            _root.小提示("国库已无银两");
            return;
        }
        _root.招募士兵面板();
    }
    ;
    大殿.兵部板.卸甲归田.onRelease = function ()
    {
        _root.卸甲归田面板();
    }
    ;
    大殿.兵部板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.刑部1板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.刑部1板.官职表.onRelease = function ()
    {
        _root.大殿.attachMovie("官职表", "官职表", 1000, {_x: 0, _y: 0});
        大殿.说话.文本.text = 大殿.说话.文本.text + ("\n目前主要官员：" + 所有人才.length + "名");
        大殿.说话.文本.scroll = 大殿.说话.文本.maxscroll;
        刷新官职表();
    }
    ;
    大殿.刑部板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.刑部板.调查经费.onRelease = function ()
    {
        if (_root.国家.金钱 < 0) 
        {
            _root.小提示("国库已无银两");
            return;
        }
        _root.调查经费函数();
    }
    ;
    大殿.刑部板.大赦.onRelease = function ()
    {
        _root.大赦函数();
    }
    ;
    大殿.工部1板.建筑统计.onRelease = function ()
    {
        _root.所有建筑列表();
    }
    ;
    大殿.工部1板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.工部板.招揽民夫.onRelease = function ()
    {
        if (_root.国家.金钱 < 0) 
        {
            _root.小提示("国库已无银两");
            return;
        }
        _root.招揽民夫面板();
    }
    ;
    大殿.工部板.特殊建筑.onRelease = function ()
    {
        _root.特殊建筑面板();
    }
    ;
    大殿.工部板.地方建筑.onRelease = function ()
    {
        _root.地方建筑面板();
    }
    ;
    大殿.工部板.解雇民夫.onRelease = function ()
    {
        _root.解雇民夫面板();
    }
    ;
    大殿.工部板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.中央军板.取消按.onRelease = function ()
    {
        _root.大殿取消了();
    }
    ;
    大殿.中央军板.加强训练.onRelease = function ()
    {
        _root.加强训练函数();
    }
    ;
    大殿.中央军板.长期训练.onRelease = function ()
    {
        _root.长期训练函数();
    }
    ;
    大殿.中央军板.安全检视.onRelease = function ()
    {
        _root.安全检视函数();
    }
    ;
    大殿.中央军板.调派地方.onRelease = function ()
    {
        _root.调派地方函数();
    }
    ;
}
function 大殿体力扣除程序(参数)
{
    if (0 != !isNaN(参数) & 0 != (参数 !== undefined)) 
    {
        加载进步动画条的说("体力");
        _root.主角.体力 = _root.主角.体力 - 参数;
        if (_root.主角.体力 < 5) 
        {
            _root.圣旨.removeMovieClip();
            _root.大殿.removeMovieClip();
            生病出图程序();
        }
        if (_root.主角.体力 < 0) 
        {
            _root.主角.体力 = 10;
        }
        更新资料();
        return;
    }
    _root.小提示("传递参数异常");
}
所有场景官员 = Array("武官0", "文官0", "武官1", "文官1", "武官2", "文官2", "武官3", "文官3", "武官4", "文官4", "武官5", "文官5", "武官6", "文官6", "武官7", "文官7", "武官8", "文官8", "武官9", "文官9", "武官10", "文官10", "武官11", "文官11", "武官12", "文官12", "武官13", "文官13", "武官14", "文官14", "武官15", "文官15", "武官16", "文官16", "武官17", "文官17", "武官18", "文官18", "武官19", "文官19", "武官20", "文官20", "武官21", "文官21", "武官22", "文官22", "武官23", "文官23", "武官24", "文官24", "武官25", "文官25", "武官26", "文官26", "武官27", "文官27", "武官28", "文官28", "武官29", "文官29", "中央军", "吏部", "吏部1", "户部", "户部1", "礼部", "礼部1", "兵部", "兵部1", "刑部", "刑部1", "工部", "工部1");

//  Action tag #3

function 存档时必要的修改城市()
{
};
function 存档时必要的返回人才城市()
{
};
function 完毕面板后执行()
{
};
function 存档放入()
{
    全人才属性优化();
    var __reg9 = ["版本号", "年", "季", "旬", "国家", "所有药材", "国家建筑全部", "皇帝的辈分", "我的宝贝", "远嫁公主", "城市升级喜报"];
    存档的后宫剩余 = [];
    存档的人才剩余 = [];
    var __reg6 = 0;
    while (__reg6 < 所有历史名人.length) 
    {
        存档的人才剩余.push(所有历史名人[__reg6].id);
        ++__reg6;
    }
    __reg6 = 0;
    while (__reg6 < 后宫名人.length) 
    {
        存档的后宫剩余.push(后宫名人[__reg6].id);
        ++__reg6;
    }
    __reg9.push("存档的人才剩余");
    __reg9.push("存档的后宫剩余");
    var __reg14 = [];
    var __reg7 = ["归属", "人口", "壮丁", "士兵", "士兵上限", "训练", "税收", "寺庙", "市集", "城墙", "衙门", "义仓", "校场", "民心", "行宫", "等级", "方针", "金钱", "防御", "治安", "安定", "积粮", "运输", "体能", "普查间隔", "建设开关", "升级开关", "妃子开关", "备用开关", "特殊开关", "牧业开发度", "农业开发度", "商业开发度", "矿业开发度", "士兵上限"];
    __reg6 = 0;
    while (__reg6 < 所有城池.length) 
    {
        var __reg8 = 所有城池[__reg6];
        var __reg5 = {};
        var __reg3 = 0;
        while (__reg3 < __reg7.length) 
        {
            var __reg4 = __reg7[__reg3];
            __reg5[__reg4] = __reg8[__reg4];
            ++__reg3;
        }
        __reg14.push(__reg5);
        ++__reg6;
    }
    var __reg11 = {};
    __reg7 = ["名字", "年号", "年龄", "健康", "体力", "体力上限", "征税", "快乐", "威望", "武术", "文学", "魅力", "智慧", "暴戾", "道德", "才艺", "寿命", "大殿", "丹药", "饱食度", "负数时间", "丹药列表", "后宫", "当前时辰", "人才顺序", "后宫频率", "安全度", "战报", "战斗队伍", "生病次数", "祭祀", "炼制丹药", "后宫册封", "冷宫执行", "子女会见", "宴会", "打猎", "微服", "出战", "难度"];
    __reg8 = 主角;
    __reg3 = 0;
    while (__reg3 < __reg7.length) 
    {
        __reg4 = __reg7[__reg3];
        __reg11[__reg4] = __reg8[__reg4];
        ++__reg3;
    }
    __reg6 = 0;
    while (__reg6 < 100) 
    {
        __reg11["事件" + __reg6] = 主角["事件" + __reg6];
        ++__reg6;
    }
    var __reg12 = [];
    __reg7 = ["id", "名字", "武术", "智慧", "清廉", "野心", "忠诚", "年龄", "经验", "爵位", "类", "城", "地位"];
    __reg6 = 0;
    while (__reg6 < 所有人才.length) 
    {
        __reg8 = 所有人才[__reg6];
        __reg5 = {};
        __reg3 = 0;
        while (__reg3 < __reg7.length) 
        {
            __reg4 = __reg7[__reg3];
            if (__reg4 == "城") 
            {
                if (__reg8[__reg4] === "") 
                {
                    __reg5[__reg4] = "";
                }
                else if (typeof __reg8[__reg4] == "object") 
                {
                    __reg5[__reg4] = __reg8[__reg4].id;
                }
                else 
                {
                    __reg5[__reg4] = "";
                }
            }
            else 
            {
                __reg5[__reg4] = __reg8[__reg4];
            }
            ++__reg3;
        }
        __reg12.push(__reg5);
        ++__reg6;
    }
    var __reg13 = [];
    __reg7 = ["id", "名称", "性别", "母亲", "年龄", "婚", "封号", "性情"];
    __reg6 = 0;
    while (__reg6 < 所有子女数据.length) 
    {
        __reg8 = 所有子女数据[__reg6];
        __reg5 = {};
        __reg3 = 0;
        while (__reg3 < __reg7.length) 
        {
            __reg4 = __reg7[__reg3];
            __reg5[__reg4] = __reg8[__reg4];
            ++__reg3;
        }
        __reg13.push(__reg5);
        ++__reg6;
    }
    var __reg15 = [];
    __reg7 = ["士兵", "状态", "联姻", "外交", "友好度", "贸易额", "贸易年数"];
    __reg6 = 0;
    while (__reg6 < 阵营.length) 
    {
        __reg8 = 阵营[__reg6];
        __reg5 = {};
        __reg3 = 0;
        while (__reg3 < __reg7.length) 
        {
            __reg4 = __reg7[__reg3];
            __reg5[__reg4] = __reg8[__reg4];
            ++__reg3;
        }
        __reg5.城 = [];
        __reg15.push(__reg5);
        ++__reg6;
    }
    var __reg17 = _root.主角.名字 + " " + _root.主角.年号 + " " + 年 + "年" + 季节 + "季 " + 旬;
    var __reg10 = new Object();
    __reg10.列表 = __reg9;
    __reg10.标题 = __reg17;
    __reg6 = 0;
    while (__reg6 < __reg9.length) 
    {
        __reg10[__reg9[__reg6]] = _root[__reg9[__reg6]];
        ++__reg6;
    }
    __reg10.城池副本存档 = __reg14;
    __reg10.主角副本存档 = __reg11;
    __reg10.人才副本存档 = __reg12;
    __reg10.子女副本存档 = __reg13;
    __reg10.阵营副本存档 = __reg15;
    var __reg18 = JSON.stringify(__reg10);
    var __reg16 = SharedObject.getLocal("HuangDi");
    __reg16.data.存档 = __reg18;
    __reg16.flush(500000);
    _root.存储的带下啊啊啊 = Math.round(__reg16.getSize() * 0.001) + " k";
    等待存档的进度(存储的带下啊啊啊 + "本游戏存档较大，请等待一下。", 140);
    _global.bridge.saveData(__reg17, __reg18, _root, 存档成功a, ui, index);
}
function 存档成功了啊()
{
    内侍面板.removeMovieClip();
    var __reg3 = _root.紫辰殿面板.attachMovie("丞相的说话", "丞相的说话", 6800, {_x: 142, _y: 55});
    __reg3.文本.text = "已吩咐史官记录。";
    __reg3.时间 = 74;
    __reg3.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 < 0) 
        {
            this._alpha = this._alpha - 10;
            if (this._alpha < 0) 
            {
                this.removeMovieClip();
            }
        }
    }
    ;
    刷新阵营几城的程序();
}
function 执行覆盖档案的动作(Data)
{
    var __reg14 = Data.列表;
    var __reg4 = 0;
    while (__reg4 < Data.列表.length) 
    {
        _root[Data.列表[__reg4]] = Data[Data.列表[__reg4]];
        ++__reg4;
    }
    var __reg11 = [];
    __reg4 = 0;
    while (__reg4 < 存档的人才剩余.length) 
    {
        __reg11.push(所有历史名人[Data.存档的人才剩余[__reg4]]);
        ++__reg4;
    }
    所有历史名人 = __reg11;
    var __reg12 = [];
    __reg4 = 0;
    while (__reg4 < 存档的后宫剩余.length) 
    {
        __reg12.push(后宫名人[Data.存档的后宫剩余[__reg4]]);
        ++__reg4;
    }
    后宫名人 = __reg12;
    var __reg8 = ["归属", "人口", "壮丁", "士兵", "士兵上限", "训练", "税收", "寺庙", "市集", "城墙", "衙门", "义仓", "校场", "民心", "行宫", "等级", "方针", "金钱", "防御", "治安", "安定", "积粮", "运输", "体能", "普查间隔", "建设开关", "升级开关", "妃子开关", "备用开关", "特殊开关", "牧业开发度", "农业开发度", "商业开发度", "矿业开发度", "士兵上限"];
    __reg4 = 0;
    while (__reg4 < 所有城池.length) 
    {
        var __reg9 = 所有城池[__reg4];
        var __reg10 = Data.城池副本存档[__reg4];
        var __reg3 = 0;
        while (__reg3 < __reg8.length) 
        {
            var __reg5 = __reg8[__reg3];
            __reg9[__reg5] = __reg10[__reg5];
            ++__reg3;
        }
        ++__reg4;
    }
    __reg8 = ["士兵", "状态", "联姻", "外交", "友好度", "贸易额", "贸易年数"];
    __reg4 = 0;
    while (__reg4 < 阵营.length) 
    {
        var __reg7 = 阵营[__reg4];
        __reg10 = Data.阵营副本存档[__reg4];
        __reg3 = 0;
        while (__reg3 < __reg8.length) 
        {
            __reg5 = __reg8[__reg3];
            __reg7[__reg5] = __reg10[__reg5];
            ++__reg3;
        }
        __reg7.城 = [];
        ++__reg4;
    }
    刷新所有的阵营数据();
    __reg8 = ["名字", "年号", "年龄", "健康", "体力", "体力上限", "征税", "快乐", "威望", "武术", "文学", "魅力", "智慧", "暴戾", "道德", "才艺", "寿命", "大殿", "丹药", "饱食度", "负数时间", "丹药列表", "后宫", "当前时辰", "人才顺序", "后宫频率", "安全度", "战报", "战斗队伍", "生病次数", "祭祀", "炼制丹药", "后宫册封", "冷宫执行", "子女会见", "宴会", "打猎", "微服", "出战", "难度"];
    __reg10 = Data.主角副本存档;
    __reg3 = 0;
    while (__reg3 < __reg8.length) 
    {
        __reg5 = __reg8[__reg3];
        主角[__reg5] = __reg10[__reg5];
        ++__reg3;
    }
    __reg4 = 0;
    while (__reg4 < 100) 
    {
        主角["事件" + __reg4] = __reg10["事件" + __reg4];
        ++__reg4;
    }
    所有人才 = [];
    __reg8 = ["id", "名字", "武术", "智慧", "清廉", "野心", "忠诚", "年龄", "经验", "爵位", "类", "城", "地位"];
    __reg4 = 0;
    while (__reg4 < Data.人才副本存档.length) 
    {
        __reg10 = Data.人才副本存档[__reg4];
        var __reg6 = {};
        __reg3 = 0;
        while (__reg3 < __reg8.length) 
        {
            __reg5 = __reg8[__reg3];
            if (__reg5 == "城") 
            {
                if (__reg10[__reg5] === "") 
                {
                    __reg6[__reg5] = "";
                }
                else if (typeof __reg10[__reg5] == "number") 
                {
                    __reg6[__reg5] = 所有城池[__reg10[__reg5]];
                }
                else 
                {
                    __reg6[__reg5] = "";
                }
            }
            else 
            {
                __reg6[__reg5] = __reg10[__reg5];
            }
            ++__reg3;
        }
        所有人才.push(__reg6);
        ++__reg4;
    }
    所有子女数据 = [];
    __reg8 = ["id", "名称", "性别", "母亲", "年龄", "婚", "封号", "性情"];
    __reg4 = 0;
    while (__reg4 < Data.子女副本存档.length) 
    {
        __reg10 = Data.子女副本存档[__reg4];
        __reg6 = {};
        __reg3 = 0;
        while (__reg3 < __reg8.length) 
        {
            __reg5 = __reg8[__reg3];
            __reg6[__reg5] = __reg10[__reg5];
            ++__reg3;
        }
        所有子女数据.push(__reg6);
        ++__reg4;
    }
    __reg4 = 0;
    while (__reg4 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg4].名字 == "undefined") 
        {
            主角.后宫[__reg4].名字 = undefined;
        }
        if (主角.后宫[__reg4].id == "undefined") 
        {
            主角.后宫[__reg4].id = undefined;
        }
        if (主角.后宫[__reg4].特殊头像 == "undefined") 
        {
            主角.后宫[__reg4].特殊头像 = undefined;
        }
        ++__reg4;
    }
    if (主角.丹药列表 == "undefined") 
    {
        主角.丹药列表 = undefined;
    }
    if (主角.战斗队伍.胜负 == "undefined") 
    {
        主角.战斗队伍.胜负 = undefined;
    }
    主角.寿命 = 主角.寿命 - 4;
    太监报告所有事件 = [];
    出现的固定事件 = [];
    _root.太监报告事情的图形.removeMovieClip();
    _root.故宫背景.removeMovieClip();
    太监说话的程序(4, Data.标题 + "\n皇上，欢迎回来。");
    更新季节的程序呢();
    更新皇宫背景图的程序();
    更新所有主要职位的人();
    更新资料();
    每月的奏折._visible = false;
    var __reg13 = 收支表程序();
    _root.小提示("读档完毕。" + __reg13);
}
function 存档成功a(eee)
{
    内侍面板.removeMovieClip();
    if (eee) 
    {
        等待存档的进度("需要传输存档：" + _root.存储的带下啊啊啊 + "。本游存档较大，请等待一会。", 100);
        __reg3 = _root.紫辰殿面板.attachMovie("丞相的说话", "丞相的说话", 6800, {_x: 142, _y: 55});
        __reg3.文本.text = "已吩咐史官记录。";
        __reg3.时间 = 74;
        __reg3.onEnterFrame = function ()
        {
            --this.时间;
            if (this.时间 < 0) 
            {
                this._alpha = this._alpha - 10;
                if (this._alpha < 0) 
                {
                    this.removeMovieClip();
                }
            }
        }
        ;
    }
    else 
    {
        var __reg3 = _root.紫辰殿面板.attachMovie("丞相的说话", "丞相的说话", 6800, {_x: 142, _y: 55});
        __reg3.文本.text = "通信异常，存档失败。请检查网络。";
        __reg3.时间 = 74;
        __reg3.onEnterFrame = function ()
        {
            --this.时间;
            if (this.时间 < 0) 
            {
                this._alpha = this._alpha - 10;
                if (this._alpha < 0) 
                {
                    this.removeMovieClip();
                }
            }
        }
        ;
    }
    刷新阵营几城的程序();
}
function 输出面板程序a(对象)
{
    var __reg2 = _root.attachMovie("输出面板", "输出面板", 912132, {_x: 0, _y: 0});
    __reg2.文本.text = 对象;
}
_global.bridge.closePanelCallBack(_root, 完毕面板后执行);

//  Action tag #4

function 招揽民夫面板()
{
    if (主角.招募民夫 == 1) 
    {
        小提示("本季已进行过招募民夫");
        return;
    }
    _root.大殿.attachMovie("数值拉动条", "招揽民夫的面板", 1000, {_x: 0, _y: 0});
    执行数值拉动(_root.大殿.招揽民夫的面板, 1);
}
function 招募士兵面板()
{
    if (主角.招募士兵 == 1) 
    {
        小提示("本季已进行过招募士兵");
        return;
    }
    _root.大殿.attachMovie("数值拉动条", "招募士兵的面板", 1000, {_x: 0, _y: 0});
    执行数值拉动(_root.大殿.招募士兵的面板, 2);
}
function 调派地方函数()
{
    var __reg10 = _root.attachMovie("军事总表面板", "军事总表面板", 90000, {_x: 0, _y: 0});
    __reg10.文本.text = "启禀皇上：需要驻兵在哪个地区。\n";
    var __reg6 = [];
    var __reg5 = 0;
    while (__reg5 < 所有城池.length) 
    {
        if (所有城池[__reg5].归属 == 8) 
        {
            __reg6.push(所有城池[__reg5]);
        }
        ++__reg5;
    }
    var __reg11 = 4;
    var __reg12 = 12;
    var __reg3 = 0;
    var __reg7 = 0;
    while (__reg7 < __reg12) 
    {
        __reg5 = 0;
        while (__reg5 < __reg11) 
        {
            if (__reg3 < __reg6.length) 
            {
                var __reg4 = __reg10.attachMovie("补助小条", "补助小条" + __reg3, 112 + __reg3, {_x: __reg5 * 125 + 80, _y: __reg7 * 35 + 80});
                __reg4.文本.text = __reg6[__reg3].名称;
                __reg4.属性 = __reg6[__reg3];
                __reg4.an.onPress = function ()
                {
                    _root.进入调派部队面板(this._parent.属性);
                }
                ;
                ++__reg3;
            }
            ++__reg5;
        }
        ++__reg7;
    }
    __reg10.关闭.onRelease = function ()
    {
        _root.军事总表面板.removeMovieClip();
    }
    ;
}
function 进入调派部队面板(对象)
{
    var 调整税率面板 = _root.attachMovie("数值拉动条", "调整税率面板", 90000, {_x: 0, _y: 0});
    调整税率面板.文本.text = "启禀皇上：\n";
    调整税率面板.文本.text = 调整税率面板.文本.text + (对象.名称 + "当前该地区有驻军：" + Math.ceil(对象.士兵 / 10000) + "万民。");
    调整税率面板.长度 = Math.round(国家.士兵 / 10);
    调整税率面板.提示.text = "需要调拨多少部队：";
    调整税率面板.条._xscale = 0;
    var __reg5 = 0;
    NewDrag(调整税率面板.r.a);
    调整税率面板.r.a._x = 调整税率面板.r.a._x + 调整税率面板.条._width;
    调整税率面板.确定.onRelease = function ()
    {
        if (_root.调整税率面板.值 == 0) 
        {
            _root.小提示("没有做任何调整");
            return;
        }
        var __reg2 = 对象.名称;
        出圣旨("中央派遣兵士" + _root.调整税率面板.值 + "名，支援" + __reg2 + "地区防守。");
        国家.士兵 = 国家.士兵 - _root.调整税率面板.值;
        对象.士兵 = 对象.士兵 + _root.调整税率面板.值;
        删除之前的界面(调整税率面板);
        大殿体力扣除程序(30);
    }
    ;
    调整税率面板.取消.onRelease = function ()
    {
        _root.调整税率面板.removeMovieClip();
    }
    ;
}
function 卸甲归田面板()
{
    if (主角.卸甲归田 == 1) 
    {
        小提示("本季已进行过了");
        return;
    }
    _root.大殿.attachMovie("数值拉动条", "卸甲归田的面板", 1000, {_x: 0, _y: 0});
    执行数值拉动(_root.大殿.卸甲归田的面板, 3);
}
function 解雇民夫面板()
{
    if (主角.解雇民夫 == 1) 
    {
        小提示("本季已进行过了");
        return;
    }
    _root.大殿.attachMovie("数值拉动条", "解雇民夫的面板", 1000, {_x: 0, _y: 0});
    执行数值拉动(_root.大殿.解雇民夫的面板, 4);
}
function 调查经费函数()
{
    _root.attachMovie("户口普查面板", "调查经费的面板", 90000, {_x: 0, _y: 0});
    调查经费的面板.文本.text = "对朝廷官员进行搜证调查，可及时发现贪污和叛变的官员。";
    调查经费的面板.确定.onRelease = function ()
    {
        删除之前的界面(this._parent);
        调查经费选取();
    }
    ;
    调查经费的面板.取消.onRelease = function ()
    {
        删除之前的界面(this._parent);
    }
    ;
}
function 调查经费选取()
{
    _root.大殿.attachMovie("数值拉动条", "调查经费的面板", 1000, {_x: 0, _y: 0});
    执行数值拉动(_root.大殿.调查经费的面板, 5);
}
function 大赦函数()
{
    _root.attachMovie("户口普查面板", "大赦的面板", 90000, {_x: 0, _y: 0});
    大赦的面板.文本.text = "特赦天下有罪之人，能增加皇室的威望。但各地治安会降低，要实行吗?";
    大赦的面板.确定.onRelease = function ()
    {
        var __reg5 = 0;
        var __reg4 = [];
        var __reg3 = 0;
        while (__reg3 < 所有城池.length) 
        {
            if (_root.所有城池[__reg3].归属 == 8) 
            {
                __reg5 = __reg5 + 1;
                __reg4.push(_root.所有城池[__reg3]);
            }
            ++__reg3;
        }
        if (国家.犯人 > 1000) 
        {
            删除之前的界面(this._parent);
            出圣旨("皇上恩德披民，大赦天下。即刻各级牢房" + 国家.犯人 + "名犯人，释放回乡。");
            主角.威望 = 主角.威望 + 10;
            大殿体力扣除程序(40);
            var __reg6 = Math.ceil(国家.犯人 / __reg5);
            __reg3 = 0;
            while (__reg3 < __reg4.length) 
            {
                __reg4[__reg3].人口 = __reg4[__reg3].人口 + __reg6;
                __reg4[__reg3].民心 = __reg4[__reg3].民心 - 2;
                ++__reg3;
            }
            国家.犯人 = 0;
            return;
        }
        _root.小提示("天牢和各级牢房里犯人寥寥无几。");
    }
    ;
    大赦的面板.取消.onRelease = function ()
    {
        删除之前的界面(this._parent);
    }
    ;
}
function 强制征税函数()
{
    _root.attachMovie("户口普查面板", "强制征税面板", 90000, {_x: 0, _y: 0});
    强制征税面板.文本.text = "强制征税可使国库有额外收入，但易使地方不满，要加收税收吗?";
    强制征税面板.确定.onRelease = function ()
    {
        if (主角.征税 == 1) 
        {
            小提示("本季已多收税赋了");
            return;
        }
        出圣旨("由于国库金钱严重短缺，全国百姓应体恤国家之急需。每户额外增收特别税。请配合缴纳。");
        大殿体力扣除程序(20);
        删除之前的界面(_root.强制征税面板);
        var __reg2 = 0;
        while (__reg2 < 所有城池.length) 
        {
            if (所有城池[__reg2].归属 == 8) 
            {
                所有城池[__reg2].民心 = 所有城池[__reg2].民心 - 15;
            }
            ++__reg2;
        }
        主角.征税 = 1;
        var __reg3 = 收支表程序();
        if (__reg3 < 0) 
        {
            __reg3 = 50000;
        }
        国家.金钱 = 国家.金钱 + __reg3;
        更新资料();
    }
    ;
    强制征税面板.取消.onRelease = function ()
    {
        _root.强制征税面板.removeMovieClip();
    }
    ;
}
function 祭祀函数()
{
    _root.attachMovie("户口普查面板", "祭祀面板", 90000, {_x: 0, _y: 0});
    祭祀面板.文本.text = "祭祀能消弥灾难，祈求风调雨顺。要举行吗?";
    祭祀面板.确定.onRelease = function ()
    {
        if (主角.祭祀活动 == 0) 
        {
            出圣旨("朕将于午后王天坛祭祀天地，祈求风调雨顺，消灾解难。");
            大殿体力扣除程序(70);
            删除之前的界面(_root.祭祀面板);
            主角.祭祀活动 = 1;
            return;
        }
        _root.小提示("已在操办祭祀事宜。");
    }
    ;
    祭祀面板.取消.onRelease = function ()
    {
        删除之前的界面(_root.祭祀面板);
    }
    ;
}
function 祭祀活动举行()
{
    _root.attachMovie("太监说话", "说早上好", 2382, {_x: 0, _y: 0});
    说早上好.文本.text = "祭祀活动已准备好了，请皇上亲临主祭。";
    说早上好.人.gotoAndStop(4);
    说早上好.继续.onRelease = function ()
    {
        祭祀活动开始咯();
        this._parent.removeMovieClip();
    }
    ;
}
function 祭祀活动开始咯()
{
    var 祭祀面板 = _root.attachMovie("祭祀事件图", "祭祀面板", 90000, {_x: 0, _y: 0});
    祭祀面板.文本.text = "祈求上苍保佑我国风调雨顺，国泰民安。";
    祭祀面板.继续.onPress = function ()
    {
        删除之前的界面(祭祀面板);
        主角.祭祀 = 4 + random(4);
        时辰推进();
    }
    ;
}
function 户口普查函数()
{
    _root.attachMovie("户口普查面板", "户口普查面板", 90000, {_x: 0, _y: 0});
    户口普查面板.文本.text = "户口普查能整顿全国户口，查明流浪人归籍。\n需要5000两经费，要执行吗?";
    户口普查面板.确定.onRelease = function ()
    {
        var __reg3 = 0;
        var __reg4 = 0;
        var __reg2 = 0;
        while (__reg2 < 所有城池.length) 
        {
            if (所有城池[__reg2].归属 == 8) 
            {
                __reg3 = 所有城池[__reg2].普查间隔;
                __reg4 = __reg4 + 1;
                break;
            }
            ++__reg2;
        }
        if (__reg3 <= 0) 
        {
            小提示("无法重复操作");
            return;
        }
        __reg2 = 0;
        while (__reg2 < 所有城池.length) 
        {
            if (所有城池[__reg2].归属 == 8) 
            {
                所有城池[__reg2].普查间隔 = 0;
                所有城池[__reg2].壮丁 = 所有城池[__reg2].壮丁 + Math.round(__reg3 / __reg4);
            }
            ++__reg2;
        }
        出圣旨("为整顿户口，查明流浪人归籍，实行户口普查。全国百姓配合官员查访。");
        国库钱数变动的程序(-5000);
        大殿体力扣除程序(20);
        删除之前的界面(_root.户口普查面板);
        更新资料();
    }
    ;
    户口普查面板.取消.onRelease = function ()
    {
        _root.户口普查面板.removeMovieClip();
    }
    ;
}
function 户口普查结果(数值)
{
};
function 调整税率函数()
{
    _root.attachMovie("数值拉动条", "调整税率面板", 90000, {_x: 0, _y: 0});
    调整税率面板.长度 = 50;
    调整税率面板.文本.text = "调整需谨慎，过高的税率会让百姓不满。\n当前税率：" + 国家.税率;
    调整税率面板.提示.text = "需要调整到税率多少";
    调整税率面板.条._xscale = 国家.税率;
    var 当前税率 = 国家.税率;
    NewDrag(调整税率面板.r.a);
    调整税率面板.r.a._x = 调整税率面板.r.a._x + 调整税率面板.条._width;
    调整税率面板.确定.onRelease = function ()
    {
        if (_root.调整税率面板.值 == undefined) 
        {
            _root.小提示("请拉动红条操作");
            return;
        }
        if (_root.调整税率面板.值 == 当前税率) 
        {
            _root.小提示("没有做任何调整");
            return;
        }
        if (_root.调整税率面板.值 < 当前税率) 
        {
            出圣旨("为减轻全国百姓的负担，特将税赋由原来的" + 当前税率 + "降为" + _root.调整税率面板.值 + "。皇上隆恩披泽，乃国家之福。");
            大殿体力扣除程序(5);
        }
        else 
        {
            出圣旨("为加强地方建设，促进社会发展。需增加国库收入，特将税赋由原来的" + 当前税率 + "升为" + _root.调整税率面板.值 + "，请按期交纳。");
            大殿体力扣除程序(10);
        }
        国家.税率 = _root.调整税率面板.值;
        删除之前的界面(_root.调整税率面板);
    }
    ;
    调整税率面板.取消.onRelease = function ()
    {
        _root.调整税率面板.removeMovieClip();
    }
    ;
}
function 加强训练函数()
{
    _root.attachMovie("户口普查面板", "加强训练的面板", 90000, {_x: 0, _y: 0});
    加强训练的面板.文本.text = "要加强中央军的训练速度吗?当前训练度：" + 国家.训练;
    加强训练的面板.确定.onRelease = function ()
    {
        if (国家.训练周期 == 0) 
        {
            国家.训练周期 = 1;
            删除之前的界面(_root.加强训练的面板);
            遵旨函数("是。\n臣立刻去办");
            国家.训练 = 国家.训练 + 2;
            if (国家.训练 > 100) 
            {
                国家.训练 = 100;
            }
            大殿体力扣除程序(10);
            return;
        }
        _root.小提示("军队已按原计划正在训练");
    }
    ;
    加强训练的面板.取消.onRelease = function ()
    {
        _root.加强训练的面板.removeMovieClip();
    }
    ;
}
function 长期训练函数()
{
    _root.attachMovie("户口普查面板", "长期训练的面板", 90000, {_x: 0, _y: 0});
    长期训练的面板.文本.text = "要让中央军进行一年长期的特别训练吗?当前训练度：" + 国家.训练;
    长期训练的面板.确定.onRelease = function ()
    {
        if (国家.训练周期 == 0) 
        {
            国家.训练周期 = 8;
            删除之前的界面(_root.长期训练的面板);
            遵旨函数("是。\n臣立刻去办");
            大殿体力扣除程序(10);
            return;
        }
        _root.小提示("军队已按原计划正在训练");
    }
    ;
    长期训练的面板.取消.onRelease = function ()
    {
        _root.长期训练的面板.removeMovieClip();
    }
    ;
}
function 安全检视函数()
{
    _root.attachMovie("户口普查面板", "安全检视的面板", 90000, {_x: 0, _y: 0});
    安全检视的面板.文本.text = "要加强京城的安全工作吗?";
    安全检视的面板.确定.onRelease = function ()
    {
        if (主角.安全检视 == 0) 
        {
            主角.安全检视 = 1;
            删除之前的界面(_root.安全检视的面板);
            遵旨函数("是。\n臣立刻去办");
            大殿体力扣除程序(10);
            _root.主角.安全度 = 0;
            return;
        }
        _root.小提示("侍卫已经开始在京城进行排查");
    }
    ;
    安全检视的面板.取消.onRelease = function ()
    {
        _root.安全检视的面板.removeMovieClip();
    }
    ;
}
function 查军事明细()
{
    _root.attachMovie("军事明细表", "军事明细表", 90000, {_x: 0, _y: 0});
    var 先获得数据 = [];
    var __reg3 = 0;
    while (__reg3 < 所有城池.length) 
    {
        if (所有城池[__reg3].归属 == 8) 
        {
            先获得数据.push([所有城池[__reg3]]);
        }
        ++__reg3;
    }
    __reg3 = 0;
    while (__reg3 < 所有人才.length) 
    {
        var __reg2 = 0;
        while (__reg2 < 先获得数据.length) 
        {
            if (0 != (0 != (所有人才[__reg3].城.id == 先获得数据[__reg2][0].id) & 0 != (先获得数据[__reg2].length == 1)) & 0 != (所有人才[__reg3].类 == "总兵")) 
            {
                先获得数据[__reg2].push(所有人才[__reg3]);
            }
            ++__reg2;
        }
        ++__reg3;
    }
    军事明细表.页 = 1;
    军事明细表.页上限 = Math.floor((先获得数据.length - 1) / 10);
    翻开军事明细页的函数(先获得数据);
    军事明细表.上.onRelease = function ()
    {
        if (_root.军事明细表.页 > 1) 
        {
            --_root.军事明细表.页;
            翻开军事明细页的函数(先获得数据);
        }
    }
    ;
    军事明细表.下.onRelease = function ()
    {
        if (_root.军事明细表.页 < _root.军事明细表.页上限) 
        {
            ++_root.军事明细表.页;
            翻开军事明细页的函数(先获得数据);
        }
    }
    ;
    军事明细表.关闭.onRelease = function ()
    {
        _root.军事明细表.removeMovieClip();
    }
    ;
}
function 翻开军事明细页的函数(先获得数据)
{
    var __reg2 = (军事明细表.页 - 1) * 10;
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 10) 
        {
            return;
        }
        if (先获得数据[__reg1 + __reg2] == undefined) 
        {
            军事明细表["州府" + __reg1].text = "";
            军事明细表["总兵" + __reg1].text = "";
            军事明细表["士兵" + __reg1].text = "";
            军事明细表["朴刀" + __reg1].text = "";
            军事明细表["皮甲" + __reg1].text = "";
            军事明细表["战马" + __reg1].text = "";
            军事明细表["铁炮" + __reg1].text = "";
            军事明细表["训练度" + __reg1].text = "";
        }
        else 
        {
            军事明细表["州府" + __reg1].text = 先获得数据[__reg1 + __reg2][0].名称;
            军事明细表["总兵" + __reg1].text = 先获得数据[__reg1 + __reg2][1].名字;
            军事明细表["士兵" + __reg1].text = Math.round(先获得数据[__reg1 + __reg2][0].士兵 / 10000) + "万";
            军事明细表["朴刀" + __reg1].text = Math.round(先获得数据[__reg1 + __reg2][0].朴刀 / 10000) + "万";
            军事明细表["皮甲" + __reg1].text = Math.round(先获得数据[__reg1 + __reg2][0].皮甲 / 10000) + "万";
            军事明细表["战马" + __reg1].text = Math.round(先获得数据[__reg1 + __reg2][0].战马 / 10000) + "万";
            军事明细表["铁炮" + __reg1].text = Math.round(先获得数据[__reg1 + __reg2][0].铁炮 / 10000) + "万";
            军事明细表["训练度" + __reg1].text = 先获得数据[__reg1 + __reg2][0].训练;
        }
        ++__reg1;
    }
}
function 军事总表()
{
    _root.attachMovie("军事总表面板2", "军事总表面板", 90000, {_x: 0, _y: 0});
    var __reg3 = 0;
    军事总表面板.文本.text = "";
    军事总表面板.文本.text = 军事总表面板.文本.text + "启禀皇上：\n";
    军事总表面板.文本.text = 军事总表面板.文本.text + ("中央军队一共" + Math.round(国家.士兵 / 10000) + "万名。训练度：" + 国家.训练);
    __reg3 = __reg3 + 国家.士兵;
    军事总表面板.文本.text = 军事总表面板.文本.text + ("\n中央武器库中朴刀" + Math.round(国家.朴刀 / 10000) + "万把。\n皮甲" + Math.round(国家.皮甲 / 10000) + "万件。\n战马" + Math.round(国家.战马 / 10000) + "万匹。\n铁炮" + Math.round(国家.铁炮 / 10000) + "万挺。");
    军事总表面板.文本.text = 军事总表面板.文本.text + "\n\n各地士兵情况：";
    var __reg2 = 0;
    while (__reg2 < 所有城池.length) 
    {
        if (所有城池[__reg2].归属 == 8) 
        {
            军事总表面板.文本.text = 军事总表面板.文本.text + (所有城池[__reg2].名称 + "兵" + Math.round(所有城池[__reg2].士兵 / 10000) + "万名。\n");
            __reg3 = __reg3 + 所有城池[__reg2].士兵;
        }
        ++__reg2;
    }
    军事总表面板.文本.text = 军事总表面板.文本.text + ("\n\n全国总兵力" + Math.round(__reg3 / 10000) + "万名。");
    军事总表面板.关闭.onRelease = function ()
    {
        _root.军事总表面板.removeMovieClip();
    }
    ;
}
function 外交外贸的总表()
{
    var __reg4 = 刷新外交();
    _root.attachMovie("外交外贸", "外交总表", 90000, {_x: 0, _y: 0});
    外交总表.关闭.onRelease = function ()
    {
        _root.外交总表.removeMovieClip();
    }
    ;
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 10) 
        {
            return;
        }
        if (0 != (__reg2 == 8) | 0 != (__reg4[__reg2].城.length == 0)) 
        {
            外交总表["名称" + __reg2].text = "";
            外交总表["关系" + __reg2].text = "";
            外交总表["土地" + __reg2].text = "";
            外交总表["人口" + __reg2].text = "";
            外交总表["贸易" + __reg2].text = "";
            外交总表["州府" + __reg2].text = "";
        }
        else 
        {
            var __reg5 = 0;
            var __reg6 = 0;
            var __reg3 = 0;
            while (__reg3 < __reg4[__reg2].城.length) 
            {
                __reg6 = __reg6 + __reg4[__reg2].城[__reg3].士兵;
                __reg5 = __reg5 + __reg4[__reg2].城[__reg3].人口;
                ++__reg3;
            }
            外交总表["名称" + __reg2].text = __reg4[__reg2].名称;
            外交总表["关系" + __reg2].text = __reg4[__reg2].友好度;
            外交总表["土地" + __reg2].text = "--";
            外交总表["人口" + __reg2].text = Math.round(__reg5 / 10000) + "万";
            外交总表["贸易" + __reg2].text = __reg4[__reg2].贸易额;
            外交总表["州府" + __reg2].text = __reg4[__reg2].贸易年数;
        }
        ++__reg2;
    }
}
function 外交的总表()
{
    var __reg3 = 刷新外交();
    _root.attachMovie("外交总表", "外交总表", 90000, {_x: 0, _y: 0});
    外交总表.关闭.onRelease = function ()
    {
        _root.外交总表.removeMovieClip();
    }
    ;
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 10) 
        {
            return;
        }
        if (0 != (__reg2 == 8) | 0 != (__reg3[__reg2].城.length == 0)) 
        {
            外交总表["名称" + __reg2].text = "";
            外交总表["关系" + __reg2].text = "";
            外交总表["土地" + __reg2].text = "";
            外交总表["人口" + __reg2].text = "";
            外交总表["装备" + __reg2].text = "";
            外交总表["士兵" + __reg2].text = "";
            外交总表["联姻" + __reg2].text = "";
            外交总表["州府" + __reg2].text = "";
        }
        else 
        {
            var __reg4 = 0;
            var __reg5 = 0;
            f = 0;
            while (f < __reg3[__reg2].城.length) 
            {
                __reg5 = __reg5 + __reg3[__reg2].城[f].士兵;
                __reg4 = __reg4 + __reg3[__reg2].城[f].人口;
                ++f;
            }
            外交总表["名称" + __reg2].text = __reg3[__reg2].名称;
            外交总表["关系" + __reg2].text = 外交状态[__reg3[__reg2].外交];
            外交总表["土地" + __reg2].text = "--";
            外交总表["人口" + __reg2].text = Math.round(__reg4 / 10000) + "万";
            外交总表["装备" + __reg2].text = "--";
            外交总表["士兵" + __reg2].text = "--";
            外交总表["联姻" + __reg2].text = __reg3[__reg2].联姻;
            外交总表["州府" + __reg2].text = __reg3[__reg2].城.length;
        }
        ++__reg2;
    }
}
function 观景台()
{
    var __reg17 = [];
    var __reg11 = _root.attachMovie("观景台图", "观景台图", 220, {_x: 0, _y: 0});
    if (主角.威望 > 20) 
    {
        var __reg13 = Math.round(主角.威望 / 20);
        观景台图.提示小文本.text = "城楼下膜拜的百姓数量：" + __reg13 * 5 + "名。";
        if (__reg13 > 60) 
        {
            __reg13 = 60;
        }
        var __reg5 = 0;
        var __reg15 = 5;
        var __reg12 = 12;
        var __reg8 = [];
        var __reg7 = 0;
        while (__reg7 < __reg15) 
        {
            var __reg3 = 0;
            while (__reg3 < __reg12) 
            {
                var __reg2 = __reg11.attachMovie("膜拜小人", "人" + __reg5, 200 + __reg5, {_x: __reg7 * 40 + 230, _y: __reg3 * 23 + 50});
                __reg2.gotoAndStop(random(20) + 1);
                var __reg4 = __reg3 * 5 + 80;
                __reg2._xscale = __reg4;
                __reg2._yscale = __reg4;
                var __reg6 = random(11) - 5;
                __reg2._x = __reg2._x + __reg6;
                __reg2.forceSmoothing = true;
                __reg2._visible = false;
                __reg8.push(__reg2);
                ++__reg5;
                ++__reg3;
            }
            ++__reg7;
        }
        __reg8.sort(打乱数组程序);
        var __reg14 = [];
        __reg7 = 0;
        while (__reg7 < __reg13) 
        {
            __reg14.push(__reg8[__reg7]);
            __reg8[__reg7]._visible = true;
            ++__reg7;
        }
        var __reg16 = __reg11.createEmptyMovieClip("对话", 9000);
        观景台对话程序(__reg16, __reg14);
    }
    else 
    {
        观景台图.提示小文本.text = "城楼下一个人都没有，看来国威低落到极点了。";
    }
    观景台图.提示小文本.text = "城楼下膜拜的百姓数量：" + __reg13 * 5 + "名。";
}
function 整理膜拜深度(对象)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 对象.length) 
        {
            return;
        }
        对象[__reg1].swapDepths(对象[__reg1]._y);
        ++__reg1;
    }
}
function 观景台对话程序(对话, 出现的人)
{
    var 对话内容 = ["万岁", "万岁", "万岁", "万万岁", "我爱你", "偶像", "皇上最棒", "崇拜", "万岁万岁万万岁", "敬仰"];
    对话.时间 = 38;
    对话.onEnterFrame = function ()
    {
        ++this.时间;
        if (this.时间 % 40 == 0) 
        {
            出现观景台对话信息(出现的人, 对话内容);
        }
    }
    ;
}
function 出现观景台对话信息(出现的人, 对话内容)
{
    var __reg2 = 出现的人[random(出现的人.length)];
    var __reg4 = 对话内容[random(对话内容.length)];
    var __reg3 = __reg2._parent.attachMovie("观景台小对话", "观景台小对话", 5000, {_x: __reg2._x, _y: __reg2._y - __reg2._height});
    __reg3.文本.text = __reg4;
    __reg3.时间 = 0;
    __reg3.onEnterFrame = function ()
    {
        ++this.时间;
        if (this.时间 >= 30) 
        {
            this._alpha = this._alpha - 20;
            if (this._alpha <= 0) 
            {
                this.removeMovieClip();
            }
        }
    }
    ;
}

//  Action tag #5

function 开科考试函数()
{
    if (主角.开科考试 == 0) 
    {
        _root.attachMovie("户口普查面板", "开科考试的面板", 90000, {_x: 0, _y: 0});
        开科考试的面板.文本.text = "由皇上亲自制举?可招揽人才为朝廷效力。要举行开科考试吗?";
        开科考试的面板.确定.onRelease = function ()
        {
            主角.开科考试 = 1;
            删除之前的界面(_root.开科考试的面板);
            遵旨函数("是。\n臣立刻去办");
            大殿体力扣除程序(30);
        }
        ;
        开科考试的面板.取消.onRelease = function ()
        {
            删除之前的界面(this._parent);
        }
        ;
        return;
    }
    _root.小提示("开科考试已在准备，午后进行。");
}
function 科举处理()
{
    _root.attachMovie("太监说话", "说早上好", 2382, {_x: 0, _y: 0});
    说早上好.文本.text = "考生已到达考场，请移驾考场。";
    说早上好.人.gotoAndStop(4);
    说早上好.继续.onRelease = function ()
    {
        开始科考咯();
        this._parent.removeMovieClip();
    }
    ;
}
function 开始科考咯()
{
    _root.attachMovie("科举考试", "科举考试", 90000, {_x: 0, _y: 0});
    科举考试.gotoAndStop(1);
    科举考试.文本.text = "本次制举选拔人才十四名，\n考生应试项目为文科与武科";
    临时科举 = [];
    var __reg3 = 0;
    while (__reg3 < 14) 
    {
        var __reg4 = random(40);
        if (0 != (0 != (__reg4 == 0) & 0 != 所有历史名人.length > 0) & 0 != 主角.魅力 > 150) 
        {
            __reg2 = 创建人才("赋闲", 0, undefined, 1, 1);
            让这个人才变成名人(__reg2);
            临时科举.push(__reg2);
        }
        else 
        {
            var __reg2 = 创建人才("赋闲", 0, undefined, 1, 1);
            if (_root.主角.智慧 > 100) 
            {
                __reg2.智慧 = __reg2.智慧 + random((_root.主角.智慧 - 100) / 100 * 4);
                if (__reg2.智慧 > 89) 
                {
                    __reg2.智慧 = 89;
                }
            }
            if (_root.主角.武术 > 100) 
            {
                __reg2.武术 = __reg2.武术 + random((_root.主角.武术 - 100) / 100 * 4);
                if (__reg2.武术 > 89) 
                {
                    __reg2.武术 = 89;
                }
            }
            if (_root.主角.道德 > 100) 
            {
                __reg2.清廉 = __reg2.清廉 + random((_root.主角.道德 - 100) / 100 * 4);
                if (__reg2.清廉 > 89) 
                {
                    __reg2.清廉 = 89;
                }
            }
            if (_root.主角.魅力 > 100) 
            {
                __reg2.忠诚 = __reg2.忠诚 + random((_root.主角.魅力 - 100) / 100 * 4);
                if (__reg2.忠诚 > 89) 
                {
                    __reg2.忠诚 = 89;
                }
            }
            临时科举.push(__reg2);
        }
        ++__reg3;
    }
    科举考试.确定.onRelease = function ()
    {
        _root.科举考试.gotoAndStop(2);
        提交科举所有(_root.科举考试, 临时科举);
        _root.科举考试.决定.onRelease = function ()
        {
            决定选择谁金榜题名(_root.科举考试, 临时科举);
        }
        ;
    }
    ;
}
function 决定选择谁金榜题名(路径, 对象)
{
    var __reg3 = [];
    var __reg1 = 0;
    while (__reg1 < 对象.length) 
    {
        if (路径.表["人才" + __reg1 + "选择"]._currentframe == 2) 
        {
            __reg3.push(对象[__reg1].名字);
            所有人才.push(对象[__reg1]);
        }
        ++__reg1;
    }
    if (__reg3.length == 0) 
    {
        出圣旨("本期考试结束，无人中举。");
    }
    else 
    {
        出圣旨("本期举办的制举考试圆满结束，金榜题名者有：" + __reg3);
    }
    删除之前的界面(科举考试);
    时辰推进();
}
function 提交科举所有(路径, 对象)
{
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 对象.length) 
        {
            return;
        }
        路径.表["人才" + __reg2 + "名字"].text = 对象[__reg2].名字;
        路径.表["人才" + __reg2 + "年龄"].text = 对象[__reg2].年龄;
        路径.表["人才" + __reg2 + "智慧"].text = 对象[__reg2].智慧;
        路径.表["人才" + __reg2 + "武术"].text = 对象[__reg2].武术;
        路径.表["人才" + __reg2 + "清廉"].text = 对象[__reg2].清廉;
        路径.表["人才" + __reg2 + "选择"].gotoAndStop(1);
        路径.表["人才" + __reg2 + "选择"].按.onRelease = function ()
        {
            if (this._parent._currentframe == 1) 
            {
                this._parent.gotoAndStop(2);
                return;
            }
            this._parent.gotoAndStop(1);
        }
        ;
        ++__reg2;
    }
}
function 让这个人才变成名人(人才)
{
    var __reg1 = random(所有历史名人.length);
    人才.名字 = 所有历史名人[__reg1].名称;
    人才.智慧 = 所有历史名人[__reg1].智慧;
    人才.武术 = 所有历史名人[__reg1].武术;
    人才.清廉 = 所有历史名人[__reg1].清廉;
    人才.野心 = 所有历史名人[__reg1].野心;
    所有历史名人.splice(__reg1, 1);
}
function 封爵面板()
{
    _root.attachMovie("官员调动面板", "官员调动面板", 90000);
    var 临时官员数据 = 整理官员显示用数据(0);
    官员调动面板.标题.text = "皇上想对谁封爵";
    _root.官员调动面板.页 = 1;
    官员页翻页(_root.官员调动面板, 临时官员数据, _root.官员调动面板.页);
    给谁封爵(临时官员数据);
    官员调动面板.取消.onRelease = function ()
    {
        _root.官员调动面板.removeMovieClip();
    }
    ;
    官员调动面板.页上限 = Math.floor(临时官员数据.length / 8);
    官员调动面板.上.onRelease = function ()
    {
        if (_root.官员调动面板.页 > 1) 
        {
            _root.官员调动面板.页 = _root.官员调动面板.页 - 1;
            官员页翻页(_root.官员调动面板, 临时官员数据, _root.官员调动面板.页);
            给谁封爵(临时官员数据);
        }
    }
    ;
    官员调动面板.下.onRelease = function ()
    {
        if (_root.官员调动面板.页 <= _root.官员调动面板.页上限) 
        {
            _root.官员调动面板.页 = _root.官员调动面板.页 + 1;
            官员页翻页(_root.官员调动面板, 临时官员数据, _root.官员调动面板.页);
            给谁封爵(临时官员数据);
        }
    }
    ;
}
function 给谁封爵(对象)
{
    var __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= 8) 
        {
            return;
        }
        官员调动面板["选择" + __reg3].按.onRelease = function ()
        {
            var 目标 = this._parent.记录[0];
            if (目标.爵位 == "驸") 
            {
                var 不让封爵 = _root.attachMovie("不让封爵", "封什么爵位呢", 90001, {_x: 0, _y: 0});
                不让封爵.取消.onRelease = function ()
                {
                    不让封爵.removeMovieClip();
                }
                ;
                不让封爵.文本.text = "驸马爷不能再赐爵位。";
                return;
            }
            _root.attachMovie("封什么爵位呢", "封什么爵位呢", 90001, {_x: 0, _y: 0});
            _root.封什么爵位呢.文本.text = 目标.名字 + "目前的爵位：" + 目标.爵位 + "\n皇上想给他封什么爵呢?";
            _root.封什么爵位呢.取消.onRelease = function ()
            {
                _root.封什么爵位呢.removeMovieClip();
            }
            ;
            _root.封什么爵位呢.公.onRelease = function ()
            {
                进行封爵(目标, "公");
            }
            ;
            _root.封什么爵位呢.侯.onRelease = function ()
            {
                进行封爵(目标, "侯");
            }
            ;
            _root.封什么爵位呢.伯.onRelease = function ()
            {
                进行封爵(目标, "伯");
            }
            ;
            _root.封什么爵位呢.子.onRelease = function ()
            {
                进行封爵(目标, "子");
            }
            ;
            _root.封什么爵位呢.男.onRelease = function ()
            {
                进行封爵(目标, "男");
            }
            ;
            _root.封什么爵位呢.无.onRelease = function ()
            {
                进行封爵(目标, "无");
            }
            ;
        }
        ;
        ++__reg3;
    }
}
function 把爵位转换成数值(哪个)
{
    var __reg1 = "";
    if (哪个 == "无") 
    {
        __reg1 = 0;
    }
    else if (哪个 == "男") 
    {
        __reg1 = 1;
    }
    else if (哪个 == "子") 
    {
        __reg1 = 2;
    }
    else if (哪个 == "伯") 
    {
        __reg1 = 3;
    }
    else if (哪个 == "侯") 
    {
        __reg1 = 4;
    }
    else if (哪个 == "公") 
    {
        __reg1 = 5;
    }
    else if (哪个 == "驸") 
    {
        __reg1 = 6;
    }
    return __reg1;
}
function 进行封爵(哪个, 参数)
{
    var __reg3 = 把爵位转换成数值(哪个.爵位);
    var __reg2 = 把爵位转换成数值(参数);
    var __reg1 = "";
    var __reg4 = __reg2 - __reg3;
    if (__reg3 == __reg2) 
    {
        __reg1 = "相同";
        小提示("以之前的爵位相同");
        return;
    }
    if (__reg2 == 0) 
    {
        封爵(哪个, 参数, __reg1, __reg4, 1);
        return;
    }
    if (__reg3 > __reg2) 
    {
        __reg1 = "降级";
        封爵(哪个, 参数, __reg1, __reg4);
        return;
    }
    if (__reg3 < __reg2) 
    {
        __reg1 = "升格";
        封爵(哪个, 参数, __reg1, __reg4);
    }
}
function 封爵(哪个, 参数, 用词, 增加, 是否清空)
{
    if (是否清空 == 1) 
    {
        哪个.忠诚 = 哪个.忠诚 + 增加 * 20;
        if (哪个.忠诚 < 20) 
        {
            哪个.忠诚 = 20;
        }
        出圣旨(哪个.名字 + "削爵与士为伍。");
        大殿体力扣除程序(10);
    }
    else 
    {
        哪个.忠诚 = 哪个.忠诚 + 增加 * 10;
        if (哪个.忠诚 > 100) 
        {
            哪个.忠诚 = 100;
        }
        else if (哪个.忠诚 < 20) 
        {
            哪个.忠诚 = 20;
        }
        var __reg3 = 各种封爵需要的地名[random(各种封爵需要的地名.length)];
        出圣旨(哪个.名字 + 用词 + "为" + __reg3 + 参数 + "，享爵位俸禄。");
        大殿体力扣除程序(5);
    }
    删除之前的界面(_root.官员调动面板);
    删除之前的界面(_root.封什么爵位呢);
    哪个.爵位 = 参数;
}
function 刷新民生面板(路径啊)
{
    var 路径 = 路径啊.面板;
    var __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= 30) 
        {
            return;
        }
        路径["旗帜" + __reg3].gotoAndStop(_root.所有城池[__reg3].归属 + 1);
        路径["旗帜" + __reg3].属性 = _root.所有城池[__reg3];
        路径["旗帜" + __reg3].onRollOver = function ()
        {
            路径.文本.text = "回禀皇上：\n" + _root.所有城池[this.属性.id].名称 + "地区属于" + _root.阵营[_root.所有城池[this.属性.id].归属].名称 + "，人口" + Math.round(this.属性.人口 / 10000) + "万。\n";
            this.人口 = Math.round(this.属性.人口 / 10000);
            if (_root.阵营[this.属性.归属].id == 8) 
            {
                var __reg5 = undefined;
                var __reg6 = undefined;
                var __reg3 = 0;
                while (__reg3 < _root.所有人才.length) 
                {
                    if (0 != (_root.所有人才[__reg3].类 == "知府") & 0 != (_root.所有人才[__reg3].城.id == _root.所有城池[this.属性.id].id)) 
                    {
                        __reg5 = _root.所有人才[__reg3];
                    }
                    if (0 != (_root.所有人才[__reg3].类 == "总兵") & 0 != (_root.所有人才[__reg3].城.id == _root.所有城池[this.属性.id].id)) 
                    {
                        __reg6 = _root.所有人才[__reg3];
                    }
                    ++__reg3;
                }
                var __reg4 = _root.所有城池[this.属性.id];
                var __reg9 = __reg4.人口;
                var __reg7 = __reg4.壮丁;
                var __reg8 = __reg4.士兵;
                var __reg12 = __reg4.安定;
                var __reg10 = __reg4.治安;
                var __reg13 = __reg4.运输;
                var __reg14 = __reg4.体能;
                var __reg11 = __reg4.积粮;
                路径.文本.text = 路径.文本.text + ("本地区知府:" + __reg5.名字 + "，总兵：" + __reg6.名字 + "\n人口：" + Math.round(__reg9 / 10000) + "万，壮丁：" + Math.round(__reg7 / 10000) + "万，士兵：" + Math.round(__reg8 / 10000) + "万。\n安定：" + __reg12 + "，治安：" + __reg10 + "，运输：" + __reg13 + "，积粮：" + __reg11 + "。");
            }
        }
        ;
        ++__reg3;
    }
}
function 求比例(前, 后)
{
    var __reg1 = Math.round(前 / 后 * 100);
    if (__reg1 > 200) 
    {
        __reg1 = 20;
    }
    if (__reg1 < 0) 
    {
        __reg1 = 0;
    }
    return __reg1;
}
function 所有建筑列表()
{
    var __reg3 = {};
    var __reg4 = 0;
    while (__reg4 < 地方建筑全部.length) 
    {
        __reg3[地方建筑全部[__reg4]] = 0;
        ++__reg4;
    }
    __reg4 = 0;
    while (__reg4 < 地方建筑全部.length) 
    {
        var __reg2 = 0;
        while (__reg2 < 所有城池.length) 
        {
            if (所有城池[__reg2].归属 == 8) 
            {
                __reg3[地方建筑全部[__reg4]] = __reg3[地方建筑全部[__reg4]] + 所有城池[__reg2][地方建筑全部[__reg4]];
            }
            ++__reg2;
        }
        ++__reg4;
    }
    __reg4 = 0;
    while (__reg4 < 地方建筑全部.length) 
    {
        ++__reg4;
    }
    var __reg5 = _root.attachMovie("军事总表面板", "军事总表面板", 90000, {_x: 0, _y: 0});
    __reg5.文本.text = "启禀皇上：全国建筑统计如下\n";
    __reg5.文本.text = __reg5.文本.text + ("寺庙总数：" + __reg3.寺庙 + "\n");
    __reg5.文本.text = __reg5.文本.text + ("市集总数：" + __reg3.市集 + "\n");
    __reg5.文本.text = __reg5.文本.text + ("城墙总数：" + __reg3.城墙 + "\n");
    __reg5.文本.text = __reg5.文本.text + ("衙门总数：" + __reg3.衙门 + "\n");
    __reg5.文本.text = __reg5.文本.text + ("义仓总数：" + __reg3.义仓 + "\n");
    __reg5.文本.text = __reg5.文本.text + ("校场总数：" + __reg3.校场 + "\n");
    __reg5.文本.text = __reg5.文本.text + ("行宫总数：" + __reg3.行宫 + "\n");
    __reg5.文本.text = __reg5.文本.text + "\n国家建筑如下:";
    显示数据条到那(40, 300, __reg5, 1, 国家建筑全部[0]);
    显示数据条到那(300, 300, __reg5, 2, 国家建筑全部[1]);
    显示数据条到那(40, 320, __reg5, 3, 国家建筑全部[2]);
    显示数据条到那(300, 320, __reg5, 4, 国家建筑全部[3]);
    显示数据条到那(40, 340, __reg5, 5, 国家建筑全部[4]);
    显示数据条到那(300, 340, __reg5, 6, 国家建筑全部[5]);
    显示数据条到那(40, 360, __reg5, 7, 国家建筑全部[6]);
    显示数据条到那(300, 360, __reg5, 8, 国家建筑全部[7]);
    显示数据条到那(40, 380, __reg5, 9, 国家建筑全部[8]);
    显示数据条到那(300, 380, __reg5, 10, 国家建筑全部[9]);
    __reg5.关闭.onRelease = function ()
    {
        _root.军事总表面板.removeMovieClip();
    }
    ;
}
function 显示数据条到那(X, Y, 路径, 深度, 数据)
{
    var __reg2 = 路径.attachMovie("特殊建筑监视", "特殊建筑监视" + 深度, 深度, {_x: X + 15, _y: Y});
    __reg2.名称.text = 数据[0];
    var __reg1 = Math.round(数据[2] / 数据[3] * 100);
    if (__reg1 < 0) 
    {
        __reg1 = 0;
    }
    else if (__reg1 > 100) 
    {
        __reg1 = 100;
    }
    __reg2.进度.text = __reg1 + "%";
    __reg2.完工.text = "未完";
    __reg2.条.条._xscale = __reg1;
}
function 补助小条的程序()
{
    var __reg6 = [];
    var __reg5 = 0;
    while (__reg5 < 所有城池.length) 
    {
        if (所有城池[__reg5].归属 == 8) 
        {
            __reg6.push(所有城池[__reg5]);
        }
        ++__reg5;
    }
    var __reg10 = _root.attachMovie("中央补助面板", "军事总表面板", 90000, {_x: 0, _y: 0});
    var __reg11 = 4;
    var __reg12 = 12;
    var __reg3 = 0;
    var __reg7 = 0;
    while (__reg7 < __reg12) 
    {
        __reg5 = 0;
        while (__reg5 < __reg11) 
        {
            if (__reg3 < __reg6.length) 
            {
                var __reg4 = __reg10.attachMovie("补助小条", "补助小条" + __reg3, 112 + __reg3, {_x: __reg5 * 125 + 80, _y: __reg7 * 35 + 80});
                __reg4.文本.text = __reg6[__reg3].名称;
                __reg4.属性 = __reg6[__reg3];
                __reg4.an.onPress = function ()
                {
                    _root.进入补助面板(this._parent.属性);
                }
                ;
                ++__reg3;
            }
            ++__reg5;
        }
        ++__reg7;
    }
    __reg10.关闭.onRelease = function ()
    {
        _root.军事总表面板.removeMovieClip();
    }
    ;
}
function 进入补助面板(对象)
{
    var 调整税率面板 = _root.attachMovie("数值拉动条", "调整税率面板", 90000, {_x: 0, _y: 0});
    调整税率面板.文本.text = "启禀皇上：\n";
    调整税率面板.文本.text = 调整税率面板.文本.text + (对象.名称 + "当前有储备银两：" + Math.ceil(对象.黄金 / 10000) + "万两。");
    调整税率面板.长度 = Math.round(国家.金钱 / 100);
    调整税率面板.提示.text = "需要调拨多少银两";
    调整税率面板.条._xscale = 0;
    var __reg5 = 0;
    NewDrag(调整税率面板.r.a);
    调整税率面板.r.a._x = 调整税率面板.r.a._x + 调整税率面板.条._width;
    调整税率面板.确定.onRelease = function ()
    {
        if (_root.调整税率面板.值 == undefined) 
        {
            _root.小提示("请拉动红条操作");
            return;
        }
        if (_root.调整税率面板.值 == 0) 
        {
            _root.小提示("没有做任何调整");
            return;
        }
        var __reg2 = 对象.名称;
        出圣旨("国库拨调银两" + _root.调整税率面板.值 + "两，支援" + __reg2 + "地区能够快速发展。");
        对象.黄金 = 对象.黄金 + _root.调整税率面板.值;
        国库钱数变动的程序(_root.调整税率面板.值 * -1);
        删除之前的界面(调整税率面板);
        加载进步动画条的说("金钱");
        _root.皇宫.跳板.国库.text = Math.round(国家.金钱 / 10000) + "万两";
    }
    ;
    调整税率面板.取消.onRelease = function ()
    {
        _root.调整税率面板.removeMovieClip();
    }
    ;
}

//  Action tag #6

function 紫辰殿()
{
    var 面板 = _root.attachMovie("紫辰殿面板", "紫辰殿面板", 3000, {_x: 0, _y: 0});
    面板.取消.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    面板.少监.onPress = function ()
    {
        var __reg3 = _root.attachMovie("内侍面板", "内侍面板", 90000, {_x: 0, _y: 0});
        __reg3.文本.text = "皇上：\n今个要安排什么节目吗?";
        __reg3.文0.text = "后山狩猎";
        __reg3.文1.text = "微服出访";
        __reg3.文2.text = "浩荡出巡";
        __reg3.文3.text = "游园散心";
        按键功能跳动(__reg3.an0, "打猎程序");
        按键功能跳动(__reg3.an1, "微服出巡程序");
        按键功能跳动(__reg3.an2, "浩荡出巡程序");
        按键功能跳动(__reg3.an3, "游圆散心程序");
        __reg3.attachMovie("红色小条", "宴请大臣", 5500, {_x: 115.6, _y: 255});
        __reg3.宴请大臣.文本.text = "宴请大臣";
        按键功能跳动(__reg3.宴请大臣.an, "宴请大臣程序");
        __reg3.attachMovie("红色小条", "大事笔记", 5501, {_x: 220.25, _y: 255});
        __reg3.大事笔记.文本.text = "大事笔录";
        按键功能跳动(__reg3.大事笔记.an, "大事笔记程序");
        __reg3.attachMovie("红色小条", "游戏反馈", 5504, {_x: 429.6, _y: 255});
        __reg3.游戏反馈.文本.text = "玩家交流";
        __reg3.游戏反馈.an.onPress = function ()
        {
            跳到游戏论坛去();
        }
        ;
        __reg3.attachMovie("红色小条", "游戏贴士", 5502, {_x: 429.6, _y: 288});
        __reg3.游戏贴士.文本.text = "游戏贴士";
        __reg3.游戏贴士.an.onPress = function ()
        {
            游戏贴士的哪个程序();
        }
        ;
        __reg3.attachMovie("红色小条", "攻略心得", 5507, {_x: 220.25, _y: 288});
        __reg3.攻略心得.文本.text = "攻略心得";
        __reg3.攻略心得.an.onPress = function ()
        {
            攻略心得的哪个程序();
        }
        ;
        __reg3.attachMovie("红色小条", "感谢玩家", 5506, {_x: 324.9, _y: 288});
        __reg3.感谢玩家.文本.text = "感谢玩家";
        __reg3.感谢玩家.an.onPress = function ()
        {
            感谢玩家哪个程序();
        }
        ;
        __reg3.attachMovie("红色小条", "游戏缩放", 5509, {_x: 115.6, _y: 288});
        __reg3.游戏缩放.文本.text = "游戏缩放";
        __reg3.游戏缩放.an.onPress = function ()
        {
            if (this._parent.文本.text == "游戏缩放") 
            {
                this._parent.文本.text = "原始比例";
                Stage.scaleMode = "Exactfit";
                return;
            }
            this._parent.文本.text = "游戏缩放";
            Stage.scaleMode = "noScale";
        }
        ;
        __reg3.attachMovie("红色小条", "游戏存档", 5503, {_x: 324.9, _y: 255});
        __reg3.游戏存档.文本.text = "游戏存档";
        __reg3.游戏存档.an.onPress = function ()
        {
            if (主角.当前时辰 == 2) 
            {
                _root.存档放入();
                return;
            }
            小提示("游戏内时间为晚上才能进行存档。");
        }
        ;
        __reg3.取消.onPress = function ()
        {
            完毕面板后执行();
            this._parent.removeMovieClip();
        }
        ;
    }
    ;
    面板.内侍.onPress = function ()
    {
        var __reg3 = _root.attachMovie("内侍面板", "内侍面板", 90000, {_x: 0, _y: 0});
        __reg3.文本.text = "皇上：\n内侍专门负责处理后宫事务。";
        __reg3.文0.text = "召见子女";
        __reg3.文1.text = "策立嫔妃";
        __reg3.文2.text = "子女一览";
        __reg3.文3.text = "嫔妃一览";
        按键功能跳动(__reg3.an3, "嫔妃一览程序");
        按键功能跳动(__reg3.an2, "子女一览程序");
        按键功能跳动(__reg3.an0, "召见子女程序");
        按键功能跳动(__reg3.an1, "策立嫔妃程序");
        __reg3.取消.onPress = function ()
        {
            this._parent.removeMovieClip();
        }
        ;
        内侍面板.attachMovie("红色小条", "公主婚配", 5500, {_x: 115.6, _y: 255});
        内侍面板.公主婚配.文本.text = "公主婚配";
        按键功能跳动(内侍面板.公主婚配.an, "公主婚配程序");
        内侍面板.attachMovie("红色小条", "奇珍宝库", 5502, {_x: 324.9, _y: 255});
        内侍面板.奇珍宝库.文本.text = "奇珍宝库";
        按键功能跳动(内侍面板.奇珍宝库.an, "奇珍宝库程序");
    }
    ;
}
function 感谢玩家哪个程序()
{
    var __reg4 = _root.attachMovie("说明面板", "说明面板", 90021, {_x: 0, _y: 0});
    __reg4.文本.面板.文本.html = true;
    __reg4.文本.htmlText = "三年对策略游戏的坚持不容易，因为这类玩家的群体实在太小了。\n首先感谢前辈的智慧，如果没有他们。我就无法传承他们的智慧。\n最后我要感谢你们，无数次BUG，无数次更新。\n你们无怨无悔的无数次测试，谢谢你们。\n";
    __reg4.文本.htmlText = __reg4.文本.htmlText + "\n";
    var __reg3 = 0;
    while (__reg3 < 玩家榜.length) 
    {
        if (__reg3 % 2 == 0) 
        {
            __reg4.文本.htmlText = __reg4.文本.htmlText + 颜色代码(__reg3 + "：" + 玩家榜[__reg3], "000099");
        }
        else 
        {
            __reg4.文本.htmlText = __reg4.文本.htmlText + 颜色代码(__reg3 + "：" + 玩家榜[__reg3], "990000");
        }
        ++__reg3;
    }
    __reg4.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
}
function 攻略心得的哪个程序()
{
    var __reg3 = _root.attachMovie("说明面板", "说明面板", 90021, {_x: 0, _y: 0});
    __reg3.文本.text = 游戏攻略文本;
    __reg3.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
}
function 游戏贴士的哪个程序()
{
    var __reg4 = _root.attachMovie("说明面板", "说明面板", 90021, {_x: 0, _y: 0});
    __reg4.文本.html = true;
    __reg4.文本.htmlText = "《皇帝成长计划》游戏贴士。\n";
    __reg4.文本.htmlText = __reg4.文本.htmlText + "\n";
    var __reg3 = 0;
    while (__reg3 < 小贴士.length) 
    {
        if (__reg3 % 2 == 0) 
        {
            __reg4.文本.htmlText = __reg4.文本.htmlText + 颜色代码(__reg3 + "：" + 小贴士[__reg3], "000099");
            __reg4.文本.htmlText = __reg4.文本.htmlText + "\n";
        }
        else 
        {
            __reg4.文本.htmlText = __reg4.文本.htmlText + 颜色代码(__reg3 + "：" + 小贴士[__reg3], "990000");
            __reg4.文本.htmlText = __reg4.文本.htmlText + "\n";
        }
        ++__reg3;
    }
    __reg4.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
}
function 公主婚配程序()
{
    var 面板 = _root.attachMovie("丹药面板", "丹药面板", 90021, {_x: 0, _y: 0});
    面板.标题.text = "成年未婚的公主";
    面板.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
    var __reg6 = 0;
    var 按钮数据 = [];
    var __reg5 = 0;
    while (__reg5 < 5) 
    {
        var __reg3 = 0;
        while (__reg3 < 5) 
        {
            var __reg4 = 面板.attachMovie("红色小条", "红色小条" + __reg6, 200 + __reg6, {_x: 75 + __reg3 * 100, _y: 90 + __reg5 * 65});
            __reg4.文本.text = "子女";
            按钮数据.push(__reg4);
            ++__reg6;
            ++__reg3;
        }
        ++__reg5;
    }
    面板.未婚公主列表 = [];
    __reg5 = 0;
    while (__reg5 < 所有子女数据.length) 
    {
        if (0 != (0 != (所有子女数据[__reg5].性别 == 1) & 0 != (所有子女数据[__reg5].婚 == 0)) & 0 != 所有子女数据[__reg5].年龄 >= 16) 
        {
            面板.未婚公主列表.push(所有子女数据[__reg5]);
        }
        ++__reg5;
    }
    if (面板.未婚公主列表.length == 0) 
    {
        小提示("没有可婚嫁的公主");
        面板.removeMovieClip();
        return;
    }
    面板.序列 = 0;
    更新子女婚姻信息(面板, 按钮数据);
    面板.上.onPress = function ()
    {
        if (面板.序列 > 0) 
        {
            面板.序列 = 面板.序列 - 25;
            更新子女婚姻信息(面板, 按钮数据);
        }
    }
    ;
    面板.下.onPress = function ()
    {
        if (面板.序列 < Math.round(面板.未婚公主列表.length / 25) - 1) 
        {
            面板.序列 = 面板.序列 + 25;
            更新子女婚姻信息(面板, 按钮数据);
        }
    }
    ;
}
function 更新子女婚姻信息(面板, 按钮数据)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 按钮数据.length) 
        {
            return;
        }
        执行子女的属性按钮(面板, 按钮数据[__reg1], 面板.序列 + __reg1);
        ++__reg1;
    }
}
function 执行子女的属性按钮(面板, 对象, 序列)
{
    var 数据 = 面板.未婚公主列表[序列];
    if (数据.名称 == undefined) 
    {
        对象._visible = false;
        return;
    }
    对象._visible = true;
    对象.文本.text = 数据.名称;
    对象.an.onRollOut = function ()
    {
        移动子女具体状态(面板);
    }
    ;
    对象.an.onRollOver = function ()
    {
        移动子女具体状态(面板);
        提示子女的具体状态(数据, 面板, 对象);
    }
    ;
    对象.an.onPress = function ()
    {
        选择公主婚姻(数据);
    }
    ;
}
function 选择公主婚姻(数据)
{
    _root.内侍面板.removeMovieClip();
    var 公主婚嫁选择 = _root.attachMovie("公主婚嫁选择", "公主婚嫁选择", 90021, {_x: 0, _y: 0});
    公主婚嫁选择.文本.text = "公主：" + 数据.名称 + "，民间评价:" + 数据.性情 + "。\n母亲：" + 数据.母亲 + "，年龄：" + 数据.年龄 + "。";
    公主婚嫁选择.文本.text = 公主婚嫁选择.文本.text + "\n皇上准备怎么安排。";
    公主婚嫁选择.取消.onPress = function ()
    {
        公主婚嫁选择.removeMovieClip();
    }
    ;
    公主婚嫁选择.礼部.onPress = function ()
    {
        公主婚嫁选择.removeMovieClip();
        var __reg1 = ["卿士", "太史", "左史", "右史", "司徒", "司马", "司空", "司寇", "职方", "太师", "太傅", "大保", "少师", "少傅", "少保", "太宰", "少宰", "六卿", "封人", "工正", "相国", "庶长", "令尹", "柱国", "御史", "太尉", "太仆", "廷尉", "宗正", "少府", "将军", "洗马", "大夫", "博士", "郎中", "侍郎", "中郎", "议郎", "令史 ", "尚书", "六曹", "合阁", "仆射", "侍中", "内史", "刺史", "州牧", "别驾", "主薄", "长史", "学士", "总管", "元帅", "留守", "判官", "巡检", "知府", "亲王", "总督", "巡抚", "监司", "州判", "提督", "总兵"];
        var __reg3 = __reg1[random(__reg1.length)];
        var __reg2 = 姓[random(姓.length)] + 主名[random(主名.length)] + 男名[random(男名.length)];
        出圣旨("朕之" + 数据.名称 + "公主淑慎性成，勤勉柔顺，雍和粹纯，性行温良，克娴内则，淑德含章。且" + __reg3 + " " + __reg2 + "贵而能俭，无怠遵循，克佐壶仪，轨度端和，敦睦嘉仁，特赐" + 数据.名称 + "公主与" + __reg2 + "得佳姻。");
        数据.封号 = __reg3 + "夫人";
        数据.婚 = 1;
    }
    ;
    公主婚嫁选择.朝廷.onPress = function ()
    {
        公主大婚处理大臣列表(数据);
    }
    ;
}
function 公主大婚处理大臣列表(女儿数据)
{
    var 面板 = _root.attachMovie("丹药面板", "丹药面板", 90021, {_x: 0, _y: 0});
    面板.标题.text = "选择朝廷大臣";
    面板.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
    var __reg5 = 0;
    var 按钮数据 = [];
    var __reg6 = 0;
    while (__reg6 < 5) 
    {
        var __reg3 = 0;
        while (__reg3 < 5) 
        {
            var __reg4 = 面板.attachMovie("蓝色小条", "红色小条" + __reg5, 200 + __reg5, {_x: 75 + __reg3 * 100, _y: 90 + __reg6 * 65});
            __reg4.文本.text = "子女";
            按钮数据.push(__reg4);
            ++__reg5;
            ++__reg3;
        }
        ++__reg6;
    }
    面板.临时列表 = [];
    __reg6 = 0;
    while (__reg6 < 所有人才.length) 
    {
        if (所有人才[__reg6].爵位 !== "驸") 
        {
            面板.临时列表.push(所有人才[__reg6]);
        }
        ++__reg6;
    }
    if (面板.临时列表.length == 0) 
    {
        小提示("没有能嫁的大臣");
        面板.removeMovieClip();
        return;
    }
    面板.序列 = 0;
    更新驸马列表(面板, 按钮数据, 女儿数据);
    面板.上.onPress = function ()
    {
        if (面板.序列 > 0) 
        {
            面板.序列 = 面板.序列 - 25;
            更新驸马列表(面板, 按钮数据, 女儿数据);
        }
    }
    ;
    面板.下.onPress = function ()
    {
        if (面板.序列 < 面板.临时列表.length - 25) 
        {
            面板.序列 = 面板.序列 + 25;
            更新驸马列表(面板, 按钮数据, 女儿数据);
        }
    }
    ;
}
function 更新驸马列表(面板, 按钮数据, 女儿数据)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 按钮数据.length) 
        {
            return;
        }
        驸马列表(面板, 按钮数据[__reg1], 面板.序列 + __reg1, 女儿数据);
        ++__reg1;
    }
}
function 驸马列表(面板, 对象, 序列, 女儿数据)
{
    var 数据 = 面板.临时列表[序列];
    if (数据.名字 == undefined) 
    {
        对象._visible = false;
        return;
    }
    对象._visible = true;
    对象.文本.text = 数据.名字;
    对象.按.onRollOut = function ()
    {
        移除选驸马小板子(面板);
    }
    ;
    对象.按.onRollOver = function ()
    {
        移除选驸马小板子(面板);
        提示驸马资料(数据, 面板, this._parent, this._parent);
    }
    ;
    对象.按.onPress = function ()
    {
        进入选择公主名号(女儿数据, 数据);
    }
    ;
}
function 移除选驸马小板子(面板)
{
    if (面板.后宫提示小面板 !== undefined) 
    {
        面板.后宫提示小面板.removeMovieClip();
    }
}
function 进入选择公主名号(女儿数据, 驸马数据)
{
    var 面板 = _root.attachMovie("公主赐封号", "公主赐封号", 90021, {_x: 0, _y: 0});
    面板.标题.text = "赐公主封号";
    面板.提示.text = 女儿数据.名称 + "公主嫁给" + 驸马数据.名字 + "，要御赐什么封号呢？";
    var __reg6 = 0;
    var __reg8 = 0;
    for (;;) 
    {
        if (__reg8 >= 5) 
        {
            return;
        }
        var __reg3 = 0;
        while (__reg3 < 5) 
        {
            var __reg4 = 面板.attachMovie("红色小条", "红色小条" + __reg6, 200 + __reg6, {_x: 75 + __reg3 * 100, _y: 90 + __reg8 * 65});
            var __reg5 = 女名[random(女名.length)] + 女名[random(女名.length)];
            __reg4.文本.text = __reg5;
            __reg4.属性 = __reg5;
            __reg4.an.onPress = function ()
            {
                if (驸马数据.名字 == "比目鱼") 
                {
                    __reg2 = "比目鱼是个好少年。朕亲自赐婚，将" + 女儿数据.名称 + "公主嫁给鱼叔，鱼叔你要幸福哦。";
                }
                else if (0 != (0 != (驸马数据.名字 == "花木兰") | 0 != (驸马数据.名字 == "樊梨花")) | 0 != (驸马数据.名字 == "穆桂英")) 
                {
                    __reg2 = 驸马数据.名字 + "虽为女身，但巾帼不让须眉。有万夫不当之勇。今将" + 女儿数据.名称 + "公主赐婚予" + 驸马数据.名字 + "，加封" + this._parent.属性 + "公主，朕真心希望你们能够相伴至老，永远幸福。";
                }
                else 
                {
                    var __reg2 = 女儿数据.名称 + "朕之爱女。如今已到成婚之龄。前朝大臣" + 驸马数据.名字 + "一表人才，为人诚恳。谨此朕赐婚。加封公主为" + this._parent.属性 + "公主，礼部挑选吉日，隆重举行。";
                }
                记录大事件的程序(驸马数据.名字 + "被选为" + 女儿数据.名称 + "公主的驸马。隆重举行婚礼。");
                国家.金钱 = 国家.金钱 - 100000;
                更新资料();
                女儿数据.封号 = this._parent.属性 + "公主";
                女儿数据.婚 = 1;
                驸马数据.爵位 = "驸";
                驸马数据.忠诚 = 100;
                出圣旨(__reg2);
                面板.removeMovieClip();
            }
            ;
            ++__reg6;
            ++__reg3;
        }
        ++__reg8;
    }
}
function 提示驸马资料(数据, 面板, 条)
{
    var __reg2 = 面板.attachMovie("子女提示的小面板", "后宫提示小面板", 95000, {_x: 条._x + 77, _y: 条._y + 32});
    __reg2.文本.text = 数据.名字 + "\n年龄:" + 数据.年龄 + "\n爵位：" + 数据.爵位 + "\n野心：" + 数据.野心 + "\n忠诚：" + 数据.忠诚;
}
function 移动子女具体状态(面板)
{
    面板.后宫提示小面板.removeMovieClip();
}
function 提示子女的具体状态(数据, 面板, 条)
{
    var __reg2 = 面板.attachMovie("子女提示的小面板", "后宫提示小面板", 95000, {_x: 条._x + 77, _y: 条._y + 32});
    __reg2.文本.text = "公主：" + 数据.名称 + "\n母亲：" + 数据.母亲 + "\n年龄：" + 数据.年龄 + "\n民间评价:" + 数据.性情;
}
function 大事笔记程序()
{
    if (这么多年所有大事.length > 0) 
    {
        var 面板 = _root.attachMovie("大事面板", "说明面板面板", 90000, {_x: 0, _y: 0});
        面板.关闭.onPress = function ()
        {
            this._parent.removeMovieClip();
        }
        ;
        面板.文本.html = true;
        面板.文本.htmlText = "";
        var 页显示 = 9;
        面板.序列 = 0;
        更新大事笔记信息(面板, 页显示);
        面板.上.onPress = function ()
        {
            if (面板.序列 > 0) 
            {
                面板.序列 = 面板.序列 - 页显示;
                更新大事笔记信息(面板, 页显示);
            }
        }
        ;
        面板.下.onPress = function ()
        {
            if (面板.序列 + 14 < 这么多年所有大事.length) 
            {
                面板.序列 = 面板.序列 + 页显示;
                更新大事笔记信息(面板, 页显示);
            }
        }
        ;
    }
}
function 更新大事笔记信息(面板, 页显示)
{
    面板.文本.htmlText = "";
    var __reg2 = [];
    var __reg1 = 面板.序列;
    while (__reg1 < 面板.序列 + 页显示) 
    {
        if (这么多年所有大事[__reg1] !== undefined) 
        {
            __reg2.push(这么多年所有大事[__reg1]);
        }
        ++__reg1;
    }
    __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= __reg2.length) 
        {
            return;
        }
        面板.文本.htmlText = 面板.文本.htmlText + __reg2[__reg1];
        ++__reg1;
    }
}
function 宴请大臣程序()
{
    var 临时官员数据 = 整理官员显示用数据(0);
    var 面板 = _root.attachMovie("宴请大臣", "宴请大臣面板", 90000, {_x: 0, _y: 0});
    var 序列号 = 0;
    var __reg2 = 0;
    while (__reg2 < 10) 
    {
        面板.attachMovie("蓝色小条", "宴会" + __reg2, __reg2 + 540, {_x: 445, _y: 65 + 35 * __reg2});
        ++__reg2;
    }
    处理宴会大臣排列(面板, 序列号, 临时官员数据);
    面板.宴会名单 = [];
    渲染宴会名单(面板, 面板.宴会名单);
    面板.上.onPress = function ()
    {
        if (序列号 > 0) 
        {
            序列号 = 序列号 - 30;
            处理宴会大臣排列(面板, 序列号, 临时官员数据);
        }
    }
    ;
    面板.下.onPress = function ()
    {
        if (序列号 < 临时官员数据.length - 1) 
        {
            序列号 = 序列号 + 30;
            处理宴会大臣排列(面板, 序列号, 临时官员数据);
        }
    }
    ;
    面板.取消.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    面板.确定.onPress = function ()
    {
        if (面板.宴会名单.length <= 0) 
        {
            _root.小提示("需要选取大臣参加");
            return;
        }
        _root.主角.宴会 = 1;
        var __reg4 = "";
        var __reg2 = 0;
        while (__reg2 < 面板.宴会名单.length) 
        {
            __reg4 = __reg4 + (面板.宴会名单[__reg2].名字 + "，");
            var __reg3 = random(2);
            if (面板.宴会名单[__reg2].忠诚 < 100) 
            {
                if (__reg3 == 0) 
                {
                    面板.宴会名单[__reg2].忠诚 = 面板.宴会名单[__reg2].忠诚 + 1;
                }
                else 
                {
                    面板.宴会名单[__reg2].忠诚 = 面板.宴会名单[__reg2].忠诚 + 2;
                }
            }
            ++__reg2;
        }
        var 宴会 = _root.attachMovie("宴会", "宴会", 95000, {_x: 0, _y: 0});
        var 对话框 = 宴会.attachMovie("对话框面板", "对话框面板", 5000, {_x: 0, _y: 0});
        对话框._x = (640 - 对话框._width) / 2;
        对话框._y = 380;
        对话框.文本.text = 面板.宴会名单[0].名字 + "等" + 面板.宴会名单.length + "位大臣。与皇上一同在宴会。";
        学习话语和处理("金钱");
        国库钱数变动的程序(面板.宴会名单.length * 50 * -1);
        _root.临时记录多少人宴请 = 面板.宴会名单.length;
        更新资料();
        对话框.an.onPress = function ()
        {
            var __reg2 = random(5);
            if (__reg2 == 0) 
            {
                对话框.文本.text = "闲聊，不胜愉快。";
            }
            else if (__reg2 == 1) 
            {
                对话框.文本.text = "愉快的宴会，皇上宴上即兴赋诗一首。";
            }
            else if (__reg2 == 2) 
            {
                对话框.文本.text = "大臣与皇上聊得很愉快。";
            }
            else if (__reg2 == 3) 
            {
                对话框.文本.text = "喝酒，舞曲，不胜愉快。";
            }
            else if (__reg2 == 4) 
            {
                对话框.文本.text = "皇上很开心，送每位大臣一件贡品。";
                _root.主角.快乐 = _root.主角.快乐 + 5;
                国库钱数变动的程序(-1 * _root.临时记录多少人宴请 * 1000);
                更新资料();
            }
            对话框.an.onPress = function ()
            {
                宴会.removeMovieClip();
                _root.紫辰殿面板.removeMovieClip();
                ++_root.主角.当前时辰;
                时辰推进();
            }
            ;
        }
        ;
        面板.removeMovieClip();
    }
    ;
}
function 处理宴会大臣排列(面板, 序列号, 临时官员数据)
{
    var __reg9 = 0;
    var __reg2 = 0;
    while (__reg2 < 10) 
    {
        面板.attachMovie("蓝色小条", "人" + __reg2, __reg2 + 200, {_x: 85, _y: 65 + 35 * __reg2});
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < 10) 
    {
        面板.attachMovie("蓝色小条", "人" + (__reg2 + 10), __reg2 + 220, {_x: 185, _y: 65 + 35 * __reg2});
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < 10) 
    {
        面板.attachMovie("蓝色小条", "人" + (__reg2 + 20), __reg2 + 240, {_x: 285, _y: 65 + 35 * __reg2});
        ++__reg2;
    }
    __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 30) 
        {
            return;
        }
        var __reg3 = 临时官员数据[序列号 + __reg2][0];
        var __reg4 = 临时官员数据[序列号 + __reg2][1];
        if (__reg3 == undefined) 
        {
            面板["人" + __reg2]._visible = false;
        }
        else 
        {
            面板["人" + __reg2].文本.text = __reg3.名字;
            面板["人" + __reg2].属性 = __reg3;
            面板["人" + __reg2].官职 = __reg4;
            面板["人" + __reg2].按.onPress = function ()
            {
                让这个人物出现宴会(this._parent.属性, 面板);
            }
            ;
            面板["人" + __reg2].按.onRollOut = function ()
            {
                移动除非官员的具体状态(this._parent.属性, 面板, this._parent);
            }
            ;
            面板["人" + __reg2].按.onRollOver = function ()
            {
                移动除非官员的具体状态(this._parent.属性, 面板, this._parent);
                提示官员的具体状态(this._parent.属性, 面板, this._parent, this._parent.官职);
            }
            ;
        }
        ++__reg2;
    }
}
function 让这个人物出现宴会(人物, 面板)
{
    if (面板.宴会名单.length < 10) 
    {
        var __reg4 = 0;
        var __reg2 = 0;
        while (__reg2 < 面板.宴会名单.length) 
        {
            if (人物.id == 面板.宴会名单[__reg2].id) 
            {
                __reg4 = 1;
            }
            ++__reg2;
        }
        if (__reg4 == 1) 
        {
            _root.小提示("已在邀请名单中");
        }
        else 
        {
            面板.宴会名单.push(人物);
            渲染宴会名单(面板, 面板.宴会名单);
        }
        return;
    }
    _root.小提示("十名大臣已满");
}
function 渲染宴会名单(面板, 宴会名单)
{
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 10) 
        {
            return;
        }
        if (宴会名单[__reg2] === undefined) 
        {
            面板["宴会" + __reg2]._visible = false;
        }
        else 
        {
            面板["宴会" + __reg2]._visible = true;
            面板["宴会" + __reg2].序列 = __reg2;
            面板["宴会" + __reg2].文本.text = 宴会名单[__reg2].名字;
            面板["宴会" + __reg2].按.onPress = function ()
            {
                宴会名单.splice(this._parent.序列, 1);
                渲染宴会名单(面板, 宴会名单);
            }
            ;
        }
        ++__reg2;
    }
}
function 提示官员的具体状态(对象, 面板, 条, 官职)
{
    面板.attachMovie("后宫提示小面板", "后宫提示小面板", 95000, {_x: 条._x + 77, _y: 条._y + 32});
    面板.后宫提示小面板.文本.text = 对象.名字 + "：" + 官职[1] + "，忠诚：" + 对象.忠诚;
}
function 移动除非官员的具体状态(对象, 面板, 条)
{
    if (面板.后宫提示小面板 !== undefined) 
    {
        面板.后宫提示小面板.removeMovieClip();
    }
}
function 检查后宫册封(对象)
{
    _root.attachMovie("后宫封号面板", "后宫封号面板", 90000, {_x: 0, _y: 0});
    后宫封号面板.标题.text = "封哪个名号?";
    var __reg9 = 0;
    var __reg5 = [];
    var __reg6 = 0;
    while (__reg6 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg6].名字 == undefined) 
        {
            __reg9 = __reg9 + 1;
            __reg5.push(主角.后宫[__reg6].称呼);
        }
        ++__reg6;
    }
    var __reg3 = 0;
    __reg6 = 0;
    while (__reg6 < 8) 
    {
        var __reg4 = 0;
        while (__reg4 < 6) 
        {
            if (__reg5[__reg3] !== undefined) 
            {
                _root.后宫封号面板.attachMovie("后宫名牌小板", "后宫名牌小板" + __reg3, __reg3 + 1000, {_x: __reg4 * 100 + 30, _y: __reg6 * 45 + 60});
                _root.后宫封号面板["后宫名牌小板" + __reg3].文本.text = __reg5[__reg3];
                _root.后宫封号面板["后宫名牌小板" + __reg3].属性 = __reg5[__reg3];
                _root.后宫封号面板["后宫名牌小板" + __reg3].按.onRelease = function ()
                {
                    给她什么名号好呢(对象, this._parent.属性);
                }
                ;
                ++__reg3;
            }
            ++__reg4;
        }
        ++__reg6;
    }
    _root.后宫封号面板.取消册封.onRelease = function ()
    {
        _root.后宫封号面板.removeMovieClip();
        _root.后宫的面板.removeMovieClip();
    }
    ;
}
function 转换后宫变成数值(名号)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 所有后宫名称.length) 
        {
            return;
        }
        var __reg2 = String(所有后宫名称[__reg1]);
        if (__reg2 == 名号) 
        {
            return __reg1;
        }
        ++__reg1;
    }
}
function 给她什么名号好呢(对象, 名号, 参数, 位置啊)
{
    var __reg8 = 转换后宫变成数值(对象.称呼);
    var __reg3 = 转换后宫变成数值(名号);
    var __reg5 = "";
    var __reg6 = 0;
    if (__reg8 < __reg3) 
    {
        __reg5 = "降级";
        __reg6 = -1;
    }
    else 
    {
        __reg5 = "晋升";
        __reg6 = 1;
    }
    var __reg10 = Math.round(计算距离(__reg8, __reg3, 0, 0));
    var __reg9 = __reg6 * (__reg10 * 2);
    对象.爱 = 对象.爱 + __reg9;
    var __reg4 = 对象.名字;
    主角.后宫[__reg3].名字 = 对象.名字;
    主角.后宫[__reg3].能力 = 对象.能力;
    主角.后宫[__reg3].年龄 = 对象.年龄;
    主角.后宫[__reg3].头像 = 对象.头像;
    主角.后宫[__reg3].经验 = 对象.经验;
    主角.后宫[__reg3].状态 = 对象.状态;
    主角.后宫[__reg3].爱 = 对象.爱;
    主角.后宫[__reg3].特殊头像 = 对象.特殊头像;
    主角.后宫[__reg3].孕 = 对象.孕;
    主角.后宫[__reg3].病 = 对象.病;
    主角.后宫[__reg3].id = 对象.id;
    对象.孕 = 0;
    对象.病 = 0;
    对象.爱 = 0;
    对象.特殊头像 = undefined;
    对象.名字 = undefined;
    对象.id = undefined;
    主角.体力 = 主角.体力 - 10;
    主角.后宫册封 = 1;
    if (参数 == 1) 
    {
        主角.后宫[__reg3].爱 = 100;
        出圣旨(__reg4 + "虽是敌国之妃。但朕念之可怜，特将" + __reg4 + "收入后宫。封" + 名号 + "。");
    }
    else if (参数 == 2) 
    {
        主角.后宫[__reg3].爱 = 20 + random(50);
        出圣旨(__reg4 + "娴良淑德，家世良好，朕很满意。即封" + 名号 + "，安排迁入后宫。");
        位置啊.开关 = 1;
        选妃的盖章(位置啊);
    }
    else 
    {
        出圣旨(__reg4 + __reg5 + "至" + 名号 + "。", _root);
    }
    删除之前的界面(后宫封号面板);
}
function 册封面板函数()
{
    _root.attachMovie("后宫面板", "后宫的面板", 90000, {_x: 0, _y: 0});
    后宫的面板.标题.text = "您要改变哪个娘娘的封号。";
    var __reg4 = 后宫的面板.attachMovie("后宫名牌小板", "后宫名牌小板", 90002, {_x: 250, _y: 420});
    __reg4.文本.text = "取 消";
    __reg4.按.onRelease = function ()
    {
        _root.后宫的面板.removeMovieClip();
    }
    ;
    var __reg3 = 0;
    while (__reg3 < 所有后宫名称.length) 
    {
        后宫的面板["后宫" + __reg3].称呼.text = 主角.后宫[__reg3].称呼;
        if (主角.后宫[__reg3].名字 !== undefined) 
        {
            后宫的面板["后宫" + __reg3].属性 = 主角.后宫[__reg3];
            后宫的面板["后宫" + __reg3].名字.text = 主角.后宫[__reg3].名字;
            后宫的面板["后宫" + __reg3].按.onRelease = function ()
            {
                检查后宫册封(this._parent.属性);
            }
            ;
        }
        ++__reg3;
    }
    后宫的面板.后宫0.onRelease = function ()
    {
    }
    ;
    后宫的面板.安排宫女._visible = false;
}
function 召见子女程序()
{
    if (主角.子女会见 == 0) 
    {
        主角.子女会见 = 1;
        子女会见程序();
        return;
    }
    小提示("子女已经请安过了。");
}
function 策立嫔妃程序()
{
    var __reg2 = _root.attachMovie("两个选项选择", "两个选项选择", 90000, {_x: 0, _y: 0});
    两个选项选择.文本.text = "皇上，您想对后宫的嫔妃做什么安排。";
    两个选项选择.a0.文本.text = "册立";
    两个选项选择.a1.文本.text = "冷宫";
    两个选项选择.a2.文本.text = "取消";
    两个选项选择.a0.an.onPress = function ()
    {
        if (主角.后宫册封 == 0) 
        {
            册封面板函数();
            return;
        }
        小提示("后宫册封已在调整。");
    }
    ;
    两个选项选择.a1.an.onPress = function ()
    {
        if (主角.冷宫执行 == 0) 
        {
            冷宫执行程序();
            return;
        }
        小提示("后宫册封已在调整。");
    }
    ;
    两个选项选择.a2.an.onPress = function ()
    {
        _root.两个选项选择.removeMovieClip();
    }
    ;
}
function 冷宫执行程序()
{
    _root.attachMovie("后宫面板", "后宫的面板", 90000, {_x: 0, _y: 0});
    后宫的面板.标题.text = "您要将哪位娘娘送入冷宫。";
    var __reg4 = 后宫的面板.attachMovie("后宫名牌小板", "后宫名牌小板", 90002, {_x: 250, _y: 420});
    __reg4.文本.text = "取 消";
    __reg4.按.onRelease = function ()
    {
        _root.后宫的面板.removeMovieClip();
    }
    ;
    var __reg3 = 0;
    while (__reg3 < 所有后宫名称.length) 
    {
        后宫的面板["后宫" + __reg3].称呼.text = 主角.后宫[__reg3].称呼;
        if (主角.后宫[__reg3].名字 !== undefined) 
        {
            后宫的面板["后宫" + __reg3].属性 = 主角.后宫[__reg3];
            后宫的面板["后宫" + __reg3].名字.text = 主角.后宫[__reg3].名字;
            后宫的面板["后宫" + __reg3].按.onRelease = function ()
            {
                打入冷宫去吧(this._parent.属性);
            }
            ;
        }
        ++__reg3;
    }
    后宫的面板.后宫0.onRelease = function ()
    {
    }
    ;
    后宫的面板.安排宫女._visible = false;
}
function 打入冷宫去吧(对象)
{
    出圣旨(对象.称呼 + 对象.名字 + "送入冷宫，从此不得迈出宫半步。", _root);
    对象.名字 = undefined;
    对象.孕 = 0;
    对象.病 = 0;
    主角.冷宫执行 = 1;
    删除之前的界面(_root.后宫的面板);
}
function 游圆散心程序()
{
    var 游园 = _root.attachMovie("游园散心面板", "游园散心面板", 90000, {_x: 0, _y: 0});
    游园.attachMovie("对话框面板", "对话框面板", 5000, {_x: 52, _y: 411});
    游园.对话框面板.文本.text = "宫里散步了一下，心情愉快了些。";
    _root.主角.快乐 = _root.主角.快乐 + 2;
    _root.主角.健康 = _root.主角.健康 + 2;
    _root.主角.体力 = _root.主角.体力 + 50;
    加载进步动画条的说("快乐");
    加载进步动画条的说("健康");
    加载进步动画条的说("体力");
    更新资料();
    游园.对话框面板.an.onPress = function ()
    {
        游园.removeMovieClip();
        _root.内侍面板.removeMovieClip();
        移除板子再推进(_root.紫辰殿面板);
    }
    ;
}
function 按键功能跳动(按钮, 程序)
{
    按钮.onPress = function ()
    {
        _root[程序]();
    }
    ;
}
function 嫔妃一览程序()
{
    _root.妃子序列 = 0;
    var 表 = _root.attachMovie("嫔妃表", "嫔妃表", 90005, {_x: 0, _y: 0});
    表.名字.text = "名字";
    表.封号.text = "封号";
    表.年龄.text = "年龄";
    表.能力.text = "外貌";
    表.经验.text = "经验";
    表.爱.text = "◎";
    var 嫔妃资料 = [];
    var __reg2 = 0;
    for (;;) 
    {
        __reg2;
        if (__reg2 >= 主角.后宫.length) 
        {
            break;
        }
        if (主角.后宫[__reg2].名字 !== undefined) 
        {
            嫔妃资料.push(主角.后宫[__reg2]);
        }
        ++__reg2;
    }
    更新妃子资料程序(嫔妃资料, 表, _root.妃子序列);
    表.上.onPress = function ()
    {
        if (_root.妃子序列 > 0) 
        {
            _root.妃子序列 = _root.妃子序列 - 10;
            更新妃子资料程序(嫔妃资料, 表, _root.妃子序列);
        }
    }
    ;
    表.下.onPress = function ()
    {
        if (_root.妃子序列 < 嫔妃资料.length - 10) 
        {
            _root.妃子序列 = _root.妃子序列 + 10;
            更新妃子资料程序(嫔妃资料, 表, _root.妃子序列);
        }
    }
    ;
}
function 更新妃子资料程序(嫔妃资料, 表, 序列)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 10) 
        {
            return;
        }
        var __reg2 = 嫔妃资料[序列 + __reg1];
        if (__reg2 === undefined) 
        {
            表["t" + __reg1]._visible = false;
        }
        else 
        {
            表["t" + __reg1]._visible = true;
            表["t" + __reg1].名字.text = __reg2.名字;
            表["t" + __reg1].年龄.text = __reg2.年龄;
            表["t" + __reg1].封号.text = __reg2.称呼;
            表["t" + __reg1].能力.text = __reg2.能力;
            表["t" + __reg1].经验.text = __reg2.经验;
            表["t" + __reg1].爱.text = __reg2.爱;
        }
        ++__reg1;
    }
}
function 子女一览程序()
{
    _root.妃子序列 = 0;
    var 表 = _root.attachMovie("子女表", "嫔妃表", 90005, {_x: 0, _y: 0});
    表.名字.text = "名字";
    表.年龄.text = "年龄";
    表.封号.text = "性别";
    表.能力.text = "母亲";
    表.经验.text = "封号";
    表.爱.text = "--";
    var 子女数据 = 所有子女数据;
    更新子女资料程序(子女数据, 表, _root.妃子序列);
    表.上.onPress = function ()
    {
        if (_root.妃子序列 > 0) 
        {
            _root.妃子序列 = _root.妃子序列 - 10;
            更新子女资料程序(子女数据, 表, _root.妃子序列);
        }
    }
    ;
    表.下.onPress = function ()
    {
        if (_root.妃子序列 < 子女数据.length - 10) 
        {
            _root.妃子序列 = _root.妃子序列 + 10;
            更新子女资料程序(子女数据, 表, _root.妃子序列);
        }
    }
    ;
}
function 更新子女资料程序(子女数据, 表, 序列)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 10) 
        {
            return;
        }
        var __reg2 = 子女数据[序列 + __reg1];
        if (__reg2 === undefined) 
        {
            表["t" + __reg1]._visible = false;
        }
        else 
        {
            表["t" + __reg1]._visible = true;
            表["t" + __reg1].名字.text = __reg2.名称;
            var __reg4 = "公主";
            if (__reg2.性别 == 0) 
            {
                __reg4 = "皇子";
            }
            else if (__reg2.性别 == 1) 
            {
                __reg4 = "公主";
            }
            表["t" + __reg1].封号.text = __reg4;
            表["t" + __reg1].能力.text = __reg2.母亲;
            表["t" + __reg1].年龄.text = __reg2.年龄;
            if (__reg2.封号 == "") 
            {
                表["t" + __reg1].经验.text = "--";
            }
            else 
            {
                表["t" + __reg1].经验.text = __reg2.封号;
            }
            if (__reg2.婚 === 0) 
            {
                表["t" + __reg1].爱.text = "○";
            }
            else 
            {
                表["t" + __reg1].爱.text = "◎";
            }
        }
        ++__reg1;
    }
}
function 子女会见程序()
{
    var __reg16 = 所有子女数据;
    var 见子女面板 = _root.attachMovie("见子女面板", "见子女面板", 90000, {_x: 0, _y: 0});
    var __reg17 = _root.attachMovie("子女请安特效", "子女请安特效", 90002, {_x: 0, _y: 0});
    if (__reg16.length == 1) 
    {
        __reg17.文本.文本.text = "皇子" + __reg16[0].名称 + "前来请安。";
    }
    else 
    {
        __reg17.文本.文本.text = __reg16[0].名称 + "等" + __reg16.length + "名子女前来请安。";
    }
    __reg17.文本.an.onPress = function ()
    {
        this._parent._parent.removeMovieClip();
        见子女面板.removeMovieClip();
    }
    ;
    var __reg6 = 0;
    var __reg10 = [];
    var __reg8 = 0;
    while (__reg8 < 5) 
    {
        var __reg4 = 0;
        while (__reg4 < 10) 
        {
            var __reg7 = random(40) - 20;
            var __reg3 = 见子女面板.attachMovie("子女素材", "子女素材" + __reg6, __reg6 + 200, {_x: __reg4 * 50 + 90 + __reg7, _y: 300 + __reg8 * 22});
            __reg3.gotoAndStop(random(4) + 1);
            __reg3._visible = false;
            __reg10.push(__reg3);
            ++__reg6;
            ++__reg4;
        }
        ++__reg8;
    }
    __reg10.sort(打乱数组程序);
    var __reg15 = 0;
    __reg8 = 0;
    for (;;) 
    {
        if (__reg8 >= __reg10.length) 
        {
            return;
        }
        var __reg9 = __reg16[__reg15 + __reg8];
        var __reg11 = __reg9.年龄;
        var __reg14 = __reg9.性别;
        var __reg5 = __reg10[__reg15 + __reg8];
        if (__reg9 !== undefined) 
        {
            __reg5._visible = true;
            if (__reg11 < 5) 
            {
                __reg5.gotoAndStop(1);
            }
            else if (__reg11 < 10) 
            {
                __reg5.gotoAndStop(2);
            }
            else 
            {
                __reg5.gotoAndStop(3);
            }
            if (__reg14 == 0) 
            {
                __reg5.子女.gotoAndStop(1);
            }
            else 
            {
                __reg5.子女.gotoAndStop(2);
            }
            if (random(2) == 0) 
            {
                __reg5._xscale = 100;
            }
            else 
            {
                __reg5._xscale = -100;
            }
        }
        ++__reg8;
    }
}

//  Action tag #7

function 学习事件结束()
{
    ++主角.当前时辰;
    时辰推进();
    学习事件.removeMovieClip();
}
function 学习事件处理(参数)
{
    _root.attachMovie("学习事件", "学习事件", 3000, {_x: 0, _y: 0});
    学习事件.gotoAndStop(参数);
    加载进步动画条的说("体力");
    if (参数 == 5) 
    {
        主角.体力 = 主角.体力 - 40;
        学习事件.文本.text = "皇上在百剧园欣赏表演。";
        学习话语和处理("才艺");
        加载进步动画条的说("才艺");
    }
    else if (参数 == 3) 
    {
        主角.体力 = 主角.体力 - 40;
        学习事件.文本.text = "皇上在武道场锻炼身体。";
        学习话语和处理("武术");
        加载进步动画条的说("武术");
    }
    else if (参数 == 1) 
    {
        学习事件.文本.text = "皇上在金龙殿休息。";
        if (random(4) == 0) 
        {
            var __reg3 = [];
            var __reg2 = 0;
            while (__reg2 < 主角.后宫.length) 
            {
                if (主角.后宫[__reg2].名字 !== undefined) 
                {
                    __reg3.push(主角.后宫[__reg2].称呼);
                }
                ++__reg2;
            }
            var __reg5 = __reg3[random(__reg3.length)];
            学习事件.文本.text = __reg5 + "娘娘前来伺候皇上休息。";
            _root.主角.健康 = _root.主角.健康 + 5;
            if (_root.主角.健康 > 100) 
            {
                _root.主角.健康 = 100;
            }
        }
        _root.主角.体力 = _root.主角.体力 + 220;
        if (_root.主角.体力 > _root.主角.体力上限) 
        {
            _root.主角.体力 = _root.主角.体力上限;
            学习事件.文本.text = 学习事件.文本.text + "\n体力恢复全满。";
        }
        else 
        {
            学习事件.文本.text = 学习事件.文本.text + "\n体力恢复220";
        }
        加载进步动画条的说("体力");
    }
    else if (参数 == 2) 
    {
        主角.体力 = 主角.体力 - 40;
        学习事件.文本.text = "皇上在御书园读书。";
        var __reg6 = random(成败几率);
        学习话语和处理("智慧");
        加载进步动画条的说("智慧");
    }
    else if (参数 == 4) 
    {
        主角.体力 = 主角.体力 - 30;
        学习事件.文本.text = "前往慈宁宫向太后请安。";
        主角.道德 = 主角.道德 + (random(4) + 3);
        加载进步动画条的说("道德");
    }
    else if (参数 == 6) 
    {
        主角.体力 = 主角.体力 - 40;
        学习事件.文本.text = "皇上在琴棋阁下棋弹琴。";
        学习话语和处理("魅力");
        加载进步动画条的说("魅力");
    }
    更新资料();
}
function 学习话语和处理(属性)
{
    学习事件.文本.text = 学习事件.文本.text + "\n";
    var __reg2 = random(成败几率);
    if (__reg2 == 0) 
    {
        var __reg3 = 最差的称呼[random(最差的称呼.length)];
        学习事件.文本.text = 学习事件.文本.text + (__reg3 + "\n" + 属性 + "稍微提高。");
        主角[属性] = 主角[属性] + 1;
        return;
    }
    if (__reg2 == 1) 
    {
        __reg3 = 中间的称呼[random(中间的称呼.length)];
        学习事件.文本.text = 学习事件.文本.text + (__reg3 + "\n" + 属性 + "略微提高。");
        主角[属性] = 主角[属性] + 3;
        return;
    }
    __reg3 = 最好的称呼[random(最好的称呼.length)];
    学习事件.文本.text = 学习事件.文本.text + (__reg3 + "\n" + 属性 + "明显提高。");
    主角[属性] = 主角[属性] + 5;
}
function 加载进步动画条的说(参数)
{
    var __reg2 = _root.皇宫.跳板[参数 + "条"].条;
    __reg2._parent.attachMovie("属性进步动画", "属性进步动画", 900, {_x: 0, _y: 0});
}
成败几率 = 6;
最好的称呼 = ["触类旁通", "劲力十足", "颇有领悟", "勤奋专心"];
中间的称呼 = ["心不在焉", "心有杂念"];
最差的称呼 = ["意兴阑珊", "心神不一"];

//  Action tag #8

function 城市等级发展()
{
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= _root.所有城池.length) 
        {
            return;
        }
        if (_root.所有城池[__reg2].归属 == 8) 
        {
            城市的信息这里要计算下(_root.所有城池[__reg2]);
        }
        ++__reg2;
    }
}
function 城市的信息这里要计算下(城市)
{
    var __reg2 = (城市.人口 + 城市.壮丁) / 10000;
    var __reg3 = 城市.寺庙;
    var __reg4 = 城市.市集;
    var __reg9 = 城市.城墙;
    var __reg5 = 城市.衙门;
    var __reg7 = 城市.义仓;
    var __reg6 = 城市.校场;
    var __reg11 = 城市.民心;
    var __reg8 = 城市.行宫;
    if (0 != (0 != (0 != (0 != (0 != (0 != (0 != __reg2 > 100 & 0 != __reg3 > 5) & 0 != __reg4 > 12) & 0 != __reg9 > 5) & 0 != __reg5 > 4) & 0 != __reg7 > 5) & 0 != __reg6 > 10) & 0 != __reg8 > 2) 
    {
        城市.等级 = 5;
        if (城市.升级开关 == 0) 
        {
            城市.升级开关 = 1;
            城市升级喜报 = 1;
            var __reg10 = 颜色代码(城市.名称, "ff0000") + "知府来报:\n" + 城市.名称 + "百姓安康，经济飞速发展。\n" + 颜色代码("已发展至极富裕", "ff0000") + "。\n百姓高呼：吾皇万岁万岁万万岁。";
            太监报告所有事件.push([__reg10, "快乐", 5, 0, 2, 1]);
        }
        return;
    }
    if (0 != (0 != (0 != (0 != (0 != (0 != (0 != __reg2 > 70 & 0 != __reg3 > 4) & 0 != __reg4 > 9) & 0 != __reg9 > 3) & 0 != __reg5 > 3) & 0 != __reg7 > 4) & 0 != __reg6 > 6) & 0 != __reg8 > 1) 
    {
        城市.等级 = 4;
        return;
    }
    if (0 != (0 != (0 != (0 != (0 != (0 != (0 != __reg2 > 50 & 0 != __reg3 > 3) & 0 != __reg4 > 6) & 0 != __reg9 > 2) & 0 != __reg5 > 2) & 0 != __reg7 > 3) & 0 != __reg6 > 4) & 0 != __reg8 > 1) 
    {
        城市.等级 = 3;
        return;
    }
    if (0 != (0 != (0 != (0 != (0 != __reg2 > 30 & 0 != __reg3 > 2) & 0 != __reg4 > 3) & 0 != __reg5 > 1) & 0 != __reg7 > 1) & 0 != __reg6 > 2) 
    {
        城市.等级 = 2;
        return;
    }
    城市.等级 = 1;
}
function 破坏该城市建筑(数量, 城市)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 数量) 
        {
            return;
        }
        开始破坏城市(城市);
        ++__reg1;
    }
}
function 开始破坏城市(城市)
{
    var __reg1 = [];
    var __reg3 = 城市.寺庙;
    var __reg5 = 城市.市集;
    var __reg7 = 城市.城墙;
    var __reg8 = 城市.衙门;
    var __reg10 = 城市.义仓;
    var __reg9 = 城市.校场;
    var __reg11 = 城市.民心;
    var __reg4 = 城市.行宫;
    if (__reg3 > 0) 
    {
        __reg1.push("寺庙");
    }
    if (__reg5 > 0) 
    {
        __reg1.push("市集");
    }
    if (__reg7 > 0) 
    {
        __reg1.push("城墙");
    }
    if (__reg8 > 0) 
    {
        __reg1.push("衙门");
    }
    if (__reg10 > 0) 
    {
        __reg1.push("义仓");
    }
    if (__reg9 > 0) 
    {
        __reg1.push("校场");
    }
    if (__reg4 > 0) 
    {
        __reg1.push("行宫");
    }
    if (__reg1.length > 0) 
    {
        var __reg6 = __reg1[random(__reg1.length)];
        城市[__reg6] = 城市[__reg6] - 1;
    }
}

//  Action tag #9

function 季节计算程序()
{
    if (季 == 1) 
    {
        季节 = "春";
        return;
    }
    if (季 == 2) 
    {
        季节 = "夏";
        return;
    }
    if (季 == 3) 
    {
        季节 = "秋";
        return;
    }
    if (季 == 4) 
    {
        季节 = "冬";
    }
}
function 游戏回合推进()
{
    刷新所有的阵营数据();
    全人才属性优化();
    主角.当前时辰 = 0;
    if (旬 == "上旬") 
    {
        旬 = "下旬";
    }
    else 
    {
        旬 = "上旬";
        季 = 季 + 1;
    }
    if (国家.训练周期 > 0) 
    {
        --国家.训练周期;
        国家.训练 = 国家.训练 + 2;
        if (国家.训练 > 100) 
        {
            国家.训练 = 100;
        }
    }
    敌人AI程序();
    每月的官员奏折 = [];
    每月官员的弹劾奏折();
    每月丞相奏报 = [];
    var __reg2 = 0;
    while (__reg2 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg2].归属 == 8) 
        {
            if (国家.调查经费 > 1000) 
            {
                国家.调查经费 = 国家.调查经费 - 1000;
                _root.所有城池[__reg2].调查事件 = 1;
            }
            else 
            {
                _root.所有城池[__reg2].调查事件 = 0;
            }
        }
        ++__reg2;
    }
    每月的军事奏折 = "";
    if (主角.战报 !== "") 
    {
        每月的军事奏折 = 主角.战报;
        主角.战报 = "";
    }
    每个月的各地收支();
    更新每个月的收益();
    时辰推进();
    等待的大黑布();
}
function 电脑自动建城()
{
    var __reg4 = 0;
    for (;;) 
    {
        if (__reg4 >= _root.所有城池.length) 
        {
            return;
        }
        if (_root.所有城池[__reg4].归属 == 8) 
        {
            var __reg2 = 0;
            while (__reg2 < _root.所有人才.length) 
            {
                if (0 != (_root.所有人才[__reg2].类 == "知府") & 0 != (_root.所有人才[__reg2].城.id == _root.所有城池[__reg4].id)) 
                {
                    var __reg5 = _root.所有人才[__reg2];
                }
                ++__reg2;
            }
            if (__reg5.智慧 > 80) 
            {
                __reg6 = 1;
            }
            else 
            {
                var __reg6 = random(2);
            }
            if (__reg6 != 0) 
            {
                var __reg3 = _root.所有城池[__reg4];
                if (__reg3.方针 == 1) 
                {
                    if (0 != (季 == 1) | 0 != (季 == 3)) 
                    {
                        发展经济的建造(__reg3);
                    }
                }
                else if (__reg3.方针 == 2) 
                {
                    if (0 != (季 == 1) | 0 != (季 == 3)) 
                    {
                        发展军事的建造(__reg3);
                    }
                }
                else if (__reg3.方针 == 3) 
                {
                    if (季 == 1) 
                    {
                        节约发展的建造(__reg3);
                    }
                }
            }
        }
        ++__reg4;
    }
}
function 发展经济的建造(城市)
{
    var __reg1 = random(5);
    if (__reg1 == 0) 
    {
        城市.寺庙 = 城市.寺庙 + 1;
        return;
    }
    if (__reg1 == 1) 
    {
        城市.市集 = 城市.市集 + 1;
        return;
    }
    if (__reg1 == 2) 
    {
        城市.衙门 = 城市.衙门 + 1;
        return;
    }
    if (__reg1 == 3) 
    {
        城市.义仓 = 城市.义仓 + 1;
        return;
    }
    if (__reg1 == 4) 
    {
        城市.校场 = 城市.校场 + 1;
    }
}
function 发展军事的建造(城市)
{
    var __reg1 = random(4);
    if (__reg1 == 0) 
    {
        城市.城墙 = 城市.城墙 + 1;
        return;
    }
    if (__reg1 == 1) 
    {
        城市.衙门 = 城市.衙门 + 1;
        return;
    }
    if (__reg1 == 2) 
    {
        城市.校场 = 城市.校场 + 1;
        return;
    }
    if (__reg1 == 3) 
    {
        城市.义仓 = 城市.义仓 + 1;
    }
}
function 更新每个月的收益()
{
    国家.可用民夫 = 国家.民夫;
    电脑自动建城();
    if (国家.金钱 < 0) 
    {
        主角.负数时间 = 主角.负数时间 + 1;
    }
    else 
    {
        主角.负数时间 = 0;
    }
    if (主角.祭祀 > 0) 
    {
        --主角.祭祀;
    }
    var __reg9 = 0;
    var __reg6 = 0;
    var __reg7 = 0;
    var __reg5 = 0;
    var __reg8 = 0;
    var __reg3 = 0;
    var __reg1 = 0;
    while (__reg1 < 所有城池.length) 
    {
        if (旬 == "上旬") 
        {
            var __reg2 = Math.round(所有城池[__reg1].壮丁 * ((100 - 国家.税率) * 0.001));
            if (__reg2 > 4000) 
            {
                __reg2 = 4000;
            }
            所有城池[__reg1].人口 = 所有城池[__reg1].人口 + __reg2;
            所有城池[__reg1].壮丁 = 所有城池[__reg1].壮丁 + __reg2;
        }
        更新城市的属性值(所有城池[__reg1]);
        所有城池[__reg1].建设开关 = 0;
        __reg3 = __reg3 + 1;
        ++__reg1;
    }
    __reg1 = 0;
    while (__reg1 < 所有城池.length) 
    {
        if (所有城池[__reg1].归属 !== 8) 
        {
            if (所有城池[__reg1].士兵 < 所有城池[__reg1].士兵上限) 
            {
                所有城池[__reg1].士兵 = Math.round(所有城池[__reg1].士兵上限 * 0.01 + 所有城池[__reg1].士兵);
            }
            else 
            {
                所有城池[__reg1].士兵 = 所有城池[__reg1].士兵上限;
            }
        }
        ++__reg1;
    }
    国家.犯人 = 国家.犯人 + __reg3 * (random(100) + 100);
    var __reg4 = 收支表程序();
    我的城池 = [];
    __reg1 = 0;
    while (__reg1 < 所有城池.length) 
    {
        if (所有城池[__reg1].归属 == 8) 
        {
            我的城池.push(所有城池[__reg1]);
            所有城池[__reg1].普查间隔 = 所有城池[__reg1].普查间隔 + (random(100) + 100);
        }
        ++__reg1;
    }
    国库钱数变动的程序(__reg4);
    加载进步动画条的说("金钱");
    主角.寿命 = 主角.寿命 - 1;
    更新季节的程序呢();
    恢复特殊开关的开关();
    更新各城府的数据();
    更新资料();
}
function 更新季节的程序呢()
{
    if (季 > 4) 
    {
        季 = 1;
        年 = 年 + 1;
        过年的程序();
    }
    if (季 == 1) 
    {
        季节 = "春";
        return;
    }
    if (季 == 2) 
    {
        季节 = "夏";
        return;
    }
    if (季 == 3) 
    {
        季节 = "秋";
        return;
    }
    if (季 == 4) 
    {
        季节 = "冬";
    }
}
function 更新皇宫背景图的程序()
{
    if (主角.当前时辰 < 2) 
    {
        if (季节 == "春") 
        {
            皇宫.宫殿图.gotoAndStop(1);
        }
        else if (季节 == "夏") 
        {
            皇宫.宫殿图.gotoAndStop(2);
        }
        else if (季节 == "秋") 
        {
            皇宫.宫殿图.gotoAndStop(3);
        }
        else if (季节 == "冬") 
        {
            皇宫.宫殿图.gotoAndStop(4);
        }
    }
    else if (主角.当前时辰 == 2) 
    {
        if (季节 == "冬") 
        {
            皇宫.宫殿图.gotoAndStop(7);
        }
        else 
        {
            皇宫.宫殿图.gotoAndStop(5);
        }
    }
    else if (主角.当前时辰 == 3) 
    {
        if (季节 == "冬") 
        {
            皇宫.宫殿图.gotoAndStop(8);
        }
        else 
        {
            皇宫.宫殿图.gotoAndStop(6);
        }
    }
    更新时辰的执行程序();
    皇宫.时辰.text = 时辰;
}
function 过年的程序()
{
    主角.年龄 = 主角.年龄 + 1;
    子女与后宫女人的年龄加大();
    官员年龄事件();
}
function 作弊()
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 所有人才.length) 
        {
            return;
        }
        所有人才[__reg1].年龄 = 66;
        所有人才[__reg1].武术 = 99;
        所有人才[__reg1].智慧 = 99;
        所有人才[__reg1].清廉 = 99;
        所有人才[__reg1].野心 = 0;
        所有人才[__reg1].忠诚 = 99;
        所有人才[__reg1].经验 = 99;
        ++__reg1;
    }
}
function 官员年龄事件()
{
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 所有人才.length) 
        {
            return;
        }
        所有人才[__reg2].年龄 = 所有人才[__reg2].年龄 + 1;
        if (所有人才[__reg2].年龄 > 61) 
        {
            取名(1);
            var __reg3 = 临时名字;
            if (random(2) == 0) 
            {
                __reg4 = 所有人才[__reg2].名字 + "病故，该职位吏部推荐由" + __reg3 + "担当。";
            }
            else 
            {
                var __reg4 = 所有人才[__reg2].名字 + "上奏，年老体衰。辞官回乡养老。\n该职位吏部推荐由" + __reg3 + "担当。";
            }
            太监报告所有事件.push([__reg4, "快乐", 0, 0, 5]);
            _root.记载入官员奏折的程序(__reg4);
            官员属性更换程序(所有人才[__reg2], __reg3);
        }
        ++__reg2;
    }
}
function 官员属性更换程序(人物, 新名字)
{
    人物.年龄 = random(25) + 25;
    人物.武术 = random(40) + 50;
    人物.智慧 = random(40) + 50;
    人物.清廉 = random(40) + 50;
    人物.野心 = random(50);
    人物.忠诚 = random(55) + 20;
    人物.经验 = random(99);
    人物.爵位 = "无";
    人物.名字 = 新名字;
}
每月丞相奏报 = [];

//  Action tag #10

function 死亡判定(参数)
{
    _root.烧掉截图(_root);
    var 结局图 = _root.attachMovie("结局图片面板", "结局图", 17000, {_x: 0, _y: 0});
    var 分数 = 结局分数计算();
    var __reg2 = "";
    if (年 == 1) 
    {
        __reg2 = _root.主角.年号 + "元年 " + 季节 + "季 " + 旬;
    }
    else 
    {
        __reg2 = _root.主角.年号 + "" + 年 + "年 " + 季节 + "季 " + 旬;
    }
    if (参数 == 0) 
    {
        结局图.gotoAndStop(2);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "皇帝寿终正寝。在位" + (_root.主角.年龄 - 15) + "年。";
        var __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (参数 == 1) 
    {
        结局图.gotoAndStop(2);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "皇帝寿终正寝。在位" + (_root.主角.年龄 - 15) + "年。";
        __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (参数 == 2) 
    {
        结局图.gotoAndStop(1);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "在位" + (_root.主角.年龄 - 15) + "年。禅让，太子即日登基。";
        __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (参数 == 3) 
    {
        结局图.gotoAndStop(2);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "在位" + (_root.主角.年龄 - 15) + "年。刺客行刺，驾崩。";
        __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (参数 == 4) 
    {
        结局图.gotoAndStop(3);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "在位" + (_root.主角.年龄 - 15) + "年。国库亏空严重，国家机器停止运转。";
        __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                分数 = 9999;
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (参数 == 5) 
    {
        结局图.gotoAndStop(4);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "在位" + (_root.主角.年龄 - 15) + "年。京城沦陷，死于混战之中。";
        __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (参数 == 6) 
    {
        结局图.gotoAndStop(3);
        var 死亡内容 = __reg2 + "。" + _root.主角.名字 + "在位" + (_root.主角.年龄 - 15) + "年。宰相控制朝廷，护卫冲入你的寝宫，乱刀砍死。";
        __reg4 = 死亡内容;
        结局图.文本.text = __reg4;
        结局图.an.onPress = function ()
        {
            结局图.文本.text = "游戏已经结束，点击进入皇帝评价。";
            结局图.an.onPress = function ()
            {
                结局面板总程序(分数, 死亡内容);
                结局图.removeMovieClip();
            }
            ;
        }
        ;
    }
}
function 城市沦陷程序()
{
    死亡判定(5);
}
function 宰相篡位程序()
{
    死亡判定(6);
}
function 结局面板总程序(分数, 死亡内容)
{
    _root.烧掉截图(_root);
    _root.皇宫._visible = false;
    var __reg6 = _root.attachMovie("结局的主面板", "结局的主面板", 18000, {_x: 0, _y: 0});
    __reg6.attachMovie("红色小条", "大事笔录", 500, {_x: 690, _y: 60});
    __reg6.attachMovie("红色小条", "嫔妃列表", 501, {_x: 690, _y: 100});
    __reg6.attachMovie("红色小条", "子女列表", 502, {_x: 690, _y: 140});
    __reg6.attachMovie("红色小条", "民生列表", 503, {_x: 690, _y: 180});
    __reg6.attachMovie("红色小条", "游戏论坛", 503, {_x: 690, _y: 180});
    __reg6.游戏论坛.文本.text = "游戏论坛";
    __reg6.游戏论坛.an.onPress = function ()
    {
        getURL("http://my.4399.com/forums-mtag-op-list-tagid-81100-kind-547.html", "_blank");
    }
    ;
    __reg6.大事笔录.文本.text = "大事笔录";
    __reg6.大事笔录.an.onPress = function ()
    {
        大事笔记程序();
        _root.说明面板面板.swapDepths(18006);
    }
    ;
    __reg6.嫔妃列表.文本.text = "嫔妃列表";
    __reg6.嫔妃列表.an.onPress = function ()
    {
        嫔妃一览程序();
        _root.嫔妃表.swapDepths(18006);
    }
    ;
    __reg6.子女列表.文本.text = "子女列表";
    __reg6.子女列表.an.onPress = function ()
    {
        子女一览程序();
        _root.嫔妃表.swapDepths(18006);
    }
    ;
    __reg6.民生列表.文本.text = "全国一览";
    __reg6.民生列表.an.onPress = function ()
    {
        _root.attachMovie("民生面板", "民生面板", 1000, {_x: 0, _y: 0});
        刷新民生面板(_root.民生面板);
        _root.民生面板.swapDepths(18006);
    }
    ;
    刷新阵营几城的程序();
    武力分数 = 0;
    var __reg4 = 0;
    while (__reg4 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg4].归属 == 8) 
        {
            武力分数 = 武力分数 + 4;
        }
        ++__reg4;
    }
    var __reg2 = "";
    var __reg3 = "";
    var __reg10 = 0;
    var __reg9 = 70;
    var __reg8 = 140;
    var __reg7 = 200;
    if (0 != 武力分数 >= 120 & 0 != 分数 >= __reg7) 
    {
        __reg2 = "唐太宗";
        __reg3 = "唐太宗李世民，是唐朝第二位皇帝，他名字的意思是“济世安民”。汉族，陇西成纪人，祖籍赵郡隆庆，政治家、军事家、书法家、诗人。即位为帝后，积极听取群臣的意见、努力学习文治天下，成功转型为中国史上最出名的政治家与明君之一。唐太宗开创了历史上的“贞观之治”，经过主动消灭各地割据势力，虚心纳谏、在国内厉行节约、使百姓休养生息，终于使得社会出现了国泰民安的局面。为后来全盛的开元盛世奠定了重要的基础，将中国传统农业社会推向鼎盛时期。";
    }
    else if (0 != 武力分数 >= 120 & 0 != 分数 >= __reg8) 
    {
        __reg2 = "康熙皇帝";
        __reg3 = "清圣祖仁皇帝爱新觉罗·玄烨（1654.5.4~1722.12.20），即康熙帝，清朝第四位皇帝、清定都北京后第二位皇帝。年号康熙：康，安宁；熙，兴盛－－取万民康宁、天下熙盛的意思。他8岁登基，在位61年，是中国历史上在位时间最长的皇帝。他是我国统一的多民族国家的捍卫者，奠下了清朝兴盛的根基，开创出康乾盛世的大局面，是一位英明的君主、伟大的政治家。谥号合天弘运文武睿哲恭俭宽裕孝敬诚信功德大成仁皇帝。";
    }
    else if (0 != 武力分数 >= 120 & 0 != 分数 >= __reg9) 
    {
        __reg2 = "秦始皇";
        __reg3 = "秦始皇（前259—前210年），嬴姓赵氏，名政，因生于赵都邯郸，故又称赵政。中国历史上最伟大的政治家、改革家、战略家、军事统帅。首位完成中国统一的秦朝的开国皇帝，秦庄襄王之子，十三岁即王位，三十九岁称皇帝，在位三十七年。秦始皇建立皇帝制度，中央实施三公九卿，地方废除分封制，代以郡县制，统一文字和度量衡，北击匈奴，南征百越，修筑万里长城。把中国推向了大一统时代，为建立专制主义中央集权制度开创了新局面，对中国和世界历史产生了深远影响，奠定了中国两千余年政治制度的基本格局。被明代思想家李贽誉为“千古一帝”。";
    }
    else if (0 != 武力分数 >= 120 & 0 != 分数 >= __reg10) 
    {
        __reg2 = "成吉思汗";
        __reg3 = "孛儿只斤·铁木真，蒙古帝国可汗，汗号“成吉思汗”。世界史上杰出的政治家、军事家。1271年元朝建立后，忽必烈追尊成吉思汗为元朝皇帝，庙号太祖，谥号法天启运圣武皇帝。在位期间多次发动对外征服战争，征服地域西达西亚、中欧的黑海海滨。";
    }
    else if (0 != 武力分数 >= 100 & 0 != 分数 >= __reg7) 
    {
        __reg2 = "雍正皇帝";
        __reg3 = "清世宗爱新觉罗·胤禛（公元1678年—公元1735年），满族，母为康熙孝恭仁皇后乌雅氏，清圣祖玄烨第四子，是清朝入关后第三位皇帝，1722—1735年在位，年号雍正，死后葬于清西陵之泰陵，庙号世宗，谥号敬天昌运建中表正文武英明宽仁信毅睿圣大孝至诚宪皇帝。";
    }
    else if (0 != 武力分数 >= 100 & 0 != 分数 >= __reg8) 
    {
        __reg2 = "汉武帝";
        __reg3 = "刘彻，即汉世宗孝武皇帝（前156年－前87年），汉朝的第七位天子，政治家、战略家。刘彻是刘邦的重孙、汉景帝刘启的第十子。七岁时被册立为皇太子，十六岁登基，在位五十四年（前141年－前87年），在位期间数次大破匈奴、吞并朝鲜、遣使出使西域。独尊儒术，首创年号。他开拓汉朝最大版图，功业辉煌。但是，汉武帝连年征战，耗尽了国库，导致民生凋敝，在位晚年发生农民暴动，并且在巫蛊案中冤杀无辜。公元前87年刘彻崩于五柞宫，享年70岁，葬于茂陵，谥号“孝武”，庙号世宗。";
    }
    else if (0 != 武力分数 >= 100 & 0 != 分数 >= __reg9) 
    {
        __reg2 = "乾隆皇帝";
        __reg3 = "清高宗爱新觉罗·弘历（1711－1799年），清朝第六位皇帝，定都北京后第四位皇帝。年号乾隆，寓意“天道昌隆”。25岁登极，在位六十年，退位后当了三年太上皇，实际掌握最高权力长达六十三年零四个月，是中国历史上执政时间最长、年寿最高的皇帝。乾隆帝在位期间平定大小和卓叛乱、巩固多民族国家的发展，六次下江南，文治武功兼修。并且当时文化、经济、手工业都是极盛时代，他在发展清朝康乾盛世局面作出了重要贡献，确为一代有为之君。庙号高宗，谥号法天隆运至诚先觉体元立极敷文奋武钦明孝慈神圣纯皇帝。葬于清东陵裕陵。";
    }
    else if (0 != 武力分数 >= 100 & 0 != 分数 >= __reg10) 
    {
        __reg2 = "隋炀帝";
        __reg3 = "隋炀帝杨广（569年－618年）是隋朝的第二任皇帝，唐时谥炀皇帝，其孙皇泰帝杨侗谥为世祖明皇帝，夏主窦建德谥闵皇帝。一名英，小字阿。隋文帝杨坚次子，母文献独孤皇后。开皇二十年（600年）十一月立为太子，仁寿四年（604年）七月继位。即位之后，对于国政有恢宏的抱负，并且戮力付诸实现。他在位期间修建大运河，营造东都洛阳城，开拓疆土畅通丝绸之路，推动大建设，开创科举，亲征吐谷浑，三征高句丽等。";
    }
    else if (0 != 武力分数 >= 80 & 0 != 分数 >= __reg7) 
    {
        __reg2 = "隋文帝";
        __reg3 = "杨坚，隋朝开国皇帝。汉族，弘农郡华阴（今陕西省华阴县）人。汉太尉杨震十四世孙。他在位期间成功地统一了百年严重分裂的中国，开创先进的选官制度，发展文化经济。使得中国成为盛世之国。文帝在位期间，隋朝开皇年间疆域辽阔，人口达到700余万户，是人类历史上农耕文明的颠峰时期。杨坚是西方人眼中最伟大的中国皇帝。被尊为“圣人可汗”。";
    }
    else if (0 != 武力分数 >= 80 & 0 != 分数 >= __reg8) 
    {
        __reg2 = "明太祖";
        __reg3 = "明太祖朱元璋（1328年-1398年），汉族，明朝开国皇帝。濠州钟离（今安徽凤阳）人。原名朱重八，后取名兴宗。25岁时参加郭子兴领导的红巾军反抗元朝暴政，龙凤七年（1361年)受封吴国公，十年自称吴王。元至正二十八年(1368年)，在基本击破各路农民起义军和扫平元的残余势力后，于南京称帝，国号大明，年号洪武，建立了全国统一的封建政权。朱元璋统治时期被称为“洪武之治”。庙号太祖，谥号开天行道肇纪立极大圣至神仁文义武俊德成功高皇帝。葬于南京明孝陵。";
    }
    else if (0 != 武力分数 >= 80 & 0 != 分数 >= __reg9) 
    {
        __reg2 = "明成祖";
        __reg3 = "明成祖朱棣（1360－1424年），明朝第三位皇帝，明太祖朱元璋第四子。生于应天，时事征伐，并受封为燕王，后发动靖难之役，起兵攻打建文帝。于1402年称帝，改元永乐。他五次亲征蒙古，巩固了北部边防，维护了中国版图的统一与完整。曾多次派郑和下西洋，加强了中外友好往来。并编修《永乐大典》，疏浚大运河。于1421年迁都北京，北京正式成为汉族王朝的首都。其在位期间经济发展迅速，国力强盛，史称“永乐盛世”。他一生文治武功赫赫，是一位伟大的英雄人物。庙号成祖，谥号启天弘道高明肇运圣武神功纯仁至孝文皇帝，葬于十三陵之长陵。";
    }
    else if (0 != 武力分数 >= 80 & 0 != 分数 >= __reg10) 
    {
        __reg2 = "晋武帝";
        __reg3 = "晋武帝司马炎（236－290），字安世，河内温（今河南温县）人。晋朝的开国君主，公元265－290年在位。公元265年他继承父亲司马昭的晋王之位，数月后逼迫魏元帝曹奂将帝位禅让给自己，国号大晋，建都洛阳。公元279年他又命杜预、王濬等人分兵伐吴，于次年灭吴，统一全国。建国后采取一系列经济措施以发展生产， 太康元年，颁行户调式，包括占田制、户调制和品官占田荫客制。太康年间出现一片繁荣景象，史称“太康之治”。但灭吴后，逐渐怠惰政事 ，奢侈腐化。 公元290年病逝，谥号武皇帝，庙号世祖，葬峻阳陵。";
    }
    else if (0 != 武力分数 >= 60 & 0 != 分数 >= __reg7) 
    {
        __reg2 = "汉文帝";
        __reg3 = "刘恒【前203年腊月十一（1月15日）—前157年6月】，是汉朝的第3个皇帝（不包括两位汉少帝的情况下），汉族，汉高祖刘邦第4子，汉惠帝刘盈弟，母薄姬，被立为代王，建都晋阳。惠帝死后，吕后立非正统的少帝。吕后死，吕产、吕禄企图发动政变夺取帝位。刘恒在周勃、陈平支持下诛灭了诸吕势力，登上皇帝宝座，是为文帝，在位23年。汉文帝在位期间，是汉朝从国家初定走向繁荣昌盛的过渡时期。他和他儿子汉景帝统治时期，政治稳定，经济生产得到显著发展，历来被视为封建社会的“治世”，被史家誉为“文景之治”。";
    }
    else if (0 != 武力分数 >= 60 & 0 != 分数 >= __reg8) 
    {
        __reg2 = "汉光武帝";
        __reg3 = "汉世祖光武帝刘秀（公元前6年—公元57年），南阳蔡阳人，东汉王朝开国皇帝。新末天下大乱，刘秀与兄在舂陵起兵，并以“复兴汉室”为号召，与众豪杰并争天下。在昆阳之战一举摧垮新莽四十二万大军，成为了灭亡新王朝的关键人物。后刘秀受更始所遣，前往河北镇慰州郡，趁机一举平定了河北，并于更始三年于河北登基称帝，重兴汉室江山。先后平灭了绿林、赤眉、隗嚣等割据政权，天下得以再次一统。刘秀在位三十三年，大兴儒学、推崇气节，使后汉成为“风化最美、儒学最盛”的时代，毛主席评价刘秀为最有学问、最会打仗、最会用人的皇帝。";
    }
    else if (0 != 武力分数 >= 60 & 0 != 分数 >= __reg9) 
    {
        __reg2 = "宋太祖";
        __reg3 = "宋太祖赵匡胤（927－976），中国北宋王朝的建立者，汉族，涿州（今河北）人。出身军人家庭，赵弘殷次子。948年，投后汉枢密使郭威幕下，屡立战功。951年，郭威称帝，建立后周，赵匡胤任禁军军官，周世宗时官至殿前都点检。960年，他以“镇定二州”的名义，谎报契丹联合北汉大举南侵，领兵出征，发动陈桥兵变，黄袍加身，代周称帝，建立宋朝，定都开封。在位16年。在位期间，加强中央集权，提倡文人政治，开创了中国的文治盛世，是一位英明仁慈的皇帝，是推动历史发展的杰出人物。";
    }
    else if (0 != 武力分数 >= 60 & 0 != 分数 >= __reg10) 
    {
        __reg2 = "商纣王";
        __reg3 = "帝辛，名受，后世人称殷纣王。为帝乙少子，以母为正后，辛为嗣。帝辛天资聪颖，闻见甚敏，材力过人，有倒曳九牛之威，具抚梁易柱之力，深得帝乙欢心。帝辛继位后，重视农桑，社会生产力发展，国力强盛。发起对东夷用兵，打退了东夷向中原扩张，把商朝势力扩展到江淮一带，国土扩大到山东、安徽、江苏、浙江、福建沿海。帝辛于公元前1075年即位，公元前1046去世，在位30年，后世评价褒贬不一。";
    }
    else if (0 != 武力分数 >= 40 & 0 != 分数 >= __reg7) 
    {
        __reg2 = "唐玄宗";
        __reg3 = "李隆基（685－762），即历史上著名的唐玄宗（庙号为“玄宗”），亦称唐明皇。西元712年至756年在位。唐睿宗李旦第三子，母窦德妃。谥为“至道大圣大明孝皇帝”，故亦称为“唐明皇”。清朝为避讳康熙皇帝之名（玄烨），故而多称其为唐明皇。李隆基在位期间开创了唐朝乃至中国历史上的最为鼎盛的时期，史称“开元盛世”。但是唐明皇在位后期（天宝十四年）爆发安史之乱，使得唐朝国势逐渐走向衰落。";
    }
    else if (0 != 武力分数 >= 40 & 0 != 分数 >= __reg8) 
    {
        __reg2 = "汉明帝";
        __reg3 = "即汉明帝，性格刚毅严酷。父刘秀，母阴丽华。初名阳，封东海王。建武十九年，立为皇太子，建武中元二年二月，即皇帝位。明帝即位后，一切遵奉光武制度。汉明帝提倡儒学，注重刑名文法，为政苛察，总揽权柄，权不借下。他严令后妃之家不得封侯与政，对贵戚功臣也多方防范。同时，他也致力消除北匈奴的威胁。永平十六年，命窦固征伐北匈奴。其后，又以班超出使西域，由是西域诸国皆遣子入侍。次年，复置西域都护。此外，随着对外交往的正常发展，佛教已在西汉末年开始传入中国。明帝之世，吏治比较清明，境内安定。";
    }
    else if (0 != 武力分数 >= 40 & 0 != 分数 >= __reg9) 
    {
        __reg2 = "宋高宗";
        __reg3 = "宋高宗（1107年－1187年），名赵构，字德基，南宋开国皇帝，北宋皇帝宋徽宗第九子，宋钦宗之弟，曾被封为“康王”。赵构政治上昏庸无能，然精于书法，善真、行、草书，笔法洒脱婉丽，自然流畅，颇得晋人神韵，传世墨迹有《草书洛神赋》、《正草千字文》及《光明塔碑》等。";
    }
    else if (0 != 武力分数 >= 40 & 0 != 分数 >= __reg10) 
    {
        __reg2 = "夏桀";
        __reg3 = "夏桀，又名癸、履癸，商汤把他谥号桀（凶猛的意思）。桀是夏朝第16代君主发之子，在位52年（前1818—前1766）。履癸文武双全，赤手可以把铁钩拉直，但荒淫无度，暴虐无道。生卒年不详。商汤在名相伊尹谋划下，起兵伐桀，汤先攻灭了桀的党羽韦国、顾国，击败了昆吾国，然后直逼夏的重镇鸣条（今山西省安邑县西）。后又被汤追上俘获，放逐在此。夏桀在位52年，国亡，被放逐而饿死，为历史上著名的暴君。";
    }
    else if (0 != 武力分数 >= 0 & 0 != 分数 >= __reg7) 
    {
        __reg2 = "宋神宗";
        __reg3 = "宋神宗，英宗长子，谥号体元显道法古立宪帝德王功英文烈武钦仁圣孝皇帝，英宗赵曙长子。嘉佑八年（1063）受封光国公；后又加同中书门下平章事，受封淮阳郡王；治平元年（1064）进封颍王。治平三年立为皇太子，次年即帝位，是为神宗，时年20岁。1067年-1085年在位。即位后，由于对疲弱的政治深感不满，且他素来都欣赏王安石的才干，故即位后命王安石推行变法，以期振兴北宋王朝，史称王安石变法，又称熙宁变法。由于改革操之过急，不得其法，最终失败收场，不过神宗还是维持新法将近二十年。";
    }
    else if (0 != 武力分数 >= 0 & 0 != 分数 >= __reg8) 
    {
        __reg2 = "明思宗";
        __reg3 = "明思宗朱由检（1610年－1644年)，明朝第十六位皇帝，明朝亡国之君。明光宗第五子，明熹宗异母弟，母为淑女刘氏，年号崇祯。于1622（天启二年）年被册封为信王。1627－1644在位，年号“崇祯”，在位期间大力铲除阉党，并六下罪己诏，是位年轻有为的皇帝，但明朝国力已无法振兴。在位期间农民起义猖獗，关外清朝势大。已处于朝不虑夕的境地。1644年，李自成军攻破北京后于煤山（景山）自缢身亡，终年35岁，在位17年。庙号思宗，谥号守道敬俭宽文襄武体仁致孝庄烈愍皇帝，葬于十三陵思陵。";
    }
    else if (0 != 武力分数 >= 0 & 0 != 分数 >= __reg9) 
    {
        __reg2 = "宋徽宗";
        __reg3 = "宋徽宗，名赵佶（公元1082年11月2日～1135年6月4日），神宗11子，哲宗弟，是宋朝第八位皇帝。赵佶先后被封为遂宁王、端王。哲宗于公元1100年正月病死时无子，向皇后于同月立他为帝。第二年改年号为“建中靖国”。宋徽宗在位25年（1100年2月23日—1126年1月18日），国亡被俘受折磨而死，终年54岁，葬于永佑陵（今浙江省绍兴县东南35里处）。 他自创一种书法字体被后人称之为“瘦金书”，另外，他在书画上的花押是一个类似拉长了的“天”字，据说象征“天下一人”。";
    }
    else if (0 != 武力分数 >= 0 & 0 != 分数 >= __reg10) 
    {
        __reg2 = "周幽王";
        __reg3 = "周幽王（前795？—前772），姬姓，名宫湦，是中国西周王朝的最后一位君主。\n烽火戏诸侯说的就是这位。";
    }
    if (0 != 国家.金钱 < 0 & 0 != 分数 <= 130) 
    {
        __reg2 = "溥仪";
        __reg3 = "爱新觉罗·溥仪，是清朝最后一位皇帝。其为清朝皇帝在位时年号“宣统”，通称宣统皇帝。其在伪满洲国皇帝位时年号“康德”，又称康德皇帝。";
    }
    else if (主角.年龄 < 20) 
    {
        __reg2 = "汉哀帝";
        __reg3 = "西汉孝哀皇帝刘欣，汉朝的第十三位皇帝，在位7年。\n死时骨瘦如柴，体重仅三十九斤。";
    }
    if (分数 == 9999) 
    {
        分数 = 0;
        武力分数 = 0;
        __reg2 = "周赧王";
        __reg3 = "说起“天子”，人们想到的往往是黄袍加身，万众拥戴，四方叩拜，真是威风凛凛。然而却有一位天子，不但抖不起威风，镇不了四方，还被人逼得四处躲债，真给后世的皇帝丢尽了面子。 这位落魄得一塌糊涂的天子，就是周王朝的末代君主，姓姬，名延，在公元前314年登基。后世通常把他叫做“周赧王”。";
    }
    var __reg11 = "";
    if (_root.主角.难度 == 1) 
    {
        __reg11 = "私塾学生";
    }
    else if (_root.主角.难度 == 2) 
    {
        __reg11 = "新科秀才";
    }
    else if (_root.主角.难度 == 3) 
    {
        __reg11 = "吉第状元";
    }
    else if (_root.主角.难度 == 4) 
    {
        __reg11 = "我是菜鸟";
    }
    __reg6.文本.html = true;
    __reg6.文本.htmlText = 死亡内容 + "\n\n" + "游戏难度：" + 颜色代码(__reg11, "ff0000") + "。\n内政分数：" + 颜色代码(分数, "ff0000") + "，武力分数" + 颜色代码(武力分数, "ff0000") + "。\n" + "道德数值：" + 颜色代码(_root.主角.道德, "ff0000") + "，暴戾数值" + 颜色代码(_root.主角.暴戾, "ff0000") + "。\n\n";
    __reg6.文本.htmlText = __reg6.文本.htmlText + ("您的游戏结局类似历史上的" + 颜色代码(__reg2, "ff0000") + "。\n\n");
    __reg6.文本.htmlText = __reg6.文本.htmlText + (颜色代码(__reg2, "0000ff") + "简介：\n" + __reg3);
    __reg6.文本.htmlText = __reg6.文本.htmlText + "\n\n\n================比目鱼的话=================\n\n本游戏完善还需要一段时间，目前数值上，逻辑上还可能存在一些的问题。\n希望你能继续支持，我会尽快对游戏进行更新。\n注：如果你不是很熟悉本游戏，可以在网络上搜索攻略。";
}
function 结局分数计算()
{
    var __reg5 = 0;
    var __reg2 = 0;
    while (__reg2 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg2].归属 == 8) 
        {
            var __reg3 = 0;
            var __reg4 = _root.所有城池[__reg2];
            __reg3 = __reg3 + __reg4.等级;
            if (__reg4.民心 > 80) 
            {
                __reg3 = __reg3 + 2;
            }
            __reg5 = __reg5 + __reg3;
        }
        ++__reg2;
    }
    return __reg5;
}

//  Action tag #11

function 执行读档实际程序()
{
    游戏正式开始("读档");
    if (_root.读到的档案 !== undefined) 
    {
        执行覆盖档案的动作(_root.读到的档案.data);
    }
}
function 游戏正式开始(参数)
{
    游戏初始属性();
    后宫生成();
    更新资料();
    更新各城府的数据();
    每个月的各地收支();
    每月奏折面板();
    季节计算程序();
    时辰推进();
    更新时辰的执行程序();
    if (参数 == "读档") 
    {
        太监问声好();
    }
}
var i = 0;
while (i < 所有人才.length) 
{
    if (0 != (所有人才[i].类 == "总兵") | 0 != (所有人才[i].类 == "知府")) 
    {
        所有官员的职位.push([所有人才[i].类, 所有人才[i].城.名称 + 所有人才[i].类, 所有人才[i].城]);
    }
    ++i;
}

//  Action tag #12

皇宫.后宫.onRelease = function ()
{
    后宫程序();
}
;

