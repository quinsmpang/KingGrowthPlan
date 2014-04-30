//Frame 0
//  Action tag #0

_global.bridge = AS2_4399_API.Bridge.getInstance();
var _4399_function_store_id = "3885799f65acec467d97b4923caebaae";
var _4399_function_ad_id = "92d6cef76cd06829e088932fe9fd819b";
var 外部版本说明 = new 数据库.外部版本说明();
外部版本说明.执行();
var 外部丞相的话 = new 数据库.外部丞相的话();
外部丞相的话.执行();
var 外部地方建设信息 = new 数据库.外部地方建设信息();
外部地方建设信息.执行();
var 外部国内外名人 = new 数据库.外部国内外名人();
外部国内外名人.执行();
var 外部后宫名人 = new 数据库.外部后宫名人();
外部后宫名人.执行();
var 外部爵位地名 = new 数据库.外部爵位地名();
外部爵位地名.执行();
var 外部历史名人 = new 数据库.外部历史名人();
外部历史名人.执行();
var 外部取名字 = new 数据库.外部取名字();
外部取名字.执行();
var 外部所有宝贝 = new 数据库.外部所有宝贝();
外部所有宝贝.执行();
var 外部所有情诗 = new 数据库.外部所有情诗();
外部所有情诗.执行();
var 外部太监字库 = new 数据库.外部太监字库();
外部太监字库.执行();
var 外部外域美人 = new 数据库.外部外域美人();
外部外域美人.执行();
var 外部玩家榜 = new 数据库.外部玩家榜();
外部玩家榜.执行();
var 外部微服出巡对话 = new 数据库.外部微服出巡对话();
外部微服出巡对话.执行();
var 外部小贴士 = new 数据库.外部小贴士();
外部小贴士.执行();
var 外部游戏攻略 = new 数据库.外部游戏攻略();
外部游戏攻略.执行();
var 外部阵营信息 = new 数据库.外部阵营信息();
外部阵营信息.执行();
var 外部子女信息 = new 数据库.外部子女信息();
外部子女信息.执行();
var 外部游戏说明 = new 数据库.外部游戏说明();
外部游戏说明.执行();

//  Action tag #1

function 创建声音的连接(名称)
{
    _root[名称] = new Sound(_root);
    _root[名称].attachSound(名称);
}
function 播什么声效啊(名称)
{
    _root[名称].start(0, 1);
}
_root.主角 = new Object();
var 剩余宝贝 = [];
var i = 0;
while (i < 所有宝贝.length) 
{
    if (i !== 73) 
    {
        剩余宝贝.push(i);
    }
    ++i;
}
所有药材 = [];
所有药材.push({id: 0, 名称: "冰山雪莲", 数量: 3});
所有药材.push({id: 1, 名称: "冷凝不化冰", 数量: 3});
所有药材.push({id: 2, 名称: "千年人参王", 数量: 3});
所有药材.push({id: 3, 名称: "透光灵芝", 数量: 1});
所有药材.push({id: 4, 名称: "神僧舍利", 数量: 0});
所有药材.push({id: 5, 名称: "冰片香", 数量: 2});
所有药材.push({id: 6, 名称: "鲸王脂", 数量: 0});
所有药材.push({id: 7, 名称: "炽火蛙", 数量: 0});
创建声音的连接("输入字符音效.mp3");

//  Action tag #2

function 按钮不要显示(对象)
{
    对象.useHandCursor = false;
}
function 打乱数组程序(a, b)
{
    return Math.random() <= 0.5 ? 1 : -1;
}
function 模糊特效(MC)
{
    var __reg1 = new flash.filters.BlurFilter(3, 3, 2);
    MC.filters = [__reg1];
}
function 计算距离(X1, X2, Y1, Y2)
{
    var __reg2 = new flash.geom.Point(X1, Y1);
    var __reg1 = new flash.geom.Point(X2, Y2);
    var __reg3 = flash.geom.Point.distance(__reg2, __reg1);
    return __reg3;
}
function 黑色幕布()
{
    var __reg3 = _root.attachMovie("黑幕布", "黑幕布", 190020, {_x: 0, _y: 0});
    __reg3.速度 = 10;
    __reg3.onEnterFrame = function ()
    {
        this.onPress = function ()
        {
        }
        ;
        this.速度 = this.速度 + 5;
        this._alpha = this._alpha - this.速度;
        if (this._alpha <= 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 缓动黑幕()
{
    var __reg3 = _root.attachMovie("黑幕布", "黑幕布", 190020, {_x: 0, _y: 0});
    __reg3.速度 = 1;
    __reg3.时间 = 0;
    __reg3.onEnterFrame = function ()
    {
        this.onPress = function ()
        {
        }
        ;
        this.速度 = this.速度 * 2;
        this._alpha = this._alpha - this.速度;
        if (this._alpha <= 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 烧掉截图(mc)
{
    var 黑幕 = _root.attachMovie("黑幕布", "d黑幕布", 190020, {_x: 0, _y: 0});
    黑幕._alpha = 0;
    黑幕.onPress = function ()
    {
    }
    ;
    _root.createEmptyMovieClip("火焰燃烧用", 84212);
    火焰燃烧用.createEmptyMovieClip("替换", 1);
    var __reg3 = 火焰燃烧用;
    __reg3.bitmap = new flash.display.BitmapData(800, 480, true, 16777215);
    __reg3.bitmap.draw(mc);
    __reg3.替换.attachBitmap(__reg3.bitmap, 1, "auto", true);
    _root.attachMovie("火焰灼烧_遮罩", "火焰灼烧遮罩", 84213, {_x: 0, _y: 0});
    _root.attachMovie("火焰灼烧_火", "火焰灼烧火", 84214, {_x: 0, _y: 0});
    _root.火焰燃烧用.setMask(_root.火焰灼烧遮罩);
    火焰灼烧火.onEnterFrame = function ()
    {
        if (this._currentframe == 27) 
        {
            _root.火焰灼烧遮罩.removeMovieClip();
            _root.火焰燃烧用.removeMovieClip();
            黑幕.removeMovieClip();
            this.removeMovieClip();
        }
    }
    ;
}
function 图形拷贝程序(对象, 新图)
{
    新图.createEmptyMovieClip("aa", 20);
    新图.bitmap = new flash.display.BitmapData(对象._width, 对象._height, true, 16777215);
    新图.bitmap.draw(对象);
    新图.aa.attachBitmap(新图.bitmap, 1, "auto", true);
}
function 绘制图形对象(路径, X起点, Y起点, 宽, 高, 新图)
{
    var __reg2 = _root.createEmptyMovieClip("aaaaa", 2222);
    __reg2._x = 1000;
    __reg2._y = 1000;
    图形拷贝程序(路径, __reg2);
    var __reg3 = new flash.display.BitmapData(宽, 高);
    __reg3.copyPixels(__reg2.bitmap, new flash.geom.Rectangle(X起点, Y起点, 宽, 高), new flash.geom.Point(0, 0));
    __reg2.removeMovieClip();
    新图.attachBitmap(__reg3, 1);
}
function 暂停截图消失(路径, X, Y, 宽, 高)
{
    var __reg3 = _root.createEmptyMovieClip("档", 196000);
    绘制图形对象(路径, X, Y, 宽, 高, __reg3);
    __reg3._x = X;
    __reg3._y = Y;
    var 宽度 = 宽;
    var 高度 = 高;
    __reg3.onEnterFrame = function ()
    {
        this._alpha = this._alpha - 10;
        this._xscale = this._xscale + 0.5;
        this._yscale = this._yscale + 0.5;
        this._x = this._x - 宽度 * 0.0025;
        this._y = this._y - 高度 * 0.0025;
        if (this._alpha <= 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 开启展示()
{
    attachMovie("展示页面", "展示页面", 2921, {_x: 0, _y: -600});
    展示页面.onEnterFrame = function ()
    {
        this._y = this._y + 100;
        if (this._y >= 0) 
        {
            delete this.onEnterFrame;
        }
    }
    ;
}
function 更多游戏收起()
{
    展示页面.onEnterFrame = function ()
    {
        this._y = this._y - 100;
        if (this._y <= -600) 
        {
            展示页面.removeMovieClip();
        }
    }
    ;
}
function 跳到游戏论坛去()
{
    getURL("http://my.4399.com/forums-mtag-op-list-tagid-81100-kind-547.html", "_blank");
}
function 出面板()
{
    attachMovie("说明面板", "说明面板", 220, {_x: 0, _y: 0});
}
function 封神推广()
{
    var 面板 = _root.attachMovie("封神太子推广面板", "封神太子推广面板", 812342, {_x: 0, _y: 0});
    面板.关闭.文本.text = "关闭";
    面板.关闭.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    面板.文本._y = 面板.文本._y - 30;
    面板.文本.text = "比目鱼暑假新作《封神太子2》宣传动画";
    var __reg3 = 面板.createEmptyMovieClip("展示", 20);
    __reg3._x = 80;
    __reg3._y = 60;
    loadMovie("xuanchuan.swf", __reg3);
    面板._alpha = 0;
    面板.onEnterFrame = function ()
    {
        this._alpha = this._alpha + 5;
        if (this._alpha >= 100) 
        {
            delete this.onEnterFrame;
        }
    }
    ;
}
function 新的取名程序(男女)
{
    var __reg3 = "";
    var __reg2 = "";
    if (男女 == 1) 
    {
        __reg2 = "男名";
        if (random(10) > 4) 
        {
            __reg3 = 姓[random(姓.length)] + 主名[random(主名.length)] + this[__reg2][random(this[__reg2].length)];
        }
        else 
        {
            __reg3 = 姓[random(姓.length)] + this[__reg2][random(this[__reg2].length)];
        }
    }
    else if (男女 == 2) 
    {
        __reg2 = "女名";
        if (random(10) > 4) 
        {
            __reg3 = 姓[random(姓.length)] + this[__reg2][random(this[__reg2].length)] + this[__reg2][random(this[__reg2].length)];
        }
        else 
        {
            __reg3 = 姓[random(姓.length)] + this[__reg2][random(this[__reg2].length)];
        }
    }
    return __reg3;
}
function 取名(男女)
{
    if (男女 == 1) 
    {
        选取名字 = "男名";
    }
    else 
    {
        选取名字 = "女名";
    }
    if (选取名字 == "男名") 
    {
        if (random(10) > 4) 
        {
            临时名字 = 姓[random(姓.length)] + 主名[random(主名.length)] + this[选取名字][random(this[选取名字].length)];
        }
        else 
        {
            临时名字 = 姓[random(姓.length)] + this[选取名字][random(this[选取名字].length)];
        }
        return;
    }
    if (random(10) > 4) 
    {
        临时名字 = 姓[random(姓.length)] + this[选取名字][random(this[选取名字].length)] + this[选取名字][random(this[选取名字].length)];
        return;
    }
    临时名字 = 姓[random(姓.length)] + this[选取名字][random(this[选取名字].length)];
}
function 等待的大黑布()
{
    _root.attachMovie("每季度跳一次的黑幕", "每季度跳一次的黑幕", 90000, {_x: 0, _y: 0});
    每季度跳一次的黑幕.时间 = 35;
    每季度跳一次的黑幕.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 < 0) 
        {
            _root.烧掉截图(_root);
            this.removeMovieClip();
        }
    }
    ;
}
function 对话打字效果(路径, 文本, 按钮)
{
    if (淡化表现方式 == 0) 
    {
        路径.text = "";
        按钮._visible = false;
        var __reg2 = 路径._parent.createEmptyMovieClip("打字侦听", 7777);
        __reg2.顺序 = 0;
        __reg2.onEnterFrame = function ()
        {
            var __reg2 = 文本.charAt(this.顺序);
            if (__reg2 == "|") 
            {
                路径.text = 路径.text + "\n";
            }
            else if (this.顺序 >= 文本.length) 
            {
                按钮._visible = true;
                this.removeMovieClip();
            }
            else 
            {
                路径.text = 路径.text + __reg2;
                if (this.顺序 % 3 == 0) 
                {
                    播什么声效啊("输入字符音效.mp3");
                }
            }
            ++this.顺序;
        }
        ;
        return;
    }
    路径.text = 文本;
}
function 小提示(文本)
{
    _root.attachMovie("小提示面板", "小提示面板", 290400, {_x: 320, _y: 100});
    小提示面板.文本.text = 文本;
}

//  Action tag #3

function 药剂测试()
{
    var __reg3 = ["消食散", "康泰克", "皮炎平", "避孕药", "敌敌畏", "长得快"];
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 120) 
        {
            return;
        }
        var __reg5 = __reg3[random(__reg3.length)];
        var __reg2 = {名称: __reg5, 增加: ["体力", 9], 特殊: 0};
        主角.丹药.push(__reg2);
        ++__reg1;
    }
}
_root.createEmptyMovieClip("修改功能哦", 87213);
修改功能哦.onEnterFrame = function ()
{
    if (0 != Key.isDown(49) & 0 != Key.isDown(51)) 
    {
        if (_root.修改功能面板 == undefined) 
        {
            var 面板 = _root.attachMovie("修改面板", "修改功能面板", 97214, {_x: 0, _y: 0});
            面板.输出.text = "哔哔……\n请鱼叔输入口令。\n哔哔……";
            面板.关闭.文本.text = "关闭";
            面板.执行.文本.text = "执行";
            面板.关闭.onPress = function ()
            {
                this._parent.removeMovieClip();
            }
            ;
            面板.执行.onPress = function ()
            {
                if (面板.文本啊.text == "你好") 
                {
                    面板.提示.text = "你好。";
                    return;
                }
                if (面板.文本啊.text == "dudang") 
                {
                    面板.输出.text = _root.读到的档案 + "\n" + _root.读到的档案.列表;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "shibinga") 
                {
                    _root.国家.士兵 = 11000000;
                    _root.国家.训练 = 100;
                    _root.年 = 13;
                    面板.提示.text = "去除。";
                    return;
                }
                if (面板.文本啊.text == "minfua") 
                {
                    面板.提示.text = "去除。";
                    return;
                }
                if (面板.文本啊.text == "qiong") 
                {
                    _root.国家.金钱 = -100000;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "qionga") 
                {
                    _root.国家.金钱 = 1000000000;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "lao") 
                {
                    var __reg3 = 0;
                    while (__reg3 < 所有人才.length) 
                    {
                        所有人才[__reg3].年龄 = 80;
                        ++__reg3;
                    }
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "panjunwudi") 
                {
                    __reg3 = 0;
                    while (__reg3 < 所有城池.length) 
                    {
                        if (__reg3 !== 17) 
                        {
                            所有城池[__reg3].归属 = 9;
                        }
                        ++__reg3;
                    }
                    阵营[9].外交 = 0;
                    年 = 6;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "shibing1") 
                {
                    更新所有主要职位的人();
                    _root.所有部门.中央军.武术 = 100;
                    国家.士兵 = 300000;
                    国家.训练 = 100;
                    国家.朴刀 = 300000;
                    国家.皮甲 = 300000;
                    国家.战马 = 300000;
                    国家.铁炮 = 300000;
                    _root.年 = 13;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "zhanzhenga") 
                {
                    __reg3 = 0;
                    while (__reg3 < 阵营.length) 
                    {
                        if (__reg3 !== 8) 
                        {
                            阵营[__reg3].外交 = 0;
                        }
                        ++__reg3;
                    }
                    面板.提示.text = "战争。";
                    return;
                }
                if (面板.文本啊.text == "dang") 
                {
                    面板.输出.text = "_root.读到的档案：" + _root.读到的档案 + "\n" + _root.读到的档案.列表;
                    面板.输出.text = 面板.输出.text + (_root.读到的档案.data + "\n" + _root.读到的档案.data.列表 + "\n");
                    面板.输出.text = 面板.输出.text + ("获得的档案列表：" + _root.获得的档案列表);
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "banben") 
                {
                    面板.输出.text = "版本号：" + _root.获取到的版本号;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "taizi") 
                {
                    __reg3 = 0;
                    while (__reg3 < 66) 
                    {
                        var __reg5 = 女名[random(女名.length)] + 女名[random(女名.length)];
                        所有子女数据.push({id: 所有子女数据.length, 名称: __reg5, 性别: random(2), 母亲: "王柳萱", 年龄: random(30), 婚: random(2), 封号: ""});
                        ++__reg3;
                    }
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "dongtian") 
                {
                    _root.季 = 4;
                    面板.提示.text = "执行。";
                    return;
                }
                if (面板.文本啊.text == "zinv") 
                {
                    调试子女();
                    面板.提示.text = "子女。";
                    return;
                }
                if (面板.文本啊.text == "nanchong") 
                {
                    __reg3 = 0;
                    while (__reg3 < _root.主角.后宫.length) 
                    {
                        _root.主角.后宫[__reg3].id = random(9) + 45;
                        ++__reg3;
                    }
                    面板.提示.text = "我腐了么。";
                    return;
                }
                if (面板.文本啊.text == "zaixiangpanluan") 
                {
                    var __reg14 = 取出宰相程序();
                    __reg14.忠诚 = 0;
                    __reg14.野心 = 100;
                    面板.提示.text = "宰相。";
                    return;
                }
                if (面板.文本啊.text == "chengshia") 
                {
                    __reg3 = 0;
                    while (__reg3 < _root.所有城池.length) 
                    {
                        var __reg2 = _root.所有城池[__reg3];
                        __reg2.人口 = 1200000;
                        __reg2.寺庙 = 50;
                        __reg2.市集 = 50;
                        __reg2.城墙 = 50;
                        __reg2.衙门 = 50;
                        __reg2.义仓 = 50;
                        __reg2.校场 = 50;
                        __reg2.行宫 = 3;
                        ++__reg3;
                    }
                    面板.提示.text = "城池。";
                    return;
                }
                if (面板.文本啊.text == "zhangda") 
                {
                    __reg3 = 0;
                    while (__reg3 < 所有子女数据.length) 
                    {
                        所有子女数据[__reg3].年龄 = 所有子女数据[__reg3].年龄 + 20;
                        ++__reg3;
                    }
                    面板.提示.text = "子女。";
                    return;
                }
                if (面板.文本啊.text == "yinian") 
                {
                    __reg3 = 0;
                    while (__reg3 < 8) 
                    {
                        游戏回合推进();
                        ++__reg3;
                    }
                    面板.提示.text = "一年。";
                    return;
                }
                if (面板.文本啊.text == "danyaoa") 
                {
                    面板.提示.text = "去除。";
                    return;
                }
                if (面板.文本啊.text == "guanyuan") 
                {
                    __reg3 = 0;
                    while (__reg3 < 400) 
                    {
                        创建人才("赋闲", 0, undefined);
                        ++__reg3;
                    }
                    面板.提示.text = "官员。";
                    return;
                }
                if (面板.文本啊.text == "guanyuan2") 
                {
                    __reg3 = 0;
                    while (__reg3 < 100) 
                    {
                        创建人才("赋闲", 0, undefined);
                        ++__reg3;
                    }
                    面板.提示.text = "官员。";
                    return;
                }
                if (面板.文本啊.text == "feizi") 
                {
                    __reg3 = 0;
                    while (__reg3 < 主角.后宫.length) 
                    {
                        var __reg13 = "女名";
                        __reg5 = 姓[random(姓.length)] + 女名[random(女名.length)] + 女名[random(女名.length)];
                        主角.后宫[__reg3].名字 = __reg5;
                        ++__reg3;
                    }
                    面板.提示.text = "妃子。";
                    return;
                }
                if (面板.文本啊.text == "waiyu") 
                {
                    __reg3 = 0;
                    while (__reg3 < 主角.后宫.length) 
                    {
                        var __reg4 = 900 + random(14);
                        主角.后宫[__reg3].名字 = __reg4;
                        主角.后宫[__reg3].id = __reg4;
                        主角.后宫[__reg3].爱 = 999;
                        主角.后宫[__reg3].孕 = 0;
                        ++__reg3;
                    }
                    面板.提示.text = "外域。";
                    return;
                }
                if (面板.文本啊.text == "siwang") 
                {
                    主角.寿命 = 0;
                    面板.提示.text = "死亡。";
                    return;
                }
                if (面板.文本啊.text == "shouminga") 
                {
                    主角.寿命 = 110;
                    面板.提示.text = "死亡。";
                    return;
                }
                if (面板.文本啊.text == "bukuaile") 
                {
                    主角.快乐 = 0;
                    面板.提示.text = "不快乐。";
                    return;
                }
                if (面板.文本啊.text == "cike") 
                {
                    _root.主角.安全度 = 60;
                    面板.提示.text = "刺客。";
                    return;
                }
                if (面板.文本啊.text == "baobei") 
                {
                    __reg3 = 0;
                    while (__reg3 < 50) 
                    {
                        来一个宝贝();
                        ++__reg3;
                    }
                    面板.提示.text = "宝贝。";
                    return;
                }
                if (面板.文本啊.text == "panluan") 
                {
                    __reg3 = 0;
                    while (__reg3 < 所有人才.length) 
                    {
                        if (0 != (所有人才[__reg3].类 !== "宰相") & 0 != (所有人才[__reg3].城.id !== 17)) 
                        {
                            所有人才[__reg3].野心 = 100;
                            所有人才[__reg3].忠诚 = 0;
                        }
                        ++__reg3;
                    }
                    面板.提示.text = "叛乱。";
                    return;
                }
                if (random(2) == 1) 
                {
                    面板.提示.text = "痛恨破解版。";
                    return;
                }
                面板.提示.text = "错误，请向鱼叔咨询。";
            }
            ;
        }
    }
}
;

//  Action tag #4

function 后宫生成()
{
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 所有后宫名称.length) 
        {
            return;
        }
        var __reg3 = undefined;
        var __reg4 = random(6) + 16;
        var __reg5 = random(后宫美女最大为) + 1;
        if (__reg2 == 0) 
        {
            __reg3 = {id: undefined, 称呼: 所有后宫名称[__reg2], 名字: _root.新皇后名字, 能力: 92, 经验: 210, 年龄: __reg4, 状态: 0, 头像: _root.新皇后头像, 爱: 500, 孕: 0, 病: 0};
        }
        else if (__reg2 == 6) 
        {
            __reg3 = {id: undefined, 称呼: 所有后宫名称[__reg2], 名字: "萧忆茹", 能力: 90, 经验: 60, 年龄: __reg4, 状态: 0, 头像: 32, 爱: 140, 孕: 0, 病: 0};
        }
        else 
        {
            __reg3 = {id: undefined, 称呼: 所有后宫名称[__reg2], 名字: undefined, 能力: 0, 经验: 0, 年龄: __reg4, 状态: 0, 头像: __reg5, 爱: 0, 孕: 0, 病: 0};
        }
        主角.后宫.push(__reg3);
        ++__reg2;
    }
}
function 后宫程序()
{
    _root.attachMovie("太监说话", "太监说话", 2382, {_x: 0, _y: 0});
    太监说话.文本.text = "皇上要哪位娘娘伺寝?";
    太监说话.人.gotoAndStop(4);
    太监说话.继续.onRelease = function ()
    {
        后宫面板函数();
        _root.太监说话.removeMovieClip();
    }
    ;
}
function 后宫面板函数()
{
    _root.attachMovie("后宫面板", "后宫的面板", 90000, {_x: 0, _y: 0});
    后宫的面板.标题.text = "要让哪个嫔妃伺寝";
    var 随机翻牌数据 = [];
    var __reg3 = 0;
    while (__reg3 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg3].名字 !== undefined) 
        {
            if (0 != (主角.后宫[__reg3].病 == 0) & 0 != (主角.后宫[__reg3].孕 == 0)) 
            {
                随机翻牌数据.push(主角.后宫[__reg3]);
            }
        }
        ++__reg3;
    }
    var __reg4 = 后宫的面板.attachMovie("安排宫女", "随机选妃", 90000, {_x: 220.5, _y: 395});
    __reg4._y = __reg4._y + 10;
    后宫的面板.安排宫女._y = 后宫的面板.安排宫女._y + 10;
    __reg4.名字.text = "随便翻个";
    __reg4.按.onRelease = function ()
    {
        if (随机翻牌数据.length <= 0) 
        {
            _root.小提示("后宫没有合适的妃子");
            return;
        }
        var __reg2 = 随机翻牌数据[random(随机翻牌数据.length)];
        出现这位后宫(__reg2);
    }
    ;
    __reg3 = 0;
    while (__reg3 < 所有后宫名称.length) 
    {
        后宫的面板["后宫" + __reg3].称呼.text = 主角.后宫[__reg3].称呼;
        if (主角.后宫[__reg3].名字 !== undefined) 
        {
            后宫的面板["后宫" + __reg3].属性 = 主角.后宫[__reg3];
            后宫的面板["后宫" + __reg3].名字.text = 主角.后宫[__reg3].名字;
            后宫的面板["后宫" + __reg3].按.onRelease = function ()
            {
                if (this._parent.属性.病 !== 0) 
                {
                    _root.小提示("娘娘生病，不能伺候皇上了。");
                    return;
                }
                if (this._parent.属性.孕 !== 0) 
                {
                    _root.小提示("娘娘怀孕，不能伺候皇上了。");
                    return;
                }
                出现这位后宫(this._parent.属性);
            }
            ;
            后宫的面板["后宫" + __reg3].按.onRollOut = function ()
            {
                移动除非后宫的具体状态(this._parent);
            }
            ;
            后宫的面板["后宫" + __reg3].按.onRollOver = function ()
            {
                移动除非后宫的具体状态(this._parent);
                提示后宫的具体状态(this._parent);
            }
            ;
        }
        ++__reg3;
    }
    后宫的面板.安排宫女.按.onRelease = function ()
    {
        安排宫女函数();
    }
    ;
    后宫的面板.attachMovie("红色小条", "离开", 5502, {_x: 530, _y: 435});
    后宫的面板.离开.文本.text = "离开";
    后宫的面板.离开.an.onPress = function ()
    {
        后宫的面板.removeMovieClip();
    }
    ;
}
function 提示后宫的具体状态(对象)
{
    if (对象.属性.孕 !== 0) 
    {
        对象._parent.attachMovie("后宫提示小面板", "后宫提示小面板", 95000, {_x: 对象._x + 77, _y: 对象._y + 32});
        对象._parent.后宫提示小面板.文本.text = "娘娘怀有龙胎，正在静养。";
        return;
    }
    if (对象.属性.病 !== 0) 
    {
        对象._parent.attachMovie("后宫提示小面板", "后宫提示小面板", 95000, {_x: 对象._x + 77, _y: 对象._y + 32});
        对象._parent.后宫提示小面板.文本.text = "娘娘身体不适，正在静养。";
    }
}
function 移动除非后宫的具体状态(对象)
{
    if (对象._parent.后宫提示小面板 !== undefined) 
    {
        对象._parent.后宫提示小面板.removeMovieClip();
    }
}
function 安排宫女函数()
{
    后宫的面板.removeMovieClip();
    _root.attachMovie("太监说话", "太监说话", 2382, {_x: 0, _y: 0});
    太监说话.文本.text = "皇上，\n奴才这就去储秀宫帮您挑选一位。\n保证让您满意。";
    太监说话.人.gotoAndStop(6);
    太监说话.继续.onRelease = function ()
    {
        生成这个宫女();
    }
    ;
}
function 生成这个宫女()
{
    是否是历史美女 = random(20);
    if (0 != (是否是历史美女 == 0) & 0 != 后宫名人.length > 0) 
    {
        var __reg5 = random(后宫名人.length);
        var __reg4 = 后宫名人[__reg5];
        var __reg10 = random(6) + 16;
        var __reg3 = [];
        var __reg2 = 1;
        while (__reg2 <= 后宫美女最大为) 
        {
            __reg3.push(__reg2);
            ++__reg2;
        }
        __reg2 = 0;
        while (__reg2 < 主角.后宫.length) 
        {
            if (主角.后宫[__reg2].名字 !== undefined) 
            {
                var __reg1 = 0;
                while (__reg1 < __reg3.length) 
                {
                    if (__reg3[__reg1] == 主角.后宫[__reg2].头像) 
                    {
                        __reg3.splice(__reg1, 1);
                    }
                    ++__reg1;
                }
            }
            ++__reg2;
        }
        var __reg11 = __reg3[random(__reg3.length)];
        var __reg7 = __reg4.名称;
        var __reg8 = __reg4.能力;
        var __reg9 = __reg4.id;
        var __reg6 = (random(5) + 3) * 8;
        var __reg12 = {id: __reg9, 称呼: "宫女", 名字: __reg7, 能力: __reg8, 经验: 0, 年龄: __reg10, 状态: 0, 头像: __reg11, 爱: __reg6, 孕: 0, 病: 0};
        后宫名人.splice(__reg5, 1);
        出现这位后宫(__reg12, 1);
        return;
    }
    __reg10 = random(6) + 16;
    __reg3 = [];
    __reg2 = 1;
    while (__reg2 <= 后宫美女最大为) 
    {
        __reg3.push(__reg2);
        ++__reg2;
    }
    __reg2 = 0;
    for (;;) 
    {
        __reg2;
        if (__reg2 >= 主角.后宫.length) 
        {
            break;
        }
        if (主角.后宫[__reg2].名字 !== undefined) 
        {
            __reg1 = 0;
            while (__reg1 < __reg3.length) 
            {
                if (__reg3[__reg1] == 主角.后宫[__reg2].头像) 
                {
                    __reg3.splice(__reg1, 1);
                }
                ++__reg1;
            }
        }
        ++__reg2;
    }
    __reg11 = __reg3[random(__reg3.length)];
    取名(2);
    __reg6 = (random(5) + 3) * 8;
    __reg12 = {称呼: "宫女", 名字: 临时名字, 能力: random(50) + 30, 经验: 0, 年龄: __reg10, 状态: 0, 头像: __reg11, 爱: __reg6, 孕: 0, 病: 0};
    出现这位后宫(__reg12, 1);
}
function 出现这位后宫(对象, 参数)
{
    _root.主角.后宫频率 = _root.主角.后宫频率 + 1;
    var 所有美人图 = _root.attachMovie("所有美人图", "所有美人图", 90002, {_x: 0, _y: 0});
    if (0 != (0 != 对象.id >= 45 & 0 != 对象.id <= 57) & 0 != (对象.id !== undefined)) 
    {
        _root.图库.男宠图.gotoAndStop(对象.id - 45 + 1);
        __reg12 = 所有美人图.图.createEmptyMovieClip("图", 20);
        图形拷贝程序(_root.图库.男宠图, __reg12);
    }
    else if (对象.id == 112) 
    {
        _root.图库.外域美女图.gotoAndStop(19);
        __reg12 = 所有美人图.图.createEmptyMovieClip("图", 20);
        图形拷贝程序(_root.图库.外域美女图, __reg12);
    }
    else if (对象.id == 113) 
    {
        _root.图库.外域美女图.gotoAndStop(22);
        __reg12 = 所有美人图.图.createEmptyMovieClip("图", 20);
        图形拷贝程序(_root.图库.外域美女图, __reg12);
    }
    else if (对象.id == 121) 
    {
        _root.图库.美女图.图.gotoAndStop(266);
        __reg12 = 所有美人图.图.createEmptyMovieClip("图", 20);
        图形拷贝程序(_root.图库.美女图, __reg12);
    }
    else if (0 != 对象.id >= 900 & 0 != (对象.id !== undefined)) 
    {
        _root.图库.外域美女图.gotoAndStop(对象.特殊头像);
        __reg12 = 所有美人图.图.createEmptyMovieClip("图", 20);
        图形拷贝程序(_root.图库.外域美女图, __reg12);
    }
    else 
    {
        _root.图库.美女图.图.gotoAndStop(对象.头像);
        var __reg12 = 所有美人图.图.createEmptyMovieClip("图", 20);
        图形拷贝程序(_root.图库.美女图, __reg12);
    }
    所有美人图.attachMovie("后宫对话", "后宫对话", 9000, {_x: 320, _y: 410});
    所有美人图.后宫对话.文本.html = true;
    if (后宫状态 == 1) 
    {
        所有美人图.后宫对话.文本.htmlText = 对象.称呼 + " " + 对象.名字 + ":臣妾近来抱恙。\n不能伺候皇上。";
        所有美人图.后宫对话.确定.onRelease = function ()
        {
            关闭后宫面板();
        }
        ;
        return;
    }
    if (参数 == 1) 
    {
        if (对象.能力 > 92) 
        {
            所有美人图.后宫对话.文本.htmlText = 颜色代码(对象.名字, "7402C1") + " 第一次侍奉皇上。\n";
        }
        else if (对象.能力 == 91) 
        {
            所有美人图.后宫对话.文本.htmlText = 颜色代码(对象.名字, "010298") + " 第一次侍奉皇上。\n";
        }
        else if (0 != 对象.能力 > 85 & 0 != (对象.id !== undefined)) 
        {
            所有美人图.后宫对话.文本.htmlText = 颜色代码(对象.名字, "CC0000") + " 第一次侍奉皇上。\n";
        }
        else if (对象.id === undefined) 
        {
            所有美人图.后宫对话.文本.htmlText = 对象.名字 + " 第一次侍奉皇上。\n";
        }
        else 
        {
            所有美人图.后宫对话.文本.htmlText = 颜色代码(对象.名字, "003300") + " 第一次侍奉皇上。\n";
        }
    }
    else 
    {
        所有美人图.后宫对话.文本.htmlText = "皇上临幸了" + 对象.称呼 + "：" + 对象.名字 + "。\n";
    }
    var __reg10 = 对象.能力 + Math.round(对象.经验 / 2);
    对象.爱 = 对象.爱 + 4;
    对象.经验 = 对象.经验 + 1;
    主角.体力 = 主角.体力 + __reg10;
    _root.更新资料();
    加载进步动画条的说("体力");
    加载进步动画条的说("快乐");
    加载进步动画条的说("健康");
    if (主角.体力 >= 主角.体力上限) 
    {
        主角.体力 = 主角.体力上限;
        所有美人图.后宫对话.文本.htmlText = 所有美人图.后宫对话.文本.htmlText + 颜色代码("体力恢复全满。", "CC0000");
    }
    else 
    {
        所有美人图.后宫对话.文本.htmlText = 所有美人图.后宫对话.文本.htmlText + ("体力恢复：" + __reg10 + "。");
    }
    if (对象.年龄 > 38) 
    {
        _root.主角.快乐 = _root.主角.快乐 + 5;
        if (_root.主角.快乐 > 100) 
        {
            _root.主角.快乐 = 100;
        }
        所有美人图.后宫对话.文本.htmlText = "皇上前往了" + 颜色代码(对象.称呼, "ff0000") + "娘娘宫中休息。";
    }
    else 
    {
        _root.主角.健康 = _root.主角.健康 - 1;
        if (random(10) > 1) 
        {
            _root.主角.快乐 = _root.主角.快乐 + 10;
        }
        else 
        {
            _root.主角.快乐 = _root.主角.快乐 + 20;
            所有美人图.后宫对话.文本.htmlText = 所有美人图.后宫对话.文本.htmlText + "很愉快。";
        }
        if (_root.主角.快乐 > 100) 
        {
            _root.主角.快乐 = 100;
        }
    }
    所有美人图._alpha = 0;
    所有美人图.onEnterFrame = function ()
    {
        this._alpha = this._alpha + 10;
        if (this._alpha >= 100) 
        {
            delete (this.onEnterFrame);
        }
    }
    ;
    所有美人图.后宫对话.确定.onRelease = function ()
    {
        if (参数 == 1) 
        {
            给宫女名份(对象);
            return;
        }
        var __reg6 = random(100);
        if (__reg6 < 4) 
        {
            var 对话框 = 所有美人图.attachMovie("对话框面板", "对话框面板", 7280, {_x: 30, _y: 410});
            对话框._x = (640 - 对话框._width) / 2;
            对话框.文本.text = "皇上，宫里开支花销逐渐变大。能否赏赐些财物予臣妾呢。";
            所有美人图.后宫对话._visible = false;
            所有美人图.后宫对话.确定.onRelease = function ()
            {
            }
            ;
            var 同意 = 所有美人图.attachMovie("红色小条", "确定", 9002, {_x: 400, _y: 370});
            var 取消 = 所有美人图.attachMovie("红色小条", "取消", 9003, {_x: 500, _y: 370});
            同意.文本.text = "允诺";
            同意.an.onRelease = function ()
            {
                对话框.文本.text = "谢皇上。\n臣妾必尽心尽力伺候皇上。";
                国家.金钱 = 国家.金钱 - 2000;
                更新资料();
                同意._visible = false;
                取消._visible = false;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                    是否会怀孕呢(对象);
                }
                ;
            }
            ;
            取消.文本.text = "无视";
            取消.an.onRelease = function ()
            {
                对话框.文本.text = "皇上早些休息吧。";
                同意._visible = false;
                取消._visible = false;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                }
                ;
            }
            ;
            return;
        }
        if (__reg6 < 7) 
        {
            var 对话框 = 所有美人图.attachMovie("对话框面板", "对话框面板", 7280, {_x: 30, _y: 410});
            对话框._x = (640 - 对话框._width) / 2;
            对话框.文本.text = "臣妾想着能更好的伺奉皇上。\n可是寝宫狭小，奴婢不足。皇上能否让下旨扩大我这的规模。";
            所有美人图.后宫对话._visible = false;
            所有美人图.后宫对话.确定.onRelease = function ()
            {
            }
            ;
            var 同意 = 所有美人图.attachMovie("红色小条", "确定", 9002, {_x: 400, _y: 370});
            var 取消 = 所有美人图.attachMovie("红色小条", "取消", 9003, {_x: 500, _y: 370});
            同意.文本.text = "允诺";
            同意.an.onRelease = function ()
            {
                对话框.文本.text = "臣妾必尽心尽力伺候皇上。(" + 对象.称呼 + 对象.名字 + "在宫中影响扩大)";
                国家.金钱 = 国家.金钱 - 80000;
                更新资料();
                同意._visible = false;
                取消._visible = false;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                    是否会怀孕呢(对象);
                }
                ;
            }
            ;
            取消.文本.text = "无视";
            取消.an.onRelease = function ()
            {
                对话框.文本.text = "皇上早些休息吧。";
                同意._visible = false;
                取消._visible = false;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                }
                ;
            }
            ;
            return;
        }
        if (__reg6 < 11) 
        {
            if (0 != (对象.id == undefined) & 0 != 对象.能力 < 85) 
            {
                var __reg2 = [];
                var __reg1 = 0;
                while (__reg1 < 主角.后宫.length) 
                {
                    if (0 != (主角.后宫[__reg1].名字 !== undefined) & 0 != (主角.后宫[__reg1].称呼 !== 对象.称呼)) 
                    {
                        __reg2.push(主角.后宫[__reg1].称呼);
                    }
                    ++__reg1;
                }
                if (__reg2.length == 0) 
                {
                    需要说什么话.push("整个后宫就自己一个妃子，太寂寞了。");
                }
                else 
                {
                    var __reg3 = __reg2[random(__reg2.length)];
                    var 需要说什么话 = [];
                    需要说什么话.push(__reg3 + "姐姐嚣张跋扈，皇上您可要小心。");
                    需要说什么话.push(__reg3 + "姐姐最近一直刁难妹妹，皇上要给我做主。");
                    需要说什么话.push(__reg3 + "姐姐最近的举动很反常，皇上可要提防。");
                    需要说什么话.push(__reg3 + "姐姐身边的宫女让人很不舒服，不知道怎么调教奴才的。");
                    需要说什么话.push(__reg3 + "姐姐有失体统，皇上得给点颜色瞧瞧。");
                    需要说什么话.push("臣妾能天天伺候皇上就好了。");
                    需要说什么话.push("皇上还爱臣妾吗。");
                    需要说什么话.push("家父寄来特产，皇上可以尝尝臣妾家乡的味道。");
                    需要说什么话.push("臣妾最近研习书法，盼着皇上能来指点一二。");
                    需要说什么话.push("臣妾最喜欢和皇上在一起。");
                    需要说什么话.push("臣妾好开心。");
                }
                var 对话框 = 所有美人图.attachMovie("对话框面板", "对话框面板", 7280, {_x: 30, _y: 410});
                对话框._x = (640 - 对话框._width) / 2;
                对话框.文本.text = 需要说什么话[random(需要说什么话.length)];
                所有美人图.后宫对话._visible = false;
                所有美人图.后宫对话.确定.onRelease = function ()
                {
                }
                ;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                    是否会怀孕呢(对象);
                }
                ;
            }
            else if (0 != (0 != (对象.id == 912) | 0 != (对象.id == 911)) | 0 != (对象.id == 901)) 
            {
                var 对话框 = 所有美人图.attachMovie("对话框面板", "对话框面板", 7280, {_x: 30, _y: 410});
                对话框._x = (640 - 对话框._width) / 2;
                __reg4 = random(4);
                if (__reg4 == 0) 
                {
                    对话框.文本.text = "奴隷全力仕える主人。";
                }
                else if (__reg4 == 1) 
                {
                    对话框.文本.text = "奴隷最爱主上ました。";
                }
                else if (__reg4 == 2) 
                {
                    对话框.文本.text = "奴隷の最近とても懐かしい故郷。";
                }
                else if (__reg4 == 3) 
                {
                    对话框.文本.text = "主上爱奴隷か。";
                }
                所有美人图.后宫对话._visible = false;
                所有美人图.后宫对话.确定.onRelease = function ()
                {
                }
                ;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                    是否会怀孕呢(对象);
                }
                ;
            }
            else if (0 != (0 != (0 != (0 != (0 != (对象.id == 906) | 0 != (对象.id == 907)) | 0 != (对象.id == 910)) | 0 != (对象.id == 910)) | 0 != (对象.id == 913)) | 0 != (对象.id == 914)) 
            {
                var 对话框 = 所有美人图.attachMovie("对话框面板", "对话框面板", 7280, {_x: 30, _y: 410});
                对话框._x = (640 - 对话框._width) / 2;
                __reg4 = random(4);
                if (__reg4 == 0) 
                {
                    对话框.文本.text = "I will do my best to serve you.";
                }
                else if (__reg4 == 1) 
                {
                    对话框.文本.text = "You are my love.";
                }
                else if (__reg4 == 2) 
                {
                    对话框.文本.text = "I badly missing my hometown.";
                }
                else if (__reg4 == 3) 
                {
                    对话框.文本.text = "Do you really love me?";
                }
                所有美人图.后宫对话._visible = false;
                所有美人图.后宫对话.确定.onRelease = function ()
                {
                }
                ;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                    是否会怀孕呢(对象);
                }
                ;
            }
            else 
            {
                var 对话框 = 所有美人图.attachMovie("对话框面板", "对话框面板", 7280, {_x: 30, _y: 410});
                对话框._x = (640 - 对话框._width) / 2;
                var __reg4 = random(4);
                if (__reg4 == 0) 
                {
                    对话框.文本.text = "臣妾最爱皇上了。";
                }
                else if (__reg4 == 1) 
                {
                    if (对象.能力 == 91) 
                    {
                        var __reg7 = random(3);
                        if (__reg7 == 0) 
                        {
                            对话框.文本.text = "臣妾如能为皇上延续子嗣……";
                        }
                        else if (__reg7 == 1) 
                        {
                            对话框.文本.text = "臣妾表演一段剑舞，为皇上助兴。";
                        }
                        else if (__reg7 == 2) 
                        {
                            对话框.文本.text = "宫里的姐妹各个国色天香，臣妾压力很大。";
                        }
                    }
                    else 
                    {
                        对话框.文本.text = "臣妾想为皇上生个龙子。";
                    }
                }
                else if (__reg4 == 2) 
                {
                    对话框.文本.text = "见到皇上，臣妾真开心。";
                }
                else if (__reg4 == 3) 
                {
                    var __reg5 = random(3);
                    if (__reg5 == 0) 
                    {
                        __reg8 = "臣妾最近喜欢上这首诗：" + 所有情诗[random(所有情诗.length)];
                    }
                    else if (__reg5 == 1) 
                    {
                        __reg8 = 所有情诗[random(所有情诗.length)] + "，每次听到这诗都特有感触。";
                    }
                    else if (__reg5 == 2) 
                    {
                        var __reg8 = 所有情诗[random(所有情诗.length)] + "，皇上喜欢这首诗么？";
                    }
                    对话框.文本.text = __reg8;
                }
                所有美人图.后宫对话._visible = false;
                所有美人图.后宫对话.确定.onRelease = function ()
                {
                }
                ;
                对话框.an.onRelease = function ()
                {
                    关闭后宫面板();
                    是否会怀孕呢(对象);
                }
                ;
            }
            return;
        }
        关闭后宫面板();
        是否会怀孕呢(对象);
    }
    ;
}
function 是否会怀孕呢(对象)
{
    var __reg2 = random(15);
    if (对象.id !== undefined) 
    {
        if (0 != 对象.id >= 45 & 0 != 对象.id <= 57) 
        {
            __reg2 = 10;
        }
    }
    if (__reg2 < 3) 
    {
        if (对象.年龄 < 38) 
        {
            对象.孕 = 8;
        }
    }
}
function 给宫女名份(对象)
{
    所有美人图.removeMovieClip();
    var __reg2 = _root.attachMovie("太监说话", "太监说话", 2382, {_x: 0, _y: 0});
    __reg2.文本.text = "启禀皇上，\n你对" + 对象.名字 + "第一次的服侍还满意吗?\n是不是要册封名号呀?";
    __reg2.人.gotoAndStop(6);
    __reg2.继续字眼._visible = false;
    __reg2.attachMovie("通用按钮", "是", 8000, {_x: __reg2.继续字眼._x, _y: __reg2.继续字眼._y});
    __reg2.attachMovie("通用按钮", "否", 8001, {_x: __reg2.继续字眼._x + 100, _y: __reg2.继续字眼._y});
    __reg2.是.文本.text = "是";
    __reg2.否.文本.text = "否";
    __reg2.是.按.onRelease = function ()
    {
        进入后宫封号(对象);
        _root.太监说话.removeMovieClip();
    }
    ;
    __reg2.否.按.onRelease = function ()
    {
        关闭后宫面板();
        _root.太监说话.removeMovieClip();
    }
    ;
}
function 进入后宫封号(对象)
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
                    给她什么名号呢(对象, this._parent.属性);
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
        ++_root.主角.当前时辰;
        时辰推进();
        _root.后宫封号面板.removeMovieClip();
    }
    ;
}
function 给她什么名号呢(对象, 名号)
{
    var __reg2 = 0;
    while (__reg2 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg2].称呼 == 名号) 
        {
            主角.后宫[__reg2].名字 = 对象.名字;
            主角.后宫[__reg2].能力 = 对象.能力;
            主角.后宫[__reg2].年龄 = 对象.年龄;
            主角.后宫[__reg2].头像 = 对象.头像;
            主角.后宫[__reg2].爱 = 对象.爱;
            主角.后宫[__reg2].经验 = 5;
            主角.后宫[__reg2].状态 = 0;
            主角.后宫[__reg2].孕 = 0;
            主角.后宫[__reg2].病 = 0;
            主角.后宫[__reg2].id = 对象.id;
        }
        ++__reg2;
    }
    出圣旨("封" + 对象.名字 + "予" + 名号 + "名号。", _root, 1);
    删除之前的界面(后宫封号面板);
}
function 关闭后宫面板()
{
    ++主角.当前时辰;
    时辰推进();
    所有美人图.removeMovieClip();
    后宫的面板.removeMovieClip();
}
所有后宫名称 = ["皇后", "贵妃", "淑妃", "德妃", "贤妃", "昭仪", "昭容", "昭媛", "修仪", "修容", "修媛", "充仪", "充容", "充媛", "婕妤", "舞涓", "娱灵", "美人", "才人", "良人", "御女", "采女", "淑女", "宝林", "婧娥", "荣华", "充衣", "长使", "少使", "八子", "七子", "五子", "五官", "顺常", "选侍", "常在", "答应"];

//  Action tag #5

function 单挑程序(人物A, 人物B)
{
    var __reg3 = _root.attachMovie("单挑元件", "单挑元件", 120000, {_x: 0, _y: 0});
    __reg3._alpha = 0;
    __reg3.onEnterFrame = function ()
    {
        this._alpha = this._alpha + 20;
        if (this._alpha >= 100) 
        {
            delete this.onEnterFrame;
        }
    }
    ;
    __reg3.名1.text = 人物A.名字;
    __reg3.名2.text = 人物B.名字;
    __reg3.武1.text = "武术:" + 人物A.武术;
    __reg3.武2.text = "武术:" + 人物B.武术;
    __reg3.a0.属性 = 人物A;
    __reg3.a1.属性 = 人物B;
    var __reg4 = __reg3.a0;
    var __reg5 = __reg3.a1;
    __reg4.序列 = 1;
    __reg5.序列 = 2;
    初属性定义(__reg4);
    初属性定义(__reg5);
    __reg4.主 = 1;
    人物AI(__reg4, __reg5, __reg3);
    人物AI(__reg5, __reg4, __reg3);
}
function 更新单挑血值()
{
    var __reg2 = _root.单挑元件.a0.血;
    var __reg3 = _root.单挑元件.a1.血;
    if (__reg2 < 0) 
    {
        __reg2 = 0;
    }
    if (__reg3 < 0) 
    {
        __reg3 = 0;
    }
    _root.单挑元件.面板.条1.条._xscale = __reg2;
    _root.单挑元件.面板.条2.条._xscale = __reg3;
}
function 初属性定义(对象)
{
    对象.血 = 100;
    对象.速度 = 5;
    对象.计数器 = 0;
    对象.死 = 0;
    对象.等待 = 0;
    对象.伤害 = Math.round(对象.属性.武术 * 0.8);
    if (对象.伤害 < 30) 
    {
        对象.伤害 = 30;
    }
}
function 战斗震屏程序()
{
    var __reg3 = _root.createEmptyMovieClip("震屏开关", 16212);
    __reg3.时间 = 8;
    __reg3.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 <= 0) 
        {
            _root._x = 0;
            _root._y = 0;
            return;
        }
        _root._x = 4 - random(9);
        _root._y = 4 - random(9);
    }
    ;
}
function 人物AI(本体, 对手, 面板)
{
    var __reg2 = ["请赐教", 本体.属性.名字 + "参见", "吾只需十招", "别来无恙", "接招吧", "呀呀呀", "哈", "驾", "力争第一", "友谊第二", "全力"];
    单挑对话用跟随(__reg2[random(__reg2.length)], 本体);
    本体.onEnterFrame = function ()
    {
        if (this.死 == 1) 
        {
            单挑战斗结束();
            this.gotoAndStop(5);
            对手.gotoAndStop(1);
            return;
        }
        if (this.等待 > 0) 
        {
            --this.等待;
            return;
        }
        if (this.血 <= 0) 
        {
            this.伤害 = 0;
            this.死 = 1;
            this.gotoAndStop(5);
            对手.gotoAndStop(1);
        }
        if (this._x < 对手._x - 38) 
        {
            this._x = this._x + this.速度;
            this.gotoAndStop(2);
            return;
        }
        if (this._x > 对手._x + 38) 
        {
            this._x = this._x - this.速度;
            this.gotoAndStop(2);
            return;
        }
        ++this.计数器;
        if (this.计数器 % 20 == 0) 
        {
            if (this.主 == 1) 
            {
                单挑的战斗逻辑(本体, 对手, 面板);
            }
        }
    }
    ;
}
function 判断单挑两值差距(X, Y)
{
    var __reg2 = new flash.geom.Point(X, 0);
    var __reg1 = new flash.geom.Point(Y, 0);
    return flash.geom.Point.distance(__reg2, __reg1);
}
function 单挑的战斗逻辑(本体, 对手, 面板)
{
    var __reg8 = 判断单挑两值差距(本体.属性.武术, 对手.属性.武术);
    var __reg7 = 25;
    if (__reg8 > __reg7) 
    {
        if (本体.属性.武术 > 对手.属性.武术) 
        {
            本体.gotoAndStop(3);
            对手.gotoAndStop(5);
            暂停截图消失(_root.单挑元件, 0, 0, 640, 480);
            战斗震屏程序();
            对手.死 = 1;
            对手.血 = 0;
            更新单挑血值();
            单挑法术使用("法术效果3", 对手, 100);
            秒杀后的表现(本体, 10);
            __reg5 = ["不送", "就这样", "再见", "致命", "结束", "战斗力只有5"];
            单挑对话用跟随(__reg5[random(__reg5.length)], 本体);
        }
        else 
        {
            本体.gotoAndStop(5);
            对手.gotoAndStop(3);
            暂停截图消失(_root.单挑元件, 0, 0, 640, 480);
            战斗震屏程序();
            本体.死 = 1;
            本体.血 = 0;
            更新单挑血值();
            单挑法术使用("法术效果3", 本体, -100);
            秒杀后的表现(对手, -10);
            var __reg5 = ["不送", "就这样", "再见", "致命", "结束", "战斗力只有5"];
            单挑对话用跟随(__reg5[random(__reg5.length)], 对手);
        }
        return;
    }
    var __reg4 = random(105);
    本体.等待 = 20;
    对手.等待 = 20;
    if (__reg4 <= 40) 
    {
        本体.gotoAndStop(3);
        对手.gotoAndStop(4);
        对手.血 = 对手.血 - 本体.伤害;
        更新单挑血值();
        return;
    }
    if (__reg4 <= 80) 
    {
        本体.gotoAndStop(4);
        对手.gotoAndStop(3);
        本体.血 = 本体.血 - 对手.伤害;
        更新单挑血值();
        return;
    }
    if (__reg4 <= 83) 
    {
        战斗震屏程序();
        本体.gotoAndStop(6);
        对手.gotoAndStop(6);
        var __reg6 = random(7) - 3;
        单挑打退的表现(本体, __reg6);
        单挑打退的表现(对手, __reg6);
        单挑法术使用跟随("法术效果1", 本体, 100);
        单挑法术使用跟随("法术效果1", 对手, -100);
        __reg5 = ["呀呀", "呀呀呀", "哈", "呼", "啊"];
        单挑对话用跟随(__reg5[random(__reg5.length)], 本体);
        单挑对话用跟随(__reg5[random(__reg5.length)], 对手);
        return;
    }
    if (__reg4 <= 86) 
    {
        战斗震屏程序();
        本体.gotoAndStop(3);
        对手.gotoAndStop(3);
        __reg6 = 3;
        单挑法术使用("法术效果2", 本体, 100);
        单挑打退的表现(本体, __reg6 * -1);
        单挑打退的表现(对手, __reg6);
        __reg5 = ["呀呀", "呀呀呀", "哈", "呼", "啊"];
        if (random(2) == 0) 
        {
            单挑对话用跟随(__reg5[random(__reg5.length)], 本体);
        }
        else 
        {
            单挑对话用跟随(__reg5[random(__reg5.length)], 对手);
        }
        return;
    }
    if (__reg4 <= 89) 
    {
        战斗震屏程序();
        本体.gotoAndStop(3);
        对手.gotoAndStop(4);
        对手.血 = 对手.血 - 本体.伤害;
        __reg6 = 3;
        单挑法术使用跟随("法术效果4", 对手, 100);
        单挑打退的表现(对手, __reg6);
        战斗震屏程序();
        更新单挑血值();
        return;
    }
    if (__reg4 <= 92) 
    {
        战斗震屏程序();
        本体.gotoAndStop(4);
        对手.gotoAndStop(3);
        本体.血 = 本体.血 - 对手.伤害;
        __reg6 = 3;
        单挑法术使用跟随("法术效果4", 本体, 100);
        单挑打退的表现(本体, __reg6 * -1);
        战斗震屏程序();
        更新单挑血值();
        return;
    }
    if (__reg4 <= 95) 
    {
        战斗震屏程序();
        本体.gotoAndStop(3);
        对手.gotoAndStop(6);
        对手.血 = 对手.血 + 5;
        if (对手.血 > 100) 
        {
            对手.血 = 100;
        }
        __reg6 = 4;
        单挑法术使用跟随("法术效果6", 对手, 100);
        单挑打退的表现(对手, __reg6);
        更新单挑血值();
        __reg5 = ["你妹", "不科学啊", "阴险", "擦", "呀"];
        单挑对话用跟随(__reg5[random(__reg5.length)], 本体);
        单挑对话用跟随("恢复", 对手);
        return;
    }
    if (__reg4 <= 98) 
    {
        战斗震屏程序();
        本体.gotoAndStop(6);
        对手.gotoAndStop(3);
        本体.血 = 本体.血 + 5;
        if (本体.血 > 100) 
        {
            本体.血 = 100;
        }
        __reg6 = 4;
        单挑法术使用跟随("法术效果6", 本体, 100);
        单挑打退的表现(本体, __reg6 * -1);
        更新单挑血值();
        __reg5 = ["你妹", "不科学啊", "阴险", "擦", "呀"];
        单挑对话用跟随(__reg5[random(__reg5.length)], 对手);
        单挑对话用跟随("恢复", 本体);
        return;
    }
    if (__reg4 <= 101) 
    {
        战斗震屏程序();
        本体.gotoAndStop(6);
        单挑法术使用跟随("法术效果5", 本体, 100);
        __reg6 = 4;
        单挑打退的表现(对手, __reg6);
        更新单挑血值();
        __reg5 = ["爆", "呀", "啊", "哈", "滚"];
        单挑对话用跟随(__reg5[random(__reg5.length)], 本体);
        战斗震屏程序();
        return;
    }
    if (__reg4 <= 104) 
    {
        战斗震屏程序();
        对手.gotoAndStop(6);
        单挑法术使用跟随("法术效果5", 对手, 100);
        __reg6 = 4;
        单挑打退的表现(本体, __reg6 * -1);
        更新单挑血值();
        __reg5 = ["爆", "呀", "啊", "哈", "滚"];
        单挑对话用跟随(__reg5[random(__reg5.length)], 对手);
        战斗震屏程序();
    }
}
function 单挑打退的表现(对象, 参数)
{
    var __reg2 = 对象.createEmptyMovieClip("计算", 20);
    __reg2.时间 = 15;
    __reg2.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 > 0) 
        {
            对象._x = 对象._x + 参数;
            return;
        }
        this.removeMovieClip();
    }
    ;
}
function 秒杀后的表现(对象, 参数, 方向)
{
    var __reg2 = 对象.createEmptyMovieClip("计算", 20);
    __reg2.时间 = 11;
    __reg2._xscale = 方向;
    __reg2.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 > 0) 
        {
            对象.gotoAndStop(2);
            对象._x = 对象._x + 参数;
            return;
        }
        对象.gotoAndStop(1);
        单挑战斗结束();
        this.removeMovieClip();
    }
    ;
}
function 单挑战斗结束()
{
    delete _root.单挑元件.a0.onEnterFrame;
    delete _root.单挑元件.a1.onEnterFrame;
    var __reg3 = _root.单挑元件.attachMovie("通用按钮", "关闭", 20000, {_x: 540, _y: 280});
    __reg3._x = (640 - __reg3._width) / 2;
    __reg3._alpha = 0;
    __reg3.onEnterFrame = function ()
    {
        this._alpha = this._alpha + 20;
        if (this._alpha >= 100) 
        {
            delete this.onEnterFrame;
        }
    }
    ;
    __reg3.文本.text = "战斗关闭";
    var __reg4 = "";
    if (_root.单挑元件.a0.死 == 1) 
    {
        _root.单挑胜负判断 = _root.单挑元件.a1.属性.名字 + "获得胜利。";
        __reg4 = _root.单挑元件.a1.属性;
    }
    else 
    {
        _root.单挑胜负判断 = _root.单挑元件.a0.属性.名字 + "获得胜利。";
        __reg4 = _root.单挑元件.a0.属性;
    }
    var __reg5 = _root.比赛项目.排名面板.attachMovie("加载的比赛板子", "加载的比赛板子" + _root.比赛项目.排名面板.序列, _root.比赛项目.排名面板.序列 + 8000, {_x: _root.单挑位置.位置._x, _y: _root.单挑位置.位置._y});
    _root.单挑位置.位置.属性 = __reg4;
    __reg5.文本.html = true;
    __reg5.文本.htmlText = 颜色代码(__reg4.名字 + "\n武术：" + __reg4.武术, _root.单挑位置.颜色);
    __reg3.按.onPress = function ()
    {
        _root.单挑元件.removeMovieClip();
    }
    ;
    ++_root.比赛项目.排名面板.序列;
}
function 单挑法术使用(法术, 对象, 偏移)
{
    var __reg2 = 对象.序列;
    var __reg6 = 对象._parent.attachMovie(法术, 法术, 1000 + __reg2, {_x: 对象._x, _y: 对象._y});
}
function 单挑法术使用跟随(法术, 对象)
{
    var __reg2 = 对象.序列;
    var __reg3 = 对象._parent.attachMovie(法术, 法术, 1000 + __reg2, {_x: 对象._x, _y: 对象._y});
    __reg3.onEnterFrame = function ()
    {
        this._x = 对象._x;
    }
    ;
}
function 单挑对话用跟随(文本, 对象)
{
    var __reg3 = 对象.序列;
    var __reg2 = 对象._parent.attachMovie("单挑对话啊", 法术 + __reg3, 1200 + __reg3, {_x: 对象._x, _y: 对象._y});
    __reg2.文本.text = 文本;
    __reg2.时间 = 35;
    __reg2.onEnterFrame = function ()
    {
        --this.时间;
        this._x = 对象._x;
        if (this.时间 < 0) 
        {
            this._alpha = this._alpha - 20;
            if (this._alpha < 0) 
            {
                this.removeMovieClip();
            }
        }
    }
    ;
}

//  Action tag #6

function 联姻处理程序(大殿)
{
    var 所有可嫁公主 = [];
    var __reg5 = 0;
    while (__reg5 < 所有子女数据.length) 
    {
        if (0 != (0 != 所有子女数据[__reg5].年龄 >= 16 & 0 != (所有子女数据[__reg5].婚 == 0)) & 0 != (所有子女数据[__reg5].性别 == 1)) 
        {
            所有可嫁公主.push(所有子女数据[__reg5]);
        }
        ++__reg5;
    }
    刷新阵营几城的程序();
    var __reg6 = [];
    __reg5 = 0;
    while (__reg5 < 8) 
    {
        if (阵营[__reg5].城.length > 0) 
        {
            __reg6.push(阵营[__reg5]);
        }
        ++__reg5;
    }
    var 面板 = 大殿.attachMovie("军事总表面板", "联姻面板", 98212, {_x: 0, _y: 0});
    面板.关闭.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    面板.文本.text = "启禀皇上：您希望向哪个国家远嫁公主。\n";
    var 国家按钮 = [];
    var __reg9 = 4;
    var __reg10 = 12;
    var __reg4 = 0;
    var __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= __reg10) 
        {
            return;
        }
        __reg5 = 0;
        while (__reg5 < __reg9) 
        {
            var __reg2 = 面板.attachMovie("补助小条", "补助小条" + __reg4, 112 + __reg4, {_x: __reg5 * 125 + 80, _y: __reg3 * 35 + 80});
            __reg2.文本.text = __reg6[__reg4].名称;
            __reg2.外交 = __reg6[__reg4].外交;
            __reg2.属性 = __reg6[__reg4];
            if (__reg6[__reg4].名称 == undefined) 
            {
                __reg2._visible = false;
            }
            else 
            {
                __reg2._visible = true;
            }
            __reg2.an.onPress = function ()
            {
                if (所有可嫁公主.length <= 0) 
                {
                    面板.removeMovieClip();
                    遵旨显示下好吗("回禀皇上：现没有成年的公主。", 大殿.遵旨);
                    return;
                }
                var __reg2 = 0;
                while (__reg2 < 国家按钮.length) 
                {
                    国家按钮[__reg2]._visible = false;
                    ++__reg2;
                }
                面板.文本.text = "希望哪位公主远嫁" + this._parent.属性.名称 + "？";
                所有可嫁公主.sort(打乱数组程序);
                选择公主远嫁面板(所有可嫁公主, 大殿, 面板, this._parent.属性, this._parent.外交);
            }
            ;
            国家按钮.push(__reg2);
            ++__reg4;
            ++__reg5;
        }
        ++__reg3;
    }
}
function 选择公主远嫁面板(所有可嫁公主, 大殿, 面板, 阵营数据, 外交)
{
    var 解释 = 面板.attachMovie("解释框", "解释框", 9000, {_x: 900, _y: 320});
    解释._x = (640 - 解释._width) / 2;
    var __reg8 = 4;
    var __reg9 = 5;
    var __reg4 = 0;
    var __reg5 = 0;
    for (;;) 
    {
        if (__reg5 >= __reg9) 
        {
            return;
        }
        var __reg3 = 0;
        while (__reg3 < __reg8) 
        {
            var __reg2 = 面板.attachMovie("补助小条", "补助小条" + __reg4, 112 + __reg4, {_x: __reg3 * 125 + 80, _y: __reg5 * 35 + 80});
            __reg2.属性 = 所有可嫁公主[__reg4];
            __reg2.文本.text = __reg2.属性.名称;
            __reg2.资料 = "公主：" + __reg2.属性.名称 + "，年龄：" + __reg2.属性.年龄 + "\n母亲：" + __reg2.属性.母亲 + "，民间评价：" + __reg2.属性.性情;
            __reg2.an.onRollOut = function ()
            {
                解释.文本.text = "";
            }
            ;
            __reg2.an.onRollOver = function ()
            {
                解释.文本.text = this._parent.资料;
            }
            ;
            __reg2.an.onPress = function ()
            {
                进入联姻程序(所有可嫁公主, 大殿, 面板, 阵营数据, this._parent.属性, 外交);
            }
            ;
            if (__reg2.属性.名称 == undefined) 
            {
                __reg2._visible = false;
            }
            else 
            {
                __reg2._visible = true;
            }
            ++__reg4;
            ++__reg3;
        }
        ++__reg5;
    }
}
function 进入联姻程序(所有可嫁公主, 大殿, 面板, 阵营数据, 子女, 外交)
{
    var 程序面板 = 大殿.attachMovie("礼明殿面板", "礼明殿面板", 98212, {_x: 0, _y: 0});
    程序面板.关闭._visible = false;
    程序面板.使者0.gotoAndStop(阵营数据.跳);
    程序面板.使者1.gotoAndStop(阵营数据.跳);
    程序面板.离开.text = "";
    程序面板.按._visible = false;
    var 对话 = 程序面板.attachMovie("礼明殿对话", "礼明殿对话", 400, {_x: 0, _y: 0});
    trace("外交:" + 外交);
    if (外交 == 0) 
    {
        对话.文本.text = "联姻什么的没必要了。\n来打仗吧。";
        对话.an.onPress = function ()
        {
            遵旨显示下好吗("与" + 阵营数据.名称 + "联姻失败。", 大殿.遵旨);
            程序面板.removeMovieClip();
        }
        ;
        return;
    }
    if (阵营数据.名称 == "突厥") 
    {
        var __reg1 = random(3);
        if (__reg1 == 0) 
        {
            对话.文本.text = "中原王，\n如果贵国公主和你长得一样，就算了。\n我们可汗不缺女人。";
        }
        else if (__reg1 == 1) 
        {
            对话.文本.text = "中原王，\n我国可汗的后宫有来自世界上每个角落的女人。";
        }
        else if (__reg1 == 2) 
        {
            对话.文本.text = "中原王，\n我国可汗不喜欢汉人女子。";
        }
        对话.an.onPress = function ()
        {
            遵旨显示下好吗("与" + 阵营数据.名称 + "联姻失败。", 大殿.遵旨);
            程序面板.removeMovieClip();
        }
        ;
        return;
    }
    if (阵营数据.名称 == "高丽") 
    {
        对话.文本.text = "天朝陛下，\n我等会隆重操办婚事，将公主安全送往我国的思密达。";
        对话.an.onPress = function ()
        {
            成功操办婚事(子女, 程序面板, 阵营数据.名称, 对话);
            对话.an.onPress = function ()
            {
                遵旨显示下好吗("与" + 阵营数据.名称 + "关系值略微增加。", 大殿.遵旨);
                程序面板.removeMovieClip();
            }
            ;
        }
        ;
        return;
    }
    if (子女.年龄 > 22) 
    {
        对话.文本.text = "陛下，\n公主年长，路途遥远，恐难以经受长途颠簸之苦。";
        对话.an.onPress = function ()
        {
            遵旨显示下好吗("与" + 阵营数据.名称 + "联姻失败。", 大殿.遵旨);
            程序面板.removeMovieClip();
        }
        ;
        return;
    }
    对话.文本.text = "谢陛下美意，\n公主花容月貌，古灵精怪。必定能让我国国王开心。";
    对话.an.onPress = function ()
    {
        成功操办婚事(子女, 程序面板, 阵营数据.名称, 对话);
        对话.an.onPress = function ()
        {
            遵旨显示下好吗("与" + 阵营数据.名称 + "关系值略微增加。", 大殿.遵旨);
            程序面板.removeMovieClip();
        }
        ;
    }
    ;
}
function 成功操办婚事(子女, 程序面板, 阵营数据, 对话)
{
    子女.婚 = 1;
    子女.封号 = "远嫁" + 阵营数据;
    var 寿命 = 20 + random(50);
    var 嫁妆 = 程序面板.attachMovie("比赛奖励面板", "比赛奖励面板", 2000, {_x: 0, _y: 0});
    嫁妆.文本.text = "皇上，" + 子女.名称 + "公主远嫁。\n准备要怎么办?";
    嫁妆.文0.text = "低调操办";
    嫁妆.文1.text = "礼部操办";
    嫁妆.文2.text = "皇后操办";
    嫁妆.文3.text = "亲自操办";
    嫁妆.an0.onPress = function ()
    {
        寿命 = 寿命 - 5;
        远嫁公主.push({id: 子女.id, 寿命: 寿命});
        国家.金钱 = 国家.金钱 - 10000;
        更新资料();
        对话.文本.text = "那我们带公主准备出发。";
        嫁妆.removeMovieClip();
    }
    ;
    嫁妆.an1.onPress = function ()
    {
        远嫁公主.push({id: 子女.id, 寿命: 寿命});
        国家.金钱 = 国家.金钱 - 20000;
        更新资料();
        对话.文本.text = "那我们带公主准备出发。";
        嫁妆.removeMovieClip();
    }
    ;
    嫁妆.an2.onPress = function ()
    {
        寿命 = 寿命 + 10;
        远嫁公主.push({id: 子女.id, 寿命: 寿命});
        国家.金钱 = 国家.金钱 - 50000;
        更新资料();
        对话.文本.text = "那我们带公主准备出发。";
        嫁妆.removeMovieClip();
    }
    ;
    嫁妆.an3.onPress = function ()
    {
        寿命 = 寿命 + 15;
        远嫁公主.push({id: 子女.id, 寿命: 寿命});
        国家.金钱 = 国家.金钱 - 100000;
        更新资料();
        对话.文本.text = "那我们带公主准备出发。";
        嫁妆.removeMovieClip();
    }
    ;
}

//  Action tag #7

function 打猎程序()
{
    if (主角.打猎 == 1) 
    {
        小提示("围猎过的猎场得休整一下。");
        return;
    }
    if (主角.当前时辰 == 2) 
    {
        小提示("晚上不适合上山狩猎。");
        return;
    }
    移除板子再推进(_root.紫辰殿面板);
    _root.内侍面板.removeMovieClip();
    var 先选择一下 = _root.attachMovie("打猎选择", "打猎选择", 90200, {_x: 0, _y: 0});
    var 本次出猎物 = 8;
    if (季节 == "春") 
    {
        本次出猎物 = 12;
    }
    else if (季节 == "夏") 
    {
        本次出猎物 = 16;
    }
    else if (季节 == "秋") 
    {
        本次出猎物 = 20;
    }
    else if (季节 == "冬") 
    {
        本次出猎物 = 8;
    }
    先选择一下.文1.text = "自动";
    先选择一下.文2.text = "手动";
    先选择一下.文本.text = "皇上：\n请选择狩猎方式。";
    先选择一下.an1.onPress = function ()
    {
        var __reg5 = _root.attachMovie("自动狩猎", "打猎面板", 90400, {_x: 0, _y: 0});
        打猎面板.对话.文本.text = "皇上带领卫队进山狩猎。";
        打猎面板.对话.an.onPress = function ()
        {
            var __reg2 = Math.round(本次出猎物 * 0.5 + random(Math.round(本次出猎物 * 0.5)));
            打猎面板.对话.文本.text = "打中不少猎物，体力上限增加" + __reg2 * 2 + "点。\n点击屏幕退出狩猎。";
            _root.主角.健康 = _root.主角.健康 + 3;
            if (_root.主角.健康 > 100) 
            {
                _root.主角.健康 = 100;
            }
            if (主角.体力上限 < 999) 
            {
                主角.体力上限 = 主角.体力上限 + __reg2 * 2;
                加载进步动画条的说("体力");
            }
            打猎面板.对话.an.onPress = function ()
            {
                消失吧打猎图(打猎面板);
            }
            ;
            更新资料();
        }
        ;
        先选择一下.removeMovieClip();
    }
    ;
    先选择一下.an2.onPress = function ()
    {
        var __reg3 = _root.attachMovie("打猎面板", "打猎面板", 90400, {_x: 0, _y: 0});
        var __reg4 = [];
        var __reg2 = 0;
        while (__reg2 < 22) 
        {
            if (__reg3["a" + __reg2] !== undefined) 
            {
                __reg4.push(__reg3["a" + __reg2]);
                __reg3["a" + __reg2]._visible = false;
                __reg3["a" + __reg2].ID = __reg2;
            }
            ++__reg2;
        }
        __reg3.本次出猎物 = 本次出猎物;
        __reg3.打中几只 = 0;
        __reg3.季节.text = 季节 + "季，御猎苑捕猎。";
        __reg3.提示.text = "猎物打中：" + __reg3.打中几只 + "/" + 本次出猎物;
        __reg4.sort(打乱数组程序);
        开始进行捕猎(__reg3, __reg4, 本次出猎物);
        先选择一下.removeMovieClip();
    }
    ;
    先选择一下.取消.onPress = function ()
    {
        先选择一下.removeMovieClip();
    }
    ;
}
function 开始进行捕猎(元件, 所有怪物, 本次出猎物)
{
    元件.时间 = 0;
    元件.顺序 = 0;
    元件.onEnterFrame = function ()
    {
        ++this.时间;
        if (this.时间 % 45 == 0) 
        {
            if (this.顺序 < 本次出猎物) 
            {
                出怪吧猎人(所有怪物, this, this.顺序);
                ++this.顺序;
                return;
            }
            元件.结束.gotoAndPlay(2);
            结束吧打猎程序(所有怪物, this);
            delete this.onEnterFrame;
        }
    }
    ;
}
function 结束吧打猎程序(所有怪物, 元件)
{
    var __reg3 = 0;
    while (__reg3 < 所有怪物.length) 
    {
        所有怪物[__reg3]._visible = false;
        delete 所有怪物[__reg3].onEnterFrame;
        ++__reg3;
    }
    元件.结束文本.text = "狩猎结束，体力上限增加" + 元件.打中几只 * 2 + "点。\n点击屏幕退出狩猎。";
    _root.主角.健康 = _root.主角.健康 + 3;
    if (_root.主角.健康 > 100) 
    {
        _root.主角.健康 = 100;
    }
    if (主角.体力上限 < 999) 
    {
        主角.体力上限 = 主角.体力上限 + 元件.打中几只 * 2;
        加载进步动画条的说("体力");
    }
    元件.onPress = function ()
    {
        消失吧打猎图(this);
    }
    ;
    更新资料();
}
function 消失吧打猎图(元件)
{
    元件.onEnterFrame = function ()
    {
        this._alpha = this._alpha - 20;
        if (this._alpha <= 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 出怪吧猎人(所有怪物, 路径, 顺序)
{
    var __reg1 = 所有怪物[顺序];
    __reg1._visible = true;
    __reg1.gotoAndStop(1);
    自己看要停留多久猎人(__reg1, 路径);
}
function 自己看要停留多久猎人(出谁, 路径)
{
    出谁.时间啊 = random(60) + 60;
    可以射击我大概这样吧(出谁, 路径);
    出谁.onEnterFrame = function ()
    {
        --this.时间啊;
        if (this.时间啊 < 0) 
        {
            this._visible = false;
            delete this.onEnterFrame;
            return;
        }
        if (this.时间啊 < 10) 
        {
            if (this.时间啊 % 3 == 0) 
            {
                this._alpha = 80;
                return;
            }
            this._alpha = 100;
        }
    }
    ;
}
function 可以射击我大概这样吧(对象, 路径)
{
    对象.onPress = function ()
    {
        this.attachMovie("射击喷血", "射击喷血", 9220, {_x: this._width / 2, _y: this._height / 2});
        this.gotoAndStop(2);
        this.enabled = false;
        this.时间 = 9;
        路径.打中几只 = 路径.打中几只 + 1;
        路径.提示.text = "猎物打中：" + 路径.打中几只 + "/" + 路径.本次出猎物;
        主角.打猎 = 1;
        this.onEnterFrame = function ()
        {
            --this.时间;
            if (this.时间 < 0) 
            {
                this._alpha = this._alpha - 20;
                if (this._alpha <= 0) 
                {
                    this.removeMovieClip();
                    delete (this.onEnterFrame);
                }
            }
        }
        ;
    }
    ;
}

//  Action tag #8

function 限制主要属性()
{
    if (主角.体力 > 主角.体力上限) 
    {
        主角.体力 = 主角.体力上限;
    }
    if (主角.健康 > 100) 
    {
        主角.健康 = 100;
    }
    if (主角.快乐 > 100) 
    {
        主角.快乐 = 100;
    }
    if (主角.道德 > 999) 
    {
        主角.道德 = 999;
    }
    if (主角.暴戾 > 999) 
    {
        主角.暴戾 = 999;
    }
    if (主角.魅力 > 999) 
    {
        主角.魅力 = 999;
    }
    if (主角.智慧 > 999) 
    {
        主角.智慧 = 999;
    }
    if (主角.年龄 > 100) 
    {
        主角.年龄 = 100;
    }
    if (主角.才艺 > 999) 
    {
        主角.才艺 = 999;
    }
    if (主角.威望 > 999) 
    {
        主角.威望 = 999;
    }
    if (国家.金钱 > 1000000000) 
    {
        国家.金钱 = 1000000000;
    }
}
function 更新资料()
{
    if (年 == 1) 
    {
        皇宫.跳板.年代.text = _root.主角.年号 + "元年 " + 季节 + "季 " + 旬;
    }
    else 
    {
        皇宫.跳板.年代.text = _root.主角.年号 + "" + 年 + "年 " + 季节 + "季 " + 旬;
    }
    _root.主角.年 = 年;
    _root.主角.季节 = 季节;
    _root.主角.旬 = 旬;
    限制主要属性();
    皇宫.跳板.体力.text = 主角.体力 + 1;
    皇宫.跳板.健康.text = 主角.健康;
    皇宫.跳板.道德.text = 主角.道德 + 1;
    皇宫.跳板.快乐.text = 主角.快乐;
    皇宫.跳板.暴戾.text = 主角.暴戾 + 1;
    皇宫.跳板.魅力.text = 主角.魅力 + 1;
    皇宫.跳板.智慧.text = 主角.智慧 + 1;
    皇宫.跳板.武术.text = 主角.武术 + 1;
    皇宫.跳板.年龄.text = 主角.年龄 + 1;
    皇宫.跳板.才艺.text = 主角.才艺 + 1;
    皇宫.跳板.威望.text = 主角.威望 + 1;
    皇宫.跳板.国库.text = Math.round(国家.金钱 / 10000) + "万两";
    皇宫.跳板.体力条.条._xscale = Math.ceil(主角.体力 / 主角.体力上限 * 100);
    皇宫.跳板.健康条.条._xscale = Math.ceil(主角.健康 / 100 * 100);
    皇宫.跳板.快乐条.条._xscale = Math.ceil(主角.快乐 / 100 * 100);
    皇宫.跳板.道德条.条._xscale = Math.ceil(主角.道德 / 999 * 100);
    皇宫.跳板.暴戾条.条._xscale = Math.ceil(主角.暴戾 / 999 * 100);
    皇宫.跳板.魅力条.条._xscale = Math.ceil(主角.魅力 / 999 * 100);
    皇宫.跳板.智慧条.条._xscale = Math.ceil(主角.智慧 / 999 * 100);
    皇宫.跳板.武术条.条._xscale = Math.ceil(主角.武术 / 999 * 100);
    皇宫.跳板.年龄条.条._xscale = Math.ceil(主角.年龄 / 100 * 100);
    皇宫.跳板.才艺条.条._xscale = Math.ceil(主角.才艺 / 999 * 100);
    皇宫.跳板.威望条.条._xscale = Math.ceil(主角.威望 / 999 * 100);
}

//  Action tag #9

function 收支表程序(路径)
{
    var __reg20 = 0;
    var __reg19 = 0;
    var __reg22 = 0;
    var __reg18 = 0;
    var __reg26 = 0;
    var __reg24 = 0;
    var __reg27 = 0;
    var __reg23 = 0;
    var __reg25 = 0;
    var __reg16 = 0;
    var __reg17 = 0;
    var __reg13 = 0;
    var __reg15 = 0;
    var __reg7 = 0;
    var __reg12 = 0;
    var __reg14 = 0;
    var __reg11 = 0;
    var __reg10 = 0;
    城市等级发展();
    var __reg5 = 0;
    while (__reg5 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg5].归属 == 8) 
        {
            ++__reg20;
            __reg19 = __reg19 + _root.所有城池[__reg5].人口;
            __reg22 = __reg22 + _root.所有城池[__reg5].壮丁;
            __reg18 = __reg18 + _root.所有城池[__reg5].士兵;
            __reg26 = __reg26 + _root.所有城池[__reg5].安定;
            __reg24 = __reg24 + _root.所有城池[__reg5].治安;
            __reg27 = __reg27 + _root.所有城池[__reg5].运输;
            __reg23 = __reg23 + _root.所有城池[__reg5].体能;
            __reg25 = __reg25 + _root.所有城池[__reg5].积粮;
            __reg16 = __reg16 + _root.所有城池[__reg5].农业开发度;
            __reg17 = __reg17 + _root.所有城池[__reg5].商业开发度;
            __reg13 = __reg13 + _root.所有城池[__reg5].矿业开发度;
            __reg15 = __reg15 + _root.所有城池[__reg5].牧业开发度;
        }
        ++__reg5;
    }
    临时文 = undefined;
    __reg5 = 0;
    while (__reg5 < _root.所有城池.length) 
    {
        var __reg2 = 0;
        while (__reg2 < _root.所有人才.length) 
        {
            if (0 != (_root.所有人才[__reg2].类 == "知府") & 0 != (_root.所有人才[__reg2].城.id == _root.所有城池[__reg5].id)) 
            {
                __reg14 = __reg14 + _root.所有人才[__reg2].清廉;
                __reg12 = __reg12 + 1;
                var __reg4 = 所有经济区[random(所有经济区.length)];
                _root.所有城池[__reg4] = _root.所有城池[__reg4] + Math.ceil(_root.所有人才[__reg2].智慧 * 0.1);
                var __reg3 = 0;
                if (_root.所有城池[__reg5].方针 == 1) 
                {
                    __reg3 = 40000 * (1 + _root.所有人才[__reg2].清廉 * 0.01);
                }
                else if (_root.所有城池[__reg5].方针 == 2) 
                {
                    __reg3 = 80000 * (1 + _root.所有人才[__reg2].清廉 * 0.01);
                }
                else if (_root.所有城池[__reg5].方针 == 3) 
                {
                    __reg3 = 2000 * (1 + _root.所有人才[__reg2].清廉 * 0.01);
                }
                __reg10 = __reg10 + __reg3;
            }
            ++__reg2;
        }
        ++__reg5;
    }
    var __reg28 = [0, 400, 800, 1600, 3200, 6000, 15000];
    __reg5 = 0;
    while (__reg5 < _root.所有人才.length) 
    {
        __reg11 = __reg11 + _root.所有俸禄[_root.所有人才[__reg5].地位];
        var __reg9 = 把爵位转换成数值(_root.所有人才[__reg5].爵位);
        __reg11 = __reg11 + __reg28[__reg9];
        ++__reg5;
    }
    var __reg31 = 国家.士兵 * 4;
    var __reg29 = 国家.民夫 * 3;
    var __reg30 = Math.round(__reg14 / __reg20);
    var __reg21 = 0;
    __reg5 = 0;
    while (__reg5 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg5].名字 !== undefined) 
        {
            __reg21 = __reg21 + 8000;
        }
        ++__reg5;
    }
    路径.文本.text = "回禀皇上：";
    路径.文本.text = 路径.文本.text + ("我国目前有" + __reg20 + "个州府。");
    路径.文本.text = 路径.文本.text + ("\n国库现有白银：" + Math.round(_root.国家.金钱 / 10000) + "万两");
    路径.文本.text = 路径.文本.text + ("\n总人口：" + Math.round(__reg19 / 10000) + "万。壮丁数量：" + Math.round(__reg22 / 10000) + "万。");
    路径.文本.text = 路径.文本.text + ("\n地区兵力：" + Math.round(__reg18 / 10000) + "万。");
    路径.文本.text = 路径.文本.text + ("\n总安定：" + __reg26 + "，");
    路径.文本.text = 路径.文本.text + ("\n总运输：" + __reg27 + "，");
    路径.文本.text = 路径.文本.text + ("\n总治安：" + __reg24 + "，");
    路径.文本.text = 路径.文本.text + ("\n总体能：" + __reg23 + "，");
    路径.文本.text = 路径.文本.text + ("\n总积粮：" + __reg25 + "万石。");
    路径.文本.text = 路径.文本.text + ("\n官员总俸禄：" + __reg11 + "。");
    路径.文本.text = 路径.文本.text + ("\n官员平均清廉：" + __reg30 + "，知府数量：" + __reg12 + "名。");
    路径.文本.text = 路径.文本.text + ("\n宫廷行政费用：" + Math.round(__reg21 / 10000) + "万两" + "，地方行政费用：" + Math.round(__reg10 / 10000) + "万两。");
    路径.文本.text = 路径.文本.text + ("\n地区士兵粮饷：" + Math.round(__reg18 / 10000) + "万两");
    路径.文本.text = 路径.文本.text + ("\n国家士兵粮饷：" + Math.round(__reg31 * 2 / 10000) + "万两");
    路径.文本.text = 路径.文本.text + ("\n民夫粮饷：" + Math.round(__reg29 / 10000) + "万两");
    路径.文本.text = 路径.文本.text + ("\n农业规模：" + __reg16 + "，");
    路径.文本.text = 路径.文本.text + ("\n商业规模：" + __reg17 + "，");
    路径.文本.text = 路径.文本.text + ("\n矿业规模：" + __reg13 + "，");
    路径.文本.text = 路径.文本.text + ("\n牧业规模：" + __reg15 + "。");
    __reg5 = 0;
    while (__reg5 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg5].归属 == 8) 
        {
            var __reg8 = Math.round((__reg16 * 25 + __reg17 * 30 + __reg13 * 28 + __reg15 * 20) * (国家.税率 * 4 / 100));
            __reg7 = __reg7 + __reg8;
        }
        ++__reg5;
    }
    if (__reg7 > __reg19 * 2) 
    {
        __reg7 = __reg19 * 2;
    }
    路径.文本.text = 路径.文本.text + ("\n季度总收入：" + Math.round(__reg7 / 10000) + "万两。");
    __reg7 = Math.round(__reg7 * __reg30 * 0.01);
    __reg7 = __reg7 - __reg31;
    __reg7 = __reg7 - __reg18 * 2;
    __reg7 = __reg7 - __reg29;
    __reg7 = __reg7 - __reg21;
    __reg7 = __reg7 - __reg11;
    __reg7 = __reg7 - __reg10;
    路径.文本.text = 路径.文本.text + ("\n实际入库银两：" + Math.round(__reg7 / 10000) + "万两。");
    return __reg7;
}
var 所有经济区 = ["牧业开发度", "农业开发度", "矿业开发度", "商业开发度"];

//  Action tag #10

function 生病出图程序()
{
    主角.开科考试 = 0;
    主角.祭祀活动 = 0;
    主角.体力 = 10;
    主角.健康 = 主角.健康 - 30;
    if (主角.健康 < 10) 
    {
        主角.健康 = 10;
    }
    _root.attachMovie("皇上晕倒了", "皇上晕倒了", 310000, {_x: 0, _y: 0});
    主角.生病次数 = 主角.生病次数 + 1;
    主角.寿命 = 主角.寿命 - (random(20) + 10 * 主角.生病次数);
    生病了的程序(皇上晕倒了);
    更新资料();
}
function 生病了的程序(皇上晕倒了)
{
    皇上晕倒了.onEnterFrame = function ()
    {
        if (this._currentframe > 15) 
        {
            this.onPress = function ()
            {
                御医出现咯();
                this.removeMovieClip();
            }
            ;
            return;
        }
        this.onPress = function ()
        {
        }
        ;
    }
    ;
}
function 御医出现咯()
{
    var 面板 = _root.attachMovie("御医出现", "御医出现", 234000, {_x: 0, _y: 0});
    if (主角.寿命 <= 10) 
    {
        面板.文本.text = "召集所有御医，可是回天无力。";
        面板.继续.onPress = function ()
        {
            死亡判定(0);
            面板.removeMovieClip();
        }
        ;
        return;
    }
    if (主角.寿命 <= 100) 
    {
        面板.文本.text = "御医前来诊断，皇上病情看来有些严重。";
    }
    else 
    {
        面板.文本.text = "皇上因体力透支导致昏迷，御医前来诊断。";
    }
    面板.继续.onPress = function ()
    {
        主角.体力 = 60;
        主角.当前时辰 = 4;
        主角.生病刚好 = 1;
        时辰推进();
        面板.removeMovieClip();
    }
    ;
}
function 每月后宫数据处理()
{
    if (远嫁公主.length > 0) 
    {
        var __reg3 = 0;
        while (__reg3 < 远嫁公主.length) 
        {
            远嫁公主[__reg3].寿命 = 远嫁公主[__reg3].寿命 - 1;
            if (远嫁公主[__reg3].寿命 <= 0) 
            {
                var __reg4 = {};
                var __reg2 = 0;
                while (__reg2 < 所有子女数据.length) 
                {
                    if (所有子女数据[__reg2].id == 远嫁公主[__reg3].id) 
                    {
                        __reg4 = 所有子女数据[__reg2];
                    }
                    ++__reg2;
                }
                公主死亡事件(__reg4);
                远嫁公主.splice(__reg3, 1);
            }
            ++__reg3;
        }
    }
    __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= 主角.后宫.length) 
        {
            return;
        }
        var __reg1 = 主角.后宫[__reg3];
        if (__reg1.名字 !== undefined) 
        {
            if (__reg1.爱 < 0) 
            {
                var __reg7 = __reg1.名字;
                __reg6 = "御医来报:\n后宫" + 颜色代码(__reg1.称呼, "0000ff") + "娘娘" + 颜色代码(__reg7, "ff0000") + "死亡。\n请皇上节哀。";
                太监报告所有事件.push([__reg6, "快乐", -2, 0, 1]);
                __reg1.名字 = undefined;
                __reg1.爱 = 0;
            }
            else 
            {
                --__reg1.爱;
                if (__reg1.孕 !== 0) 
                {
                    --__reg1.孕;
                    if (__reg1.孕 == 1) 
                    {
                        __reg1.孕 = 0;
                        __reg1.病 = 0;
                        生产孩子程序(__reg1);
                    }
                }
                if (__reg1.病 === 0) 
                {
                    var __reg5 = random(100);
                    if (__reg5 == 0) 
                    {
                        __reg1.病 = 4;
                    }
                }
                else 
                {
                    --__reg1.病;
                    if (__reg1.孕 !== 0) 
                    {
                        __reg1.孕 = 0;
                        __reg1.病 = 3;
                        var __reg6 = 颜色代码(__reg1.称呼, "ff0000") + "娘娘大病一场，孩子小产了。";
                        太监报告所有事件.push([__reg6, "快乐", -5, 9, 3]);
                        __reg1.爱 = __reg1.爱 - 10;
                    }
                    if (__reg1.病 == 1) 
                    {
                        __reg1.病 = 0;
                    }
                }
            }
        }
        ++__reg3;
    }
}
function 公主死亡事件(公主)
{
    公主.封号 = "已死亡";
    var __reg2 = "";
    var __reg1 = 0;
    while (__reg1 < 主角.后宫.length) 
    {
        if (公主.母亲 == 主角.后宫[__reg1].名字) 
        {
            __reg2 = 主角.后宫[__reg1].称呼;
        }
        ++__reg1;
    }
    var __reg4 = "外国商人传来噩耗：" + 颜色代码(公主.名称, "ff0000") + "公主已经离世。";
    if (__reg2 !== "") 
    {
        __reg4 = __reg4 + ("\n" + __reg2 + "娘娘，已经哭晕过去了。");
    }
    __reg4 = __reg4 + "\n请节哀。";
    太监报告所有事件.push([__reg4, "快乐", -5, 0, 3]);
}
function 生产孩子程序(主子)
{
    var __reg2 = "";
    var __reg1 = 0;
    while (__reg1 < 主子.名字.length) 
    {
        __reg2 = __reg2 + 主子.名字.charAt(__reg1);
        ++__reg1;
    }
    var __reg4 = random(800);
    if (__reg4 == 0) 
    {
        if (random(10) <= 0) 
        {
            __reg11 = 皇帝的辈分 + 主名[random(主名.length)];
            __reg10 = 皇帝的辈分 + 主名[random(主名.length)];
            __reg9 = 皇帝的辈分 + 主名[random(主名.length)];
            var __reg8 = 皇帝的辈分 + 主名[random(主名.length)];
            var __reg7 = 皇帝的辈分 + 主名[random(主名.length)];
            var __reg6 = 皇帝的辈分 + 主名[random(主名.length)];
            var __reg5 = 皇帝的辈分 + 主名[random(主名.length)];
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg11, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg10, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg9, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg8, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg7, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg6, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg5, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            多生孩子的生产程序(主子, "七胞胎皇子", __reg11 + "，" + __reg10 + "，" + __reg9 + "，" + __reg8 + "，" + __reg7 + "，" + __reg6 + "，" + __reg5);
        }
        else 
        {
            var __reg11 = 皇帝的辈分 + 主名[random(主名.length)];
            var __reg10 = 皇帝的辈分 + 主名[random(主名.length)];
            var __reg9 = 皇帝的辈分 + 主名[random(主名.length)];
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg11, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg10, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            所有子女数据.push({id: 所有子女数据.length, 名称: __reg9, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
            多生孩子的生产程序(主子, "三胞胎皇子", __reg11 + "，" + __reg10 + "，" + __reg9);
        }
        return;
    }
    if (__reg4 == 1) 
    {
        __reg11 = 公主取名();
        __reg10 = 公主取名();
        __reg9 = 公主取名();
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg11, 性别: 1, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg10, 性别: 1, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg9, 性别: 1, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        多生孩子的生产程序(主子, "三胞胎公主", __reg11 + "，" + __reg10 + "，" + __reg9);
        return;
    }
    if (__reg4 == 2) 
    {
        __reg11 = 皇帝的辈分 + 主名[random(主名.length)];
        __reg10 = 皇帝的辈分 + 主名[random(主名.length)];
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg11, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg10, 性别: 0, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        多生孩子的生产程序(主子, "双胞胎皇子", __reg11 + "，" + __reg10);
        return;
    }
    if (__reg4 == 3) 
    {
        __reg11 = 公主取名();
        __reg10 = 公主取名();
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg11, 性别: 1, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        所有子女数据.push({id: 所有子女数据.length, 名称: __reg10, 性别: 1, 母亲: __reg2, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        多生孩子的生产程序(主子, "双胞胎公主", __reg11 + "，" + __reg10);
        return;
    }
    if (__reg4 == 4) 
    {
        龙凤胎生产程序(主子);
        return;
    }
    正常生产程序(主子);
}
function 多生孩子的生产程序(主子, 什么, 名称)
{
    主子.经验 = 主子.经验 + 10;
    主子.爱 = 主子.爱 + 15;
    var __reg1 = 颜色代码(主子.称呼, "ff0000") + "娘娘" + 颜色代码(主子.名字, "0000ff") + "非常努力。\n产下" + 什么 + "，分别是" + 名称 + "。";
    if (什么 == "七胞胎皇子") 
    {
        __reg1 = __reg1 + "\n跟葫芦娃有的一比了。";
    }
    太监报告所有事件.push([__reg1, "快乐", 5, 8, 2]);
}
function 龙凤胎生产程序(主子)
{
    var __reg5 = 皇帝的辈分 + 主名[random(主名.length)];
    var __reg4 = 公主取名();
    var __reg3 = "";
    var __reg1 = 0;
    while (__reg1 < 主子.名字.length) 
    {
        __reg3 = __reg3 + 主子.名字.charAt(__reg1);
        ++__reg1;
    }
    所有子女数据.push({id: 所有子女数据.length, 名称: __reg5, 性别: 0, 母亲: __reg3, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
    所有子女数据.push({id: 所有子女数据.length, 名称: __reg4, 性别: 1, 母亲: __reg3, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
    主子.经验 = 主子.经验 + 12;
    主子.爱 = 主子.爱 + 10;
    var __reg6 = 颜色代码(主子.称呼, "ff0000") + "娘娘" + 颜色代码(主子.名字, "0000ff") + "非常努力。\n为皇上诞下一对龙凤胎，皇子取名：" + __reg5 + "，公主取名：" + __reg4 + "。";
    太监报告所有事件.push([__reg6, "快乐", 5, 8, 2]);
}
function 正常生产程序(主子)
{
    var __reg7 = random(2);
    if (__reg7 == 0) 
    {
        __reg4 = 皇帝的辈分 + 主名[random(主名.length)];
        __reg6 = 0;
    }
    else 
    {
        var __reg4 = 公主取名();
        var __reg6 = 1;
    }
    var __reg3 = "";
    var __reg1 = 0;
    while (__reg1 < 主子.名字.length) 
    {
        __reg3 = __reg3 + 主子.名字.charAt(__reg1);
        ++__reg1;
    }
    所有子女数据.push({id: 所有子女数据.length, 名称: __reg4, 性别: __reg6, 母亲: __reg3, 年龄: 1, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
    if (__reg6 == 0) 
    {
        __reg8 = "皇子";
        主子.爱 = 主子.爱 + 12;
    }
    else 
    {
        var __reg8 = "公主";
        主子.爱 = 主子.爱 + 10;
    }
    主子.经验 = 主子.经验 + 5;
    var __reg5 = 颜色代码(主子.称呼, "ff0000") + "娘娘" + 颜色代码(主子.名字, "0000ff") + "为皇帝产下一名" + __reg8 + "，取名" + __reg4 + "。";
    太监报告所有事件.push([__reg5, "快乐", 5, 8, 2]);
}
function 子女与后宫女人的年龄加大()
{
    var __reg1 = 0;
    while (__reg1 < 主角.后宫.length) 
    {
        主角.后宫[__reg1].年龄 = 主角.后宫[__reg1].年龄 + 1;
        ++__reg1;
    }
    __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 所有子女数据.length) 
        {
            return;
        }
        if (所有子女数据[__reg1].封号 != "已死亡") 
        {
            所有子女数据[__reg1].年龄 = 所有子女数据[__reg1].年龄 + 1;
            if (0 != (0 != 所有子女数据[__reg1].年龄 >= 16 & 0 != (所有子女数据[__reg1].婚 == 0)) & 0 != (所有子女数据[__reg1].性别 == 0)) 
            {
                子女婚姻大事(所有子女数据[__reg1]);
            }
        }
        ++__reg1;
    }
}
function 子女婚姻大事(对象)
{
    对象.婚 = 1;
    var __reg1 = 各种封爵需要的地名[random(各种封爵需要的地名.length)];
    var __reg2 = ["卿士", "太史", "左史", "右史", "司徒", "司马", "司空", "司寇", "职方", "太师", "太傅", "大保", "少师", "少傅", "少保", "太宰", "少宰", "六卿", "封人", "工正", "相国", "庶长", "令尹", "柱国", "御史", "太尉", "太仆", "廷尉", "宗正", "少府", "将军", "洗马", "大夫", "博士", "郎中", "侍郎", "中郎", "议郎", "令史 ", "尚书", "六曹", "合阁", "仆射", "侍中", "内史", "刺史", "州牧", "别驾", "主薄", "长史", "学士", "总管", "元帅", "留守", "判官", "巡检", "知府", "亲王", "总督", "巡抚", "监司", "州判", "提督", "总兵"];
    var __reg3 = 姓[random(姓.length)];
    var __reg5 = __reg2[random(__reg2.length)];
    对象.封号 = __reg1 + "王";
    var __reg4 = "皇子" + 对象.名称 + "已年满十六，封" + __reg1 + "王，娶" + __reg3 + __reg5 + "之女" + 颜色代码(__reg3 + "氏", "ff0000") + "为王妃。";
    if (random(2) == 1) 
    {
        太监报告所有事件.push([__reg4, "快乐", 2, 0, 2]);
        return;
    }
    太监报告所有事件.push([__reg4, "快乐", 2, 0, 4]);
}

//  Action tag #11

function 太监报告事情(太监报告所有事件)
{
    if (太监报告所有事件.length > 0) 
    {
        把这个事件记录到总事件(太监报告所有事件[0]);
        _root.主角[太监报告所有事件[0][1]] = _root.主角[太监报告所有事件[0][1]] + 太监报告所有事件[0][2];
        加载进步动画条的说(String(太监报告所有事件[0][1]));
        更新资料();
        太监报告所有事件.splice(0, 1);
        return;
    }
    var __reg3 = 固定事件();
    if (__reg3.length > 0) 
    {
        _root.出现的固定事件 = __reg3;
        处理固定事件程序();
    }
}
function 处理固定事件程序()
{
    var __reg3 = 取出宰相程序();
    if (0 != __reg3.忠诚 < 40 & 0 != _root.主角.安全度 >= 30) 
    {
        if (_root.主角.难度 != 4) 
        {
            宰相篡位事件();
        }
        return;
    }
    if (所有城池[17].归属 !== 8) 
    {
        沦陷死亡事件();
        return;
    }
    if (_root.出现的固定事件.length > 0) 
    {
        this[_root.出现的固定事件[0]]();
        _root.出现的固定事件.splice(0, 1);
        return;
    }
}
function 结束固定事件程序(对象, 参数)
{
    对象.背景.removeMovieClip();
    对象.太监.removeMovieClip();
    if (参数 == 1) 
    {
        _root.出现的固定事件 = [];
        主角.当前时辰 = 4;
        时辰推进();
        return;
    }
    处理固定事件程序();
}
function 记录大事件的程序(事件)
{
    var __reg1 = 年 + "年" + 季节 + "季 " + 旬;
    这么多年所有大事.unshift([__reg1, 事件]);
}
function 把这个事件记录到总事件(事件)
{
    function 移除太监事件部分()
    {
        背景.removeMovieClip();
        太监.removeMovieClip();
        太监报告事情(太监报告所有事件);
    }
    var __reg3 = 年 + "年" + 季节 + "季 " + 旬;
    记录大事件的程序(事件[0]);
    var 背景 = _root.attachMovie("故宫背景", "故宫背景", 9220, {_x: 0, _y: 0});
    背景.gotoAndStop(季);
    背景.onPress = function ()
    {
    }
    ;
    模糊特效(背景);
    var 太监 = _root.attachMovie("太监报告事情", "太监报告事情的图形", 9225, {_x: 0, _y: 0});
    if (事件[3] == 0) 
    {
        太监.图._visible = false;
    }
    else 
    {
        太监.图._visible = true;
        太监.图.gotoAndStop(事件[3]);
    }
    太监.人.gotoAndStop(事件[4]);
    太监.文本.html = true;
    太监.文本.htmlText = 事件[0];
    太监.继续.onPress = function ()
    {
        移除太监事件部分();
    }
    ;
    if (事件[5] == 1) 
    {
        太监.继续._visible = false;
        太监.attachMovie("通用按钮", "是", 8000, {_x: 太监.继续字眼._x, _y: 太监.继续字眼._y});
        太监.attachMovie("通用按钮", "否", 8001, {_x: 太监.继续字眼._x + 100, _y: 太监.继续字眼._y});
        太监.是.文本.text = "准奏";
        太监.否.文本.text = "搁置";
        太监.是.按.onPress = function ()
        {
            移除太监事件部分();
            加载进步动画条的说("金钱");
            var __reg1 = 100000 + random(50000);
            国库钱数变动的程序(__reg1 * -1);
            事件[6].民心 = 事件[6].民心 + 2;
            更新资料();
        }
        ;
        太监.否.按.onPress = function ()
        {
            移除太监事件部分();
            事件[6].民心 = 事件[6].民心 - 3;
        }
        ;
    }
    if (事件[7] == 1) 
    {
        战斗震屏程序();
    }
    if (事件[8] == 1) 
    {
        太监.继续._visible = false;
        太监.attachMovie("通用按钮", "是", 8000, {_x: 太监.继续字眼._x, _y: 太监.继续字眼._y});
        太监.attachMovie("通用按钮", "否", 8001, {_x: 太监.继续字眼._x + 100, _y: 太监.继续字眼._y});
        太监.attachMovie("通用按钮", "否1", 8002, {_x: 太监.继续字眼._x - 100, _y: 太监.继续字眼._y});
        太监.是.文本.text = "罢官";
        太监.否.文本.text = "廷杖";
        太监.否1.文本.text = "斩首";
        太监.是.按.onPress = function ()
        {
            移除太监事件部分();
        }
        ;
        太监.否.按.onPress = function ()
        {
            移除太监事件部分();
        }
        ;
        太监.否1.按.onPress = function ()
        {
            移除太监事件部分();
        }
        ;
    }
}
var 太监报告所有事件 = [];
var 这么多年所有大事 = [];

//  Action tag #12

function 更新小贴士(路径)
{
    var __reg1 = 小贴士[random(小贴士.length)];
    路径.text = __reg1;
}
function 生成一个小兵(面板, 序列)
{
    var __reg3 = "小小兵" + random(8);
    var __reg2 = 面板.attachMovie(__reg3, __reg3 + 面板.getNextHighestDepth(), 序列, {_x: -50, _y: 80 + random(80)});
    __reg2.swapDepths(__reg2._y);
    __reg2.速度 = random(40) / 10 + 2;
    __reg2.onEnterFrame = function ()
    {
        this._x = this._x + this.速度;
        if (this._x > 850) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 进入加载列表(数据, 图库)
{
    图库._x = 1000;
    图库._y = 1000;
    var __reg4 = _root.attachMovie("比目鱼载图过场", "比目鱼载图过场", 80112, {_x: 0, _y: 0});
    var __reg7 = __reg4.attachMovie("小兵进行面板", "小兵进行面板", 9000, {_x: 0, _y: 60});
    var 进行 = __reg7.createEmptyMovieClip("进行", 800);
    进行.时间 = 0;
    进行.序列 = 0;
    进行.onEnterFrame = function ()
    {
        ++this.时间;
        if (this.时间 % 25 == 0) 
        {
            var __reg3 = random(3) + 1;
            var __reg2 = 0;
            for (;;) 
            {
                if (__reg2 >= __reg3) 
                {
                    return;
                }
                生成一个小兵(进行, this.序列);
                ++this.序列;
                ++__reg2;
            }
        }
    }
    ;
    __reg4.createEmptyMovieClip("小贴士滚动", 9552);
    更新小贴士(__reg4.贴士);
    __reg4.小贴士滚动.时间 = 0;
    __reg4.小贴士滚动.onEnterFrame = function ()
    {
        ++this.时间;
        if (this.时间 % 100 == 0) 
        {
            更新小贴士(this._parent.贴士);
        }
    }
    ;
    __reg4.序列 = 0;
    创建对象(数据, __reg4, 图库);
}
function 创建对象(数据, 过场, 图库)
{
    var __reg1 = 数据[过场.序列];
    var __reg8 = __reg1.id;
    var __reg5 = __reg1.地址;
    var __reg7 = __reg1.名称;
    var __reg4 = 0;
    过场.百分比.text = "加载:" + __reg4 + "%";
    过场.条._xscale = __reg4;
    过场.提示文本.text = "正在加载进度：" + (过场.序列 + 1) + "/" + 数据.length + "，" + __reg1.名称 + "资源。";
    var 目标 = 图库.createEmptyMovieClip(__reg1.名称, __reg1.id + 200);
    var __reg6 = 图库[__reg7];
    var __reg2 = new Object();
    __reg2.onLoadProgress = function (target_mc, bytesLoaded, bytesTotal)
    {
        var __reg1 = Math.round(bytesLoaded / bytesTotal * 100);
        过场.百分比.text = "加载:" + __reg1 + "%";
        过场.条._xscale = __reg1;
    }
    ;
    __reg2.onLoadError = function (target_mc, errorCode, httpStatus)
    {
        if (!(0 != (errorCode == "URLNotFound") | 0 != (errorCode == "LoadNeverCompleted"))) 
        {
            return;
        }
    }
    ;
    __reg2.onLoadComplete = function (target_mc)
    {
    }
    ;
    __reg2.onLoadInit = function (target_mc)
    {
        目标.gotoAndStop(1);
        ++过场.序列;
        if (过场.序列 < 数据.length) 
        {
            创建对象(数据, 过场, 图库);
            return;
        }
        外部图形加载结束();
        消失吧加载过场(过场);
    }
    ;
    var __reg3 = new MovieClipLoader();
    __reg3.addListener(__reg2);
    __reg3.loadClip(__reg5, __reg6);
}
function 消失吧加载过场(过场)
{
    过场.onEnterFrame = function ()
    {
        this._alpha = this._alpha - 10;
        if (this._alpha <= 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 外部图形加载结束()
{
    后宫美女最大为 = _root.图库.美女图.图._totalframes;
    对话打字效果(更新说明啊啊.文本, 更新文本内容, 更新说明啊啊.关闭);
}
function 图形加载尝试程序()
{
};
function 创建加载对象(地址, 路径, 跳的位置)
{
    var 加载的位置 = 路径._parent.attachMovie("加载等待", "加载等待", 3500, {_x: 路径._x, _y: 路径._y});
    var __reg3 = 路径;
    var __reg1 = new Object();
    __reg1.onLoadStart = function (target_mc)
    {
    }
    ;
    __reg1.onLoadError = function (target_mc, errorCode, httpStatus)
    {
        if (!(0 != (errorCode == "URLNotFound") | 0 != (errorCode == "LoadNeverCompleted"))) 
        {
            return;
        }
    }
    ;
    __reg1.onLoadProgress = function (target_mc, bytesLoaded, bytesTotal)
    {
        var __reg1 = Math.round(bytesLoaded / bytesTotal * 100);
        加载的位置.a._xscale = __reg1;
    }
    ;
    __reg1.onLoadComplete = function (target_mc)
    {
    }
    ;
    __reg1.onLoadInit = function (target_mc)
    {
        target_mc.图.gotoAndStop(跳的位置);
        去掉加载的过程(加载的位置);
    }
    ;
    var __reg4 = new MovieClipLoader();
    __reg4.addListener(__reg1);
    __reg4.loadClip(地址, __reg3);
}
function 去掉加载的过程(对象)
{
    对象.速度 = 10;
    对象.onEnterFrame = function ()
    {
        this.速度 = this.速度 + 5;
        this._alpha = this._alpha - this.速度;
        if (this._alpha < 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
加载列表 = [];
加载列表.push({id: 0, 地址: "meiren.swf", 名称: "美女图"});
加载列表.push({id: 1, 地址: "nanchong.swf", 名称: "男宠图"});
加载列表.push({id: 2, 地址: "waiyumeiren.swf", 名称: "外域美女图"});
加载列表.push({id: 3, 地址: "qinglou.swf", 名称: "其他美女图"});
_root.createEmptyMovieClip("图库", 943122);

//  Action tag #13

stop();
onEnterFrame = function ()
{
    byteloaded = _root.getBytesLoaded();
    bytetotal = _root.getBytesTotal();
    bili = int(byteloaded / bytetotal * 100);
    _root.mc.gotoAndPlay(bili);
    txt.text = "已下载   " + bili + " %";
    if (bili >= 100) 
    {
        delete onEnterFrame;
        gotoAndStop(2);
    }
}
;
版本.text = "版本：" + 版本号;
Stage.showMenu = false;
Stage.scaleMode = "noScale";

