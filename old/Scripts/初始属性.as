//Frame 1
//  Action tag #0

stop();

//  Action tag #1

function 游戏初始属性()
{
    if (_root.主角.难度 == undefined) 
    {
        _root.主角 = new Object();
        _root.主角.名字 = _root.临时名字;
        _root.主角.年号 = "元鼎";
        _root.主角.难度 = 1;
    }
    城市升级喜报 = 0;
    季 = 1;
    年 = 1;
    旬 = "上旬";
    主角.年龄 = 16;
    主角.健康 = 80 + random(20);
    主角.体力 = 150 + random(30);
    主角.体力上限 = 主角.体力;
    主角.快乐 = 100;
    主角.威望 = 100 + random(50);
    主角.武术 = 20 + random(10);
    主角.文学 = 20 + random(10);
    主角.魅力 = 20 + random(10);
    主角.智慧 = 20 + random(10);
    主角.暴戾 = 20 + random(10);
    主角.道德 = 20 + random(10);
    主角.才艺 = 20 + random(10);
    主角.寿命 = 300 + random(80);
    主角.大殿 = 1;
    主角.丹药 = [];
    主角.征税 = 0;
    主角.饱食度 = 0;
    主角.负数时间 = 0;
    主角.丹药列表 = undefined;
    我的宝贝 = [];
    我的宝贝.push(73);
    远嫁公主 = [];
    主角.后宫顺序 = [];
    主角.后宫 = [];
    主角.子女情报 = [];
    所有子女数据 = [];
    var __reg3 = 皇帝的辈分 + 主名[random(主名.length)];
    所有子女数据.push({id: 0, 名称: __reg3, 性别: 0, 母亲: _root.新皇后名字, 年龄: 2, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
    主角.当前时辰 = 0;
    主角.人才顺序 = 1;
    主角.后宫频率 = 0;
    主角.安全度 = 0;
    主角.战报 = "";
    主角.战斗队伍 = new Object();
    主角.生病次数 = 0;
    主角.祭祀 = 0;
    var __reg2 = 0;
    while (__reg2 < 100) 
    {
        主角["事件" + __reg2] = 0;
        ++__reg2;
    }
    恢复特殊开关的开关();
    国家属性总生成一次();
}
function 国家属性总生成一次()
{
    _root.国家 = new Object();
    国家.金钱 = 50000000 + random(100000);
    国家.粮食 = 90000000 + random(600000);
    国家.朴刀 = 130000 + random(10000);
    国家.皮甲 = 50000 + random(10000);
    国家.战马 = 30000 + random(10000);
    国家.铁炮 = 10000 + random(10000);
    国家.散兵营 = 0;
    国家.护卫营 = 0;
    国家.效义营 = 0;
    国家.神枢营 = 0;
    国家.神机营 = 0;
    国家.税率 = 25;
    国家.闲人 = 15 + random(5);
    国家.民夫 = 80000 + random(5000);
    国家.可用民夫 = 国家.民夫;
    国家.士兵 = 130000 + random(5000);
    国家.训练 = 50;
    国家.朴刀操作 = 0;
    国家.皮甲操作 = 0;
    国家.战马操作 = 0;
    国家.铁炮操作 = 0;
    国家.训练周期 = 0;
    国家.安全检视 = 0;
    国家.调查经费 = 0;
    国家.调查经费数值 = 0;
    国家.犯人 = 81221;
    if (_root.主角.难度 == 1) 
    {
        国家.金钱 = 60000000 + random(100000);
        return;
    }
    if (_root.主角.难度 == 2) 
    {
        国家.金钱 = 50000000 + random(100000);
        return;
    }
    if (_root.主角.难度 == 3) 
    {
        国家.金钱 = 40000000 + random(100000);
    }
}
function 恢复特殊开关的开关()
{
    主角.炼制丹药 = 0;
    主角.武器购买 = 0;
    主角.安全检视 = 0;
    主角.招募士兵 = 0;
    主角.卸甲归田 = 0;
    主角.招募民夫 = 0;
    主角.解雇民夫 = 0;
    主角.开科考试 = 0;
    主角.祭祀活动 = 0;
    主角.后宫册封 = 0;
    主角.冷宫执行 = 0;
    主角.子女会见 = 0;
    主角.宴会 = 0;
    主角.征税 = 0;
    主角.打猎 = 0;
    主角.微服 = 0;
    主角.出战 = 0;
}

//  Action tag #2

function 创建剧情对话框(路径)
{
    var __reg1 = 路径.attachMovie("对话模板", "对话模板", 9920000, {_x: 0, _y: 0});
    按钮不要显示(__reg1.底);
    __reg1.底.onPress = function ()
    {
    }
    ;
    return __reg1;
}

//  Action tag #3

function 国库钱数变动的程序(数值)
{
    if (0 != isNaN(数值) | 0 != (数值 == undefined)) 
    {
        return;
    }
    国家.金钱 = 国家.金钱 + 数值;
}
function 消失吧圣旨(参数)
{
    _root.圣旨.onEnterFrame = function ()
    {
        --this.等待;
        if (this.等待 < 0) 
        {
            this._alpha = this._alpha - 20;
            if (this._alpha <= 0) 
            {
                if (参数 == 1) 
                {
                    ++_root.主角.当前时辰;
                    时辰推进();
                }
                this.removeMovieClip();
            }
        }
    }
    ;
}
function 删除之前的界面(对象)
{
    对象.removeMovieClip();
}
function 出圣旨(文本, 路径, 参数)
{
    _root.attachMovie("圣旨", "圣旨", 95000, {_x: 0, _y: 0});
    _root.圣旨.等待 = 4;
    _root.圣旨.印.按.onRelease = function ()
    {
        this._parent.gotoAndStop(2);
        if (参数 == 1) 
        {
            _root.消失吧圣旨(1);
            return;
        }
        _root.消失吧圣旨();
    }
    ;
    if (文本.length > 100) 
    {
        var __reg12 = 文本.slice(0, 100);
        文本 = __reg12 + "...";
    }
    var __reg7 = [undefined, undefined];
    var __reg6 = 0;
    while (__reg6 < 文本.length) 
    {
        var __reg3 = 文本.charAt(__reg6);
        if (__reg3 == "0") 
        {
            __reg3 = "零";
        }
        else if (__reg3 == "1") 
        {
            __reg3 = "一";
        }
        else if (__reg3 == "2") 
        {
            __reg3 = "二";
        }
        else if (__reg3 == "3") 
        {
            __reg3 = "三";
        }
        else if (__reg3 == "4") 
        {
            __reg3 = "四";
        }
        else if (__reg3 == "5") 
        {
            __reg3 = "五";
        }
        else if (__reg3 == "6") 
        {
            __reg3 = "六";
        }
        else if (__reg3 == "7") 
        {
            __reg3 = "七";
        }
        else if (__reg3 == "8") 
        {
            __reg3 = "八";
        }
        else if (__reg3 == "9") 
        {
            __reg3 = "九";
        }
        __reg7.push(__reg3);
        ++__reg6;
    }
    var __reg4 = 1;
    var __reg11 = 19;
    __reg6 = 0;
    for (;;) 
    {
        if (__reg6 >= 18) 
        {
            return;
        }
        var __reg5 = 0;
        while (__reg5 < 12) 
        {
            if (__reg7[__reg4 - 1] !== undefined) 
            {
                _root.圣旨.attachMovie("文字图形", "文字图形" + __reg4, __reg4, {_x: (__reg11 - __reg6) * 20 + 130, _y: __reg5 * 20 + 120});
                _root.圣旨["文字图形" + __reg4].文字.text = __reg7[__reg4 - 1];
            }
            ++__reg4;
            ++__reg5;
        }
        ++__reg6;
    }
}
function 遵旨函数(文字)
{
    _root.大殿.遵旨._visible = true;
    _root.大殿.遵旨.文本.text = 文字;
    _root.大殿.遵旨.时间 = 25;
    _root.大殿.遵旨.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 <= 0) 
        {
            this._visible = false;
            delete this.onEnterFrame;
        }
    }
    ;
}
function 刷新外交()
{
    var __reg1 = 0;
    while (__reg1 < 阵营.length) 
    {
        阵营[__reg1].城 = [];
        ++__reg1;
    }
    __reg1 = 0;
    while (__reg1 < 所有城池.length) 
    {
        阵营[所有城池[__reg1].归属].城.push(所有城池[__reg1]);
        ++__reg1;
    }
    return 阵营;
}

//  Action tag #4

function 刷新所有的阵营数据()
{
    var __reg1 = 0;
    while (__reg1 < 阵营.length) 
    {
        阵营.城 = [];
        ++__reg1;
    }
    __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 所有城池.length) 
        {
            return;
        }
        var __reg2 = 所有城池[__reg1];
        阵营[__reg2.归属].城.push(__reg2);
        ++__reg1;
    }
}
function 敌人AI程序()
{
    if (_root.主角.难度 == undefined) 
    {
        _root.主角.难度 = 1;
    }
    var __reg6 = 10;
    if (_root.主角.难度 == 3) 
    {
        __reg6 = 3;
    }
    else if (_root.主角.难度 == 2) 
    {
        __reg6 = 5;
    }
    else if (_root.主角.难度 == 1) 
    {
        __reg6 = 10;
    }
    if (年 > __reg6) 
    {
        if (主角.战斗队伍.胜负 == undefined) 
        {
            刷新所有的阵营数据();
            var __reg4 = [];
            var __reg2 = 0;
            while (__reg2 < 所有城池.length) 
            {
                if (阵营[所有城池[__reg2].归属].外交 <= 1) 
                {
                    var __reg3 = 敌人检查是否衔接(所有城池[__reg2]);
                    if (__reg3.序列 !== "") 
                    {
                        __reg4.push(__reg3);
                    }
                }
                ++__reg2;
            }
            if (random(7) == 1) 
            {
                var __reg7 = __reg4[random(__reg4.length)];
                var __reg5 = [];
                __reg5[0] = __reg7.城;
                __reg5[1] = __reg7.序列[random(__reg7.序列.length)];
                if (__reg5[0].名称 !== undefined) 
                {
                    战争出动(undefined, undefined, undefined, 1, __reg5[1], __reg5[0]);
                    战斗震屏程序();
                }
            }
        }
    }
}
function 敌人检查是否衔接(本城)
{
    var __reg3 = [];
    var __reg1 = 0;
    while (__reg1 < 本城.邻居.length) 
    {
        if (所有城池[本城.邻居[__reg1]].归属 == 8) 
        {
            __reg3.push(所有城池[本城.邻居[__reg1]]);
        }
        ++__reg1;
    }
    var __reg4 = new Object();
    __reg4.城 = 本城;
    __reg4.序列 = __reg3;
    if (__reg3.length == 0) 
    {
        __reg4.序列 = "";
    }
    return __reg4;
}

//  Action tag #5

function 战争程序(参数)
{
    if (主角.出战 == 1) 
    {
        _root.小提示("军队正在备战");
        return;
    }
    var 面板 = _root.attachMovie("中央补助面板", "战争选取面板", 90050, {_x: 0, _y: 0});
    面板.小提示.text = "启禀皇上，我们要对哪个州府发动战争？";
    var __reg6 = [];
    var __reg5 = 0;
    while (__reg5 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg5].归属 == 8) 
        {
            __reg6.push(_root.所有城池[__reg5]);
        }
        ++__reg5;
    }
    var __reg7 = [];
    __reg5 = 0;
    while (__reg5 < __reg6.length) 
    {
        var __reg8 = 0;
        while (__reg8 < __reg6[__reg5].邻居.length) 
        {
            var __reg9 = __reg6[__reg5].邻居[__reg8];
            加入邻居程序(__reg7, _root.所有城池[__reg9]);
            ++__reg8;
        }
        ++__reg5;
    }
    var __reg3 = 0;
    __reg8 = 0;
    while (__reg8 < 8) 
    {
        __reg5 = 0;
        while (__reg5 < 4) 
        {
            var __reg4 = 面板.attachMovie("红色小条", "条" + __reg3, 900 + __reg3, {_x: __reg5 * 120 + 90, _y: 80 + __reg8 * 45});
            __reg4.属性 = __reg7[__reg3];
            __reg4.an.onPress = function ()
            {
                战争出动(this._parent.属性, 面板, 参数);
            }
            ;
            ++__reg3;
            ++__reg5;
        }
        ++__reg8;
    }
    __reg5 = 0;
    while (__reg5 < 32) 
    {
        if (__reg7[__reg5] === undefined) 
        {
            面板["条" + __reg5]._visible = false;
        }
        else 
        {
            面板["条" + __reg5].文本.text = __reg7[__reg5].名称;
        }
        ++__reg5;
    }
    面板.关闭.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
}
function 特殊说话(事件, 表情)
{
    var __reg5 = 年 + "年" + 季节 + "季 " + 旬;
    记录大事件的程序(事件);
    var __reg4 = _root.createEmptyMovieClip("特殊出现对话", 9720);
    var __reg3 = __reg4.attachMovie("故宫背景", "故宫背景", 100, {_x: 0, _y: 0});
    __reg3.gotoAndStop(季);
    __reg3.onPress = function ()
    {
    }
    ;
    模糊特效(__reg3);
    var __reg2 = __reg4.attachMovie("太监报告事情", "太监报告事情的图形", 200, {_x: 0, _y: 0});
    __reg2.人.gotoAndStop(表情);
    __reg2.图._visible = false;
    __reg2.文本.html = true;
    __reg2.文本.htmlText = 事件;
    __reg2.继续.onPress = function ()
    {
    }
    ;
}
function 战争出动(对象, 战争面板, 参数, 攻防参数, 我城, 敌城)
{
    var 面板 = _root.attachMovie("出征拉动条", "出征拉动条", 90070, {_x: 0, _y: 0});
    if (国家.士兵 <= 0) 
    {
        国家.士兵 = 100 + random(11);
    }
    处理战争面板条的程序(面板, "士兵", 1);
    处理战争面板条的程序(面板, "朴刀", 2);
    处理战争面板条的程序(面板, "皮甲", 3);
    处理战争面板条的程序(面板, "战马", 4);
    处理战争面板条的程序(面板, "铁炮", 5);
    var __reg8 = 面板.createEmptyMovieClip("统计检查", 500);
    if (攻防参数 == 1) 
    {
        面板.取消._visible = false;
        面板.取消TXT.text = "";
    }
    面板.取消.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    var 需要国库出资 = 面板.士兵.值 * 15 + 面板.朴刀.值 * 1 + 面板.皮甲.值 * 2 + 面板.战马.值 * 4 + 面板.铁炮.值 * 5;
    面板.确定.onPress = function ()
    {
        if (面板.士兵.值 == 0) 
        {
            小提示("未选择出战兵数量");
            return;
        }
        if (0 != 国库.金钱 > 需要国库出资 & 0 != (攻防参数 == undefined)) 
        {
            小提示("国库无法拿出这么多银两");
            return;
        }
        if (isNaN(需要国库出资)) 
        {
            return;
        }
        if (攻防参数 == 1) 
        {
            var 出战数量 = new Object();
            出战数量.士兵 = Number(面板.士兵.值);
            出战数量.朴刀 = Number(面板.朴刀.值);
            出战数量.皮甲 = Number(面板.皮甲.值);
            出战数量.战马 = Number(面板.战马.值);
            出战数量.铁炮 = Number(面板.铁炮.值);
            国家.金钱 = 国家.金钱 - Math.round(需要国库出资 / 2);
            国家.士兵 = 国家.士兵 - 出战数量.士兵;
            国家.朴刀 = 国家.朴刀 - 出战数量.朴刀;
            国家.皮甲 = 国家.皮甲 - 出战数量.皮甲;
            国家.战马 = 国家.战马 - 出战数量.战马;
            国家.铁炮 = 国家.铁炮 - 出战数量.铁炮;
            更新资料();
            var 战报汇报 = _root.attachMovie("战报面板", "战报面板", 90080, {_x: 0, _y: 0});
            var __reg6 = 出战战争战报(出战数量, 敌城, 计算战力, 1);
            战报汇报.文本.text = __reg6.战报;
            var __reg2 = new Object();
            __reg2.士兵 = 出战数量.士兵;
            __reg2.士兵上限 = 出战数量.士兵上限;
            __reg2.朴刀 = 出战数量.朴刀;
            __reg2.皮甲 = 出战数量.皮甲;
            __reg2.战马 = 出战数量.战马;
            __reg2.铁炮 = 出战数量.铁炮;
            __reg2.胜负 = 出战数量.胜负;
            __reg2.战斗地点 = 出战数量.战斗地点;
            出战数量.斩杀 = Math.round(Number(出战数量.敌人总士兵) - 出战数量.敌人剩余士兵);
            出战数量.敌人总士兵 = 出战数量.敌人总士兵;
            战报汇报.关闭.onPress = function ()
            {
                var __reg5 = "皇上，" + 我城.名称 + "防守战的战报已经送到。";
                特殊说话(__reg5, 1);
                _root.特殊出现对话.太监报告事情的图形.继续.onPress = function ()
                {
                    if (出战数量.胜负 == 0) 
                    {
                        __reg3 = 我城.名称 + "防守战异常激烈，我军全军覆没。";
                        _root.特殊出现对话.太监报告事情的图形.文本.htmlText = __reg3;
                        记录大事件的程序(颜色代码(__reg3, "ff0000"));
                        _root.特殊出现对话.太监报告事情的图形.人.gotoAndStop(8);
                        我城.归属 = 敌城.归属;
                        生成这个城市的兵力(我城);
                        更新所有主要职位的人();
                        刷新阵营几城的程序();
                    }
                    else if (出战数量.胜负 == 1) 
                    {
                        __reg3 = 我城.名称 + "防守战全军将士英勇杀敌，我军获胜。";
                        _root.特殊出现对话.太监报告事情的图形.文本.htmlText = __reg3;
                        记录大事件的程序(颜色代码(__reg3, "ff0000"));
                        _root.特殊出现对话.太监报告事情的图形.人.gotoAndStop(2);
                    }
                    else if (出战数量.胜负 == 2) 
                    {
                        var __reg3 = 我城.名称 + "防守战异常激烈，将士也是拼命杀敌。\n战争难解难分，暂时陷入停战状态。";
                        _root.特殊出现对话.太监报告事情的图形.文本.htmlText = __reg3;
                        记录大事件的程序(颜色代码(__reg3, "ff0000"));
                        _root.特殊出现对话.太监报告事情的图形.人.gotoAndStop(1);
                    }
                    _root.特殊出现对话.太监报告事情的图形.继续.onPress = function ()
                    {
                        var __reg2 = 出战数量;
                        var __reg3 = 战争例行消耗(__reg2);
                        _root.特殊出现对话.太监报告事情的图形.文本.htmlText = "本次战争斩杀敌人" + __reg2.斩杀 + "名,我军伤亡将士" + __reg3.死伤多少人 + "名，国库需支出抚恤金" + __reg3.需要多少抚恤金 + "两。\n返回京城的的部队有" + __reg2.士兵 + "名，朴刀" + __reg2.朴刀 + "把，皮甲" + __reg2.皮甲 + "件，战马" + __reg2.战马 + "匹，铁炮" + __reg2.铁炮 + "门。\n";
                        _root.特殊出现对话.太监报告事情的图形.人.gotoAndStop(4);
                        _root.特殊出现对话.太监报告事情的图形.继续.onPress = function ()
                        {
                            _root.烧掉截图(_root);
                            _root.特殊出现对话.removeMovieClip();
                        }
                        ;
                    }
                    ;
                }
                ;
                战报汇报.removeMovieClip();
            }
            ;
            面板.removeMovieClip();
            return;
        }
        _root.主角.出战 = 1;
        var 出战数量 = new Object();
        出战数量.士兵 = Number(面板.士兵.值);
        出战数量.朴刀 = Number(面板.朴刀.值);
        出战数量.皮甲 = Number(面板.皮甲.值);
        出战数量.战马 = Number(面板.战马.值);
        出战数量.铁炮 = Number(面板.铁炮.值);
        国家.金钱 = 国家.金钱 - 需要国库出资;
        国家.士兵 = 国家.士兵 - 出战数量.士兵;
        国家.朴刀 = 国家.朴刀 - 出战数量.朴刀;
        国家.皮甲 = 国家.皮甲 - 出战数量.皮甲;
        国家.战马 = 国家.战马 - 出战数量.战马;
        国家.铁炮 = 国家.铁炮 - 出战数量.铁炮;
        更新资料();
        出战战争战报(出战数量, 对象, 计算战力, 参数);
        阵营[对象.归属].外交 = 0;
        遵旨显示下好吗("即刻整备军队，进行" + 对象.名称 + "之战。", 大殿.遵旨);
        加载进步动画条的说("金钱");
        战争面板.removeMovieClip();
        面板.removeMovieClip();
    }
    ;
    var 训练度 = 国家.训练 * 0.01;
    if (国家.训练 < 10) 
    {
        训练度 = 0.1;
    }
    更新所有主要职位的人();
    var __reg6 = _root.所有部门.中央军.武术;
    if (__reg6 >= 80) 
    {
        训练度 = 训练度 + 0.2;
    }
    var 计算战力 = 0;
    __reg8.onEnterFrame = function ()
    {
        if (面板.士兵.值 !== 0) 
        {
            需要国库出资 = 面板.士兵.值 * 15 + 面板.朴刀.值 * 1 + 面板.皮甲.值 * 2 + 面板.战马.值 * 4 + 面板.铁炮.值 * 5;
            if (攻防参数 == 1) 
            {
                面板.文本.text = 敌城.名称 + "对我国" + 我城.名称 + "地区出兵，调遣士兵：" + 面板.士兵.值 + "，朴刀：" + 面板.朴刀.值 + "，皮甲：" + 面板.皮甲.值 + "，战马：" + 面板.战马.值 + "，铁炮：" + 面板.铁炮.值 + "。\n国库此次战争需要经费：" + Math.round(需要国库出资 / 20000) + "万两。\n士兵训练值：" + 国家.训练 + "，战斗力：";
                if (面板.士兵.值 > 0) 
                {
                    计算战力 = Math.round(计算战力公式(面板) * 训练度);
                    面板.文本.text = 面板.文本.text + (计算战力 + "。");
                }
            }
            else 
            {
                面板.文本.text = "本次出战对" + 对象.名称 + "作战，调遣士兵：" + 面板.士兵.值 + "，朴刀：" + 面板.朴刀.值 + "，皮甲：" + 面板.皮甲.值 + "，战马：" + 面板.战马.值 + "，铁炮：" + 面板.铁炮.值 + "。\n国库此次战争需要经费：" + Math.round(需要国库出资 / 10000) + "万两。\n士兵训练值：" + 国家.训练 + "，战斗力：";
                if (面板.士兵.值 > 0) 
                {
                    计算战力 = Math.round(计算战力公式(面板) * 训练度);
                    面板.文本.text = 面板.文本.text + (计算战力 + "。");
                }
            }
            return;
        }
        if (攻防参数 == 1) 
        {
            面板.文本.text = "急报!" + 敌城.名称 + "的部队正在靠近我国的" + 我城.名称 + "，请求支援。";
            return;
        }
        面板.文本.text = "需要多少士兵出战。";
    }
    ;
}
function 计算战力公式(面板)
{
    var __reg2 = 面板.士兵.值 * 2;
    if (面板.朴刀.值 > 面板.士兵.值) 
    {
        __reg2 = __reg2 + 面板.士兵.值;
    }
    else 
    {
        __reg2 = __reg2 + 面板.朴刀.值;
    }
    if (面板.皮甲.值 > 面板.士兵.值) 
    {
        __reg2 = __reg2 + 面板.士兵.值 * 1.5;
    }
    else 
    {
        __reg2 = __reg2 + 面板.皮甲.值 * 1.5;
    }
    if (面板.战马.值 > 面板.士兵.值) 
    {
        __reg2 = __reg2 + 面板.士兵.值 * 2;
    }
    else 
    {
        __reg2 = __reg2 + 面板.战马.值 * 2;
    }
    if (面板.铁炮.值 > 面板.士兵.值) 
    {
        __reg2 = __reg2 + 面板.士兵.值 * 3;
    }
    else 
    {
        __reg2 = __reg2 + 面板.铁炮.值 * 3;
    }
    return __reg2;
}
function 出战战争战报(出战数量, 对象, 我方战力, 参数)
{
    if (参数 == undefined) 
    {
        主角.战斗队伍 = 出战数量;
        __reg21 = 主角.战斗队伍;
        __reg9 = 主角.战报;
    }
    else if (参数 == 1) 
    {
        var __reg21 = {};
        __reg21 = 出战数量;
        var __reg9 = {};
    }
    出战数量.士兵上限 = Number(出战数量.士兵);
    __reg21.战斗地点 = 对象;
    var __reg19 = 对象;
    var __reg25 = 阵营[__reg19.归属].兵种;
    var __reg12 = 0;
    if (参数 == 1) 
    {
        __reg12 = (8 + random(12)) * 10000;
        出战数量.敌人总士兵 = __reg12;
    }
    else 
    {
        __reg12 = __reg19.士兵;
        出战数量.敌人总士兵 = __reg19.士兵;
    }
    var __reg26 = "我军出战部队：" + Math.round(出战数量.士兵上限 / 10000) + "万名。\n" + __reg19.名称 + "士兵" + Math.ceil(__reg12 / 10000) + "万名。兵种：" + __reg25 + "。\n\n";
    __reg9 = "";
    更新所有主要职位的人();
    var __reg6 = _root.所有部门.中央军.名字;
    var __reg24 = _root.所有部门.中央军;
    var __reg30 = 0;
    var __reg20 = Math.round(我方战力 * (__reg24.武术 * 0.01) / 出战数量.士兵);
    var __reg29 = 阵营[__reg19.归属].战力 * __reg12;
    var __reg7 = 对象.名称 + "主将";
    __reg9 = _root.主角.年号 + "" + 年 + "年 " + 季节 + "季 " + 旬 + "\n我军大将军 " + __reg6 + " 对阵 " + __reg7;
    __reg9 = __reg9 + ("\n" + __reg26 + "\n");
    var __reg13 = 0;
    var __reg28 = [];
    var __reg15 = 0;
    while (__reg15 < 10) 
    {
        var __reg2 = Math.round(出战数量.士兵 * __reg20 / 100);
        var __reg3 = Math.round(__reg12 * 阵营[__reg19.归属].战力 / 100);
        var __reg5 = random(6);
        var __reg4 = "";
        if (__reg5 == 0) 
        {
            __reg4 = "双方发生激战。";
        }
        else if (__reg5 == 1) 
        {
            __reg4 = __reg6 + "将军进行夜袭，得手。";
            __reg3 = Math.round(__reg3 / 2);
            __reg2 = Math.round(__reg2 * 1.5);
        }
        else if (__reg5 == 2) 
        {
            __reg4 = __reg7 + "对我军进行夜袭，得手。";
            __reg3 = Math.round(__reg3 * 1.5);
            __reg2 = Math.round(__reg2 / 2);
        }
        else if (__reg5 == 3) 
        {
            __reg4 = __reg6 + "对敌军调虎离山，侧翼突围，得手。";
            __reg3 = Math.round(__reg3);
            __reg2 = Math.round(__reg2 * 1.5);
        }
        else if (__reg5 == 4) 
        {
            __reg4 = __reg7 + "对我军调虎离山，侧翼突围，得手。";
            __reg3 = Math.round(__reg3 * 1.5);
            __reg2 = Math.round(__reg2);
        }
        else if (__reg5 == 5) 
        {
            __reg4 = __reg6 + "对敌军采取逐个击破，得手。";
            __reg3 = Math.round(__reg3);
            __reg2 = Math.round(__reg2 * 1.2);
        }
        else if (__reg5 == 6) 
        {
            __reg4 = __reg7 + "对我军采取逐个击破，得手。";
            __reg3 = Math.round(__reg3 * 1.2);
            __reg2 = Math.round(__reg2);
        }
        else if (__reg5 == 7) 
        {
            __reg4 = __reg6 + "将军进行夜袭，被识破了。";
            __reg3 = Math.round(__reg3 / 2);
            __reg2 = Math.round(__reg2 * 2);
        }
        else if (__reg5 == 8) 
        {
            __reg4 = __reg7 + "对我军进行夜袭，被识破了。";
            __reg3 = Math.round(__reg3 * 2);
            __reg2 = Math.round(__reg2 / 2);
        }
        else if (__reg5 == 9) 
        {
            __reg4 = __reg6 + "对敌军调虎离山，侧翼突围，敌军趁机攻打我军主营。";
            __reg3 = Math.round(__reg3 * 1.5);
            __reg2 = Math.round(__reg2);
        }
        else if (__reg5 == 10) 
        {
            __reg4 = __reg7 + "对我军调虎离山，侧翼突围，我军将计就计攻打主营。";
            __reg3 = Math.round(__reg3);
            __reg2 = Math.round(__reg2 * 1.5);
        }
        else if (__reg5 == 11) 
        {
            __reg4 = __reg6 + "对敌军采取逐个分散击破，敌军合力主攻。";
            __reg3 = Math.round(__reg3 * 1.2);
            __reg2 = Math.round(__reg2);
        }
        else if (__reg5 == 12) 
        {
            __reg4 = __reg7 + "对我军采取逐个分散击破，我军合力主攻。";
            __reg3 = Math.round(__reg3);
            __reg2 = Math.round(__reg2 * 1.2);
        }
        var __reg14 = 0;
        if (random(100) < 3) 
        {
            __reg14 = 1;
            __reg17 = 三十六计[random(三十六计.length)];
            __reg10 = __reg7;
            __reg16 = 1 + random(100) * 0.01;
            __reg18 = __reg6;
            __reg3 = Math.round(__reg3 * __reg16);
            __reg2 = 0;
        }
        else if (__reg6.智慧 >= 80) 
        {
            if (random(100) < 3) 
            {
                __reg14 = 1;
                var __reg17 = 三十六计[random(三十六计.length)];
                var __reg10 = __reg6;
                var __reg16 = 1 + random(100) * 0.01;
                var __reg18 = __reg7;
                __reg3 = 0;
                __reg2 = Math.round(__reg2 * __reg16);
            }
        }
        if (__reg14 == 1) 
        {
            var __reg11 = random(5);
            if (__reg11 == 0) 
            {
                __reg4 = __reg10 + "彻夜翻书，翻出一计";
            }
            else if (__reg11 == 1) 
            {
                __reg4 = __reg10 + "冥死苦想，心生一计";
            }
            else if (__reg11 == 2) 
            {
                __reg4 = __reg10 + "灵光一闪，发动计策";
            }
            else if (__reg11 == 3) 
            {
                __reg4 = __reg10 + "偶遇山人，传授计策";
            }
            else if (__reg11 == 4) 
            {
                __reg4 = __reg10 + "静坐一晚，计从心来";
            }
            __reg4 = __reg4 + (__reg17 + "，" + __reg18 + "措手不及。");
        }
        出战数量.士兵 = 出战数量.士兵 - __reg3;
        __reg12 = __reg12 - __reg2;
        ++__reg13;
        if (出战数量.士兵 < 0) 
        {
            出战数量.士兵 = 0;
            __reg9 = __reg9 + (__reg13 + "回合：" + __reg4 + "\n斩杀敌人：" + __reg2 + "名，我军伤亡：" + __reg3 + "名。\n");
            __reg9 = __reg9 + "我军全军覆没。";
            出战数量.胜负 = 0;
            break;
        }
        else 
        {
            if (__reg12 < 0) 
            {
                __reg12 = 0;
                __reg9 = __reg9 + (__reg13 + "回合：" + __reg4 + "\n斩杀敌人：" + __reg2 + "名，我军伤亡：" + __reg3 + "名。\n");
                __reg9 = __reg9 + "敌军全军覆没。";
                出战数量.胜负 = 1;
                break;
            }
            __reg9 = __reg9 + (__reg13 + "回合：" + __reg4 + "\n斩杀敌人：" + __reg2 + "名，我军伤亡：" + __reg3 + "名。\n");
            if (__reg13 == 10) 
            {
                __reg9 = __reg9 + "双方大战难解难分，暂时停战。";
                出战数量.胜负 = 2;
            }
        }
        ++__reg15;
    }
    __reg21.敌人剩余士兵 = __reg12;
    主角.战报 = __reg9;
    if (参数 == 1) 
    {
        var __reg22 = {};
        __reg22.数据 = __reg21;
        __reg22.战报 = __reg9;
        return __reg22;
    }
    __reg19.士兵 = __reg12;
}
function 处理战争面板条的程序(面板, 参数, 跳)
{
    var __reg1 = 出征拉动条[参数];
    __reg1._parent["图" + 跳].gotoAndStop(跳);
    __reg1.长度 = 国家[参数];
    __reg1.值 = 0;
    __reg1.数值.text = __reg1.值;
    __reg1.条._xscale = 0;
    战争NewDrag(__reg1.r.a);
}
function 战争NewDrag(Mc)
{
    Mc._x = 0;
    Mc._y = 0;
    Mc.onPress = function ()
    {
        var tiao_max = 397;
        startDrag(this, 0, 0, 0, tiao_max, 0);
        this._parent.onEnterFrame = function ()
        {
            this._parent.条._xscale = this.a._x / tiao_max * 100;
            this._parent.值 = Math.round(this._parent.长度 * (this.a._x / tiao_max));
            this._parent.数值.text = this._parent.值;
        }
        ;
    }
    ;
    Mc.onRelease = function ()
    {
        stopDrag();
        delete this.onEnterFrame;
    }
    ;
    Mc.onReleaseOutside = function ()
    {
        stopDrag();
    }
    ;
}
function 加入邻居程序(数据, 城市)
{
    var __reg4 = 0;
    var __reg1 = 0;
    while (__reg1 < 数据.length) 
    {
        if (数据[__reg1].id == 城市.id) 
        {
            __reg4 = 1;
        }
        ++__reg1;
    }
    if (__reg4 == 0) 
    {
        if (城市.归属 !== 8) 
        {
            if (阵营[城市.归属].外交 !== 7) 
            {
                数据.push(城市);
            }
        }
    }
}
三十六计 = ["瞒天过海", "围魏救赵", "借刀杀人", "以逸待劳", "趁火打劫", "声东击西", "无中生有", "暗渡陈仓", "隔岸观火", "笑里藏刀", "李代桃僵", "顺手牵羊", "打草惊蛇", "借尸还魂", "调虎离山", "欲擒故纵", "抛砖引玉", "擒贼擒王", "釜底抽薪", "混水摸鱼", "金蝉脱壳", "关门捉贼", "瞒天过海", "远交近攻", "假道伐虢", "偷梁换柱", "指桑骂槐", "假痴不颠", "上屋抽梯", "树上开花", "反客为主", "美人计", "瞒天过海", "空城计", "反间计", "连环计", "苦肉计"];

//  Action tag #6

function 购买武器函数()
{
    _root.attachMovie("武器购买", "武器购买", 89950, {_x: 0, _y: 0});
    武器购买.文本.text = "皇上，想在各地征购什么装备。";
    武器购买.取消.onRelease = function ()
    {
        _root.武器购买.removeMovieClip();
    }
    ;
    武器购买.朴刀.onRelease = function ()
    {
        具体武器购买("朴刀", 1);
    }
    ;
    武器购买.皮甲.onRelease = function ()
    {
        具体武器购买("皮甲", 2);
    }
    ;
    武器购买.战马.onRelease = function ()
    {
        具体武器购买("战马", 3);
    }
    ;
    武器购买.铁炮.onRelease = function ()
    {
        具体武器购买("铁炮", 4);
    }
    ;
}
function 具体武器购买(武器买什么, 参数)
{
    if (_root.主角.武器购买 == 1) 
    {
        _root.小提示("已在购买武器了");
        return;
    }
    if (_root.国家.金钱 < 0) 
    {
        _root.小提示("国库已无银两");
        return;
    }
    _root.attachMovie("数值拉动条", "装备购买", 90000, {_x: 0, _y: 0});
    var __reg3 = 0;
    装备购买.长度 = __reg3;
    if (武器买什么 == "朴刀") 
    {
        装备购买.长度 = 100000;
    }
    else if (武器买什么 == "皮甲") 
    {
        装备购买.长度 = 80000;
    }
    else if (武器买什么 == "战马") 
    {
        装备购买.长度 = 50000;
    }
    else if (武器买什么 == "铁炮") 
    {
        装备购买.长度 = 30000;
    }
    __reg3 = 装备购买.长度;
    var __reg2 = 4;
    if (参数 == 1) 
    {
        __reg2 = 4;
    }
    else if (参数 == 2) 
    {
        __reg2 = 8;
    }
    else if (参数 == 3) 
    {
        __reg2 = 12;
    }
    else if (参数 == 4) 
    {
        __reg2 = 18;
    }
    装备购买.文本.text = "士兵配备武装能发挥更强的战斗力。\n目前国库有" + 武器买什么 + "：" + Math.round(_root.国家[武器买什么] / 10000) + "万，\n全国可以征购的" + 武器买什么 + "：" + __reg3 + "。";
    装备购买.提示.text = "需要征购多少" + 武器买什么 + "，单价：" + __reg2 + "两。";
    装备购买.条._xscale = 0;
    NewDrag(装备购买.r.a);
    装备购买.确定.onRelease = function ()
    {
        if (_root.装备购买.值 == undefined) 
        {
            _root.小提示("请拉动红条操作");
            return;
        }
        if (_root.装备购买.值 > 0) 
        {
            好的武器成交(_root.装备购买.值, 武器买什么, 参数);
        }
    }
    ;
    装备购买.取消.onRelease = function ()
    {
        _root.装备购买.removeMovieClip();
    }
    ;
}
function 好的武器成交(数量, 项目, 参数)
{
    var __reg2 = 4;
    if (参数 == 1) 
    {
        __reg2 = 4;
    }
    else if (参数 == 2) 
    {
        __reg2 = 8;
    }
    else if (参数 == 3) 
    {
        __reg2 = 12;
    }
    else if (参数 == 4) 
    {
        __reg2 = 18;
    }
    var __reg3 = __reg2 * 数量;
    if (_root.国家.金钱 < __reg3) 
    {
        _root.小提示("国库银两不够");
        return;
    }
    _root.主角.武器购买 = 1;
    _root.国家[项目] = _root.国家[项目] + 数量;
    国库钱数变动的程序(__reg3 * -1);
    处理购买该处理的资源(数量, 项目);
    出圣旨("中央军队增加武装" + 项目 + ":" + 数量 + "。单价：" + __reg2 + "两，购买经费：" + __reg3 + "两。");
    大殿体力扣除程序(10);
    删除之前的界面(_root.武器购买);
    删除之前的界面(_root.装备购买);
    更新资料();
}
function 处理购买该处理的资源(数量, 项目)
{
    var __reg4 = 0;
    var __reg1 = 0;
    while (__reg1 < 所有城池.length) 
    {
        if (所有城池[__reg1].归属 == 8) 
        {
            __reg4 = __reg4 + 1;
        }
        ++__reg1;
    }
    var __reg3 = Math.round(数量 / __reg4);
    __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 所有城池.length) 
        {
            return;
        }
        if (所有城池[__reg1].归属 == 8) 
        {
            if (所有城池[__reg1][项目 + "库存"] > __reg3) 
            {
                所有城池[__reg1][项目 + "库存"] = 所有城池[__reg1][项目 + "库存"] - __reg3;
            }
            else 
            {
                所有城池[__reg1][项目 + "库存"] = 0;
            }
        }
        ++__reg1;
    }
}

//  Action tag #7

function 微服出巡程序()
{
    if (主角.微服 == 1) 
    {
        小提示("近期已微服过一次了。");
        return;
    }
    var 面板 = _root.attachMovie("微服出巡面板", "微服出巡面板", 90400, {_x: 0, _y: 0});
    主角.微服 = 1;
    var __reg3 = 面板.attachMovie("通用按钮", "通用按钮", 5000, {_x: 537, _y: 445});
    __reg3.文本.text = "返回皇宫";
    __reg3.按.onPress = function ()
    {
        _root.烧掉截图(_root);
        面板.removeMovieClip();
        _root.内侍面板.removeMovieClip();
        _root.紫辰殿面板.removeMovieClip();
        _root.主角.当前时辰 = _root.主角.当前时辰 + 1;
        时辰推进();
    }
    ;
    var __reg2 = 0;
    while (__reg2 < 微服所有地名.length) 
    {
        面板[微服所有地名[__reg2]]._alpha = 0;
        面板[微服所有地名[__reg2]].属性 = 微服所有地名[__reg2];
        面板[微服所有地名[__reg2]].开关 = 0;
        微服按钮相关(面板[微服所有地名[__reg2]]);
        ++__reg2;
    }
    面板.怡红院.onPress = function ()
    {
        怡红院程序();
    }
    ;
    路人处理程序(面板);
    评价处理程序啊(面板);
}
function 评价处理程序啊(面板)
{
    var __reg9 = 0;
    var __reg14 = 0;
    var __reg12 = 0;
    var __reg13 = 0;
    var __reg11 = 0;
    var __reg18 = 0;
    var __reg10 = 0;
    var __reg22 = 0;
    var __reg15 = 0;
    var __reg17 = 0;
    var __reg20 = 0;
    var __reg23 = 0;
    var __reg16 = 0;
    var __reg19 = 0;
    var __reg29 = 0;
    var __reg7 = 0;
    var __reg6 = 0;
    var __reg30 = 0;
    var __reg28 = 0;
    var __reg5 = 0;
    while (__reg5 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg5].归属 == 8) 
        {
            ++__reg9;
            __reg14 = __reg14 + _root.所有城池[__reg5].人口;
            __reg12 = __reg12 + _root.所有城池[__reg5].壮丁;
            __reg13 = __reg13 + _root.所有城池[__reg5].士兵;
            __reg18 = __reg18 + _root.所有城池[__reg5].安定;
            __reg10 = __reg10 + _root.所有城池[__reg5].治安;
            __reg22 = __reg22 + _root.所有城池[__reg5].运输;
            __reg15 = __reg15 + _root.所有城池[__reg5].体能;
            __reg17 = __reg17 + _root.所有城池[__reg5].积粮;
            __reg11 = __reg11 + _root.所有城池[__reg5].民心;
            __reg20 = __reg20 + _root.所有城池[__reg5].农业开发度;
            __reg23 = __reg23 + _root.所有城池[__reg5].商业开发度;
            __reg16 = __reg16 + _root.所有城池[__reg5].矿业开发度;
            __reg19 = __reg19 + _root.所有城池[__reg5].牧业开发度;
        }
        ++__reg5;
    }
    __reg5 = 0;
    while (__reg5 < _root.所有城池.length) 
    {
        var __reg2 = 0;
        while (__reg2 < _root.所有人才.length) 
        {
            if (0 != (_root.所有人才[__reg2].类 == "知府") & 0 != (_root.所有人才[__reg2].城.id == _root.所有城池[__reg5].id)) 
            {
                __reg6 = __reg6 + _root.所有人才[__reg2].清廉;
                __reg7 = __reg7 + 1;
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
            }
            ++__reg2;
        }
        ++__reg5;
    }
    var __reg24 = Math.round(__reg6 / __reg9);
    var __reg21 = Math.round(__reg10 / __reg9);
    var __reg25 = Math.round(__reg11 / __reg9);
    var __reg8 = 0;
    __reg5 = 0;
    while (__reg5 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg5].名字 !== undefined) 
        {
            __reg8 = __reg8 + 1;
        }
        ++__reg5;
    }
    if (__reg21 < 40) 
    {
        __reg27 = "你说这到底是怎么了，抓不完的犯人。\n眼看大牢就快满了。";
    }
    else if (__reg21 < 50) 
    {
        __reg27 = "在六扇门当差就是辛苦，各地跑。\n治安什么时候才能变好呢？";
    }
    else if (__reg21 < 60) 
    {
        __reg27 = "各地流犯很多。\n不停的跑远差，六扇门当差真要命。\n我都好几个月没回家了。";
    }
    else if (__reg21 < 70) 
    {
        __reg27 = "采花贼，飞天贼，强盗，小偷，抓不完的犯人，断不完的案。";
    }
    else if (__reg21 < 80) 
    {
        __reg27 = "近来治安好像好一些了，\n没有那么多毛贼了。";
    }
    else if (__reg21 < 90) 
    {
        __reg27 = "真轻松，三天没活干了。\n下午到哥们家喝几杯。";
    }
    else 
    {
        var __reg27 = "处处风平浪静，巡逻一圈然后禀报下老爷，然后等下班。真是愉快的一天。";
    }
    给你对话啊("两位差役", __reg27, 面板);
    if (国家.税率 < 5) 
    {
        __reg27 = "轻税赋下总算能攒一些钱了。\n皇恩浩荡。";
    }
    else if (国家.税率 < 10) 
    {
        __reg27 = "一个月下来总算能剩下一些铜板，日子要是一直这样就好了。";
    }
    else if (国家.税率 < 20) 
    {
        __reg27 = "税收降低了一些，日子感觉好过一些了。";
    }
    else if (国家.税率 < 30) 
    {
        __reg27 = "钱难赚，处处萧条。当挑工的也不好过日子。";
    }
    else if (国家.税率 < 40) 
    {
        __reg27 = "一个月辛辛苦苦干下来，只能半饱不饿的过日子。\n税收是在是太重了。";
    }
    else if (国家.税率 <= 50) 
    {
        __reg27 = "挑一天大米，十四文钱。结果收了一半，剩下的不够买两斤白菜。\n这日子怎么过呀。";
    }
    给你对话啊("两位挑工", __reg27, 面板);
    if (__reg8 < 3) 
    {
        __reg27 = "听说皇上重情重义，很少新纳后宫。\n妃子们一定都很幸福。";
    }
    else if (__reg8 < 10) 
    {
        __reg27 = "听说皇上有一批妃子长得国色天香。";
    }
    else if (__reg8 < 20) 
    {
        __reg27 = "听说皇上的后宫阵容强大到让人感动的程度了。";
    }
    else if (__reg8 < 30) 
    {
        __reg27 = "皇上貌似急着延续子女，听说后宫妃子都快住满了。纵欲伤身，真希望皇上能保重龙体。";
    }
    else 
    {
        __reg27 = "据说皇上沉迷女色。后宫几次新建屋舍都不够妃子住。楼道上都住着妃子，想想真让人感动。";
    }
    给你对话啊("两位文人", __reg27, 面板);
    if (__reg24 < 50) 
    {
        __reg27 = "各地官员贪腐成风，难道皇上一点都不知道吗？";
    }
    else if (__reg24 < 60) 
    {
        __reg27 = "各地贪腐严重，国家的税赋基本都入了他们的荷包。";
    }
    else if (__reg24 < 70) 
    {
        __reg27 = "官员贪腐现象好像略微好转。";
    }
    else if (__reg24 < 80) 
    {
        __reg27 = "各地官员清廉程度比以前好很多了，百姓感到欣慰。";
    }
    else if (__reg24 < 90) 
    {
        __reg27 = "各地清廉风气正在蔓延，各地官员都相对比较廉洁。皇上之幸，百姓之幸。";
    }
    else 
    {
        __reg27 = "各地官员上下一心，已经很少听到官员贪赃枉法的传闻了。";
    }
    给你对话啊("老者", __reg27, 面板);
    if (__reg25 < 50) 
    {
        __reg27 = "各地民心不稳，人心惶惶。\n媳妇你还是尽量少上街。";
    }
    else if (__reg25 < 60) 
    {
        __reg27 = "民心惶惶，你可不许让你相公跟别人混在一起。";
    }
    else if (__reg25 < 70) 
    {
        __reg27 = "各地民心好像略有好转。";
    }
    else if (__reg25 < 80) 
    {
        __reg27 = "太平之年，民心稳定。媳妇你生在一个好年代里。";
    }
    else if (__reg25 < 90) 
    {
        __reg27 = "各地民心所向，皇上是位好皇上。";
    }
    else 
    {
        __reg27 = "皇上真是难得一见的明君，真乃百姓之福。";
    }
    给你对话啊("婆婆媳妇", __reg27, 面板);
}
function 给你对话啊(对象, 内容, 面板)
{
    面板[对象].onPress = function ()
    {
        var 对话板 = 面板.attachMovie("路人对话", "路人对话", 90000, {_x: 0, _y: 0});
        if (this.开关 == 1) 
        {
            对话板.文本.text = 对象;
            对话板.an.onPress = function ()
            {
                面板.红色文字条.removeMovieClip();
                对话板.removeMovieClip();
            }
            ;
            return;
        }
        this.开关 = 1;
        对话板.文本.text = 内容;
        对话板.an.onPress = function ()
        {
            面板.红色文字条.removeMovieClip();
            对话板.removeMovieClip();
        }
        ;
    }
    ;
}
function 怡红院程序()
{
    var 面板 = _root.attachMovie("青楼面板", "青楼面板", 91400, {_x: 0, _y: 0});
    var __reg4 = [];
    var __reg3 = [];
    var __reg5 = _root.图库.其他美女图._totalframes;
    var __reg2 = 1;
    while (__reg2 < 54) 
    {
        __reg4.push(__reg2);
        ++__reg2;
    }
    __reg2 = 54;
    while (__reg2 < __reg5) 
    {
        __reg3.push(__reg2);
        ++__reg2;
    }
    __reg4.sort(打乱数组程序);
    __reg3.sort(打乱数组程序);
    var __reg6 = [];
    if (random(2) == 1) 
    {
        __reg6 = __reg4;
    }
    else 
    {
        __reg6 = __reg3;
    }
    _root.图库.其他美女图.gotoAndStop(__reg6[0]);
    var __reg10 = 面板.图0.createEmptyMovieClip("图", 20);
    图形拷贝程序(_root.图库.其他美女图, __reg10);
    _root.图库.其他美女图.gotoAndStop(__reg6[1]);
    var __reg11 = 面板.图1.createEmptyMovieClip("图", 20);
    图形拷贝程序(_root.图库.其他美女图, __reg11);
    青楼图形出现(面板.图0);
    青楼图形出现(面板.图1);
    var __reg9 = 姓[random(姓.length)] + "姑娘";
    var __reg8 = 姓[random(姓.length)] + "姑娘";
    面板.对话.文本.text = "老鸨安排" + __reg9 + "与" + __reg8 + "前来伺候。(快乐增加)";
    var __reg7 = random(100);
    if (__reg7 < 7) 
    {
        面板.对话.文本.text = 面板.对话.文本.text + "，很快乐。";
        _root.主角.快乐 = _root.主角.快乐 + 25;
        if (_root.主角.快乐 > 100) 
        {
            _root.主角.快乐 = 100;
        }
        面板.对话.确定.onPress = function ()
        {
            面板.对话._visible = false;
            var 对话板 = 面板.attachMovie("青楼对话", "青楼对话", 9000, {_x: 0, _y: 0});
            对话板.文本.text = "老鸨：黄老爷今天玩得这么开心。\n我想替姑娘们求点打赏。";
            var a1 = 面板.attachMovie("红色小条", "没零钱", 9002, {_x: 300, _y: 370});
            var a2 = 面板.attachMovie("红色小条", "五十两", 9004, {_x: 400, _y: 370});
            var a3 = 面板.attachMovie("红色小条", "一百两", 9005, {_x: 500, _y: 370});
            a1.文本.text = "没零钱";
            a2.文本.text = "十五两";
            a3.文本.text = "一百两";
            a1.an.onPress = function ()
            {
                对话板.文本.text = "老鸨：一毛不拔。";
                a1._visible = false;
                a2._visible = false;
                a3._visible = false;
                对话板.an.onPress = function ()
                {
                    关闭青楼程序(面板);
                }
                ;
            }
            ;
            a2.an.onPress = function ()
            {
                a1._visible = false;
                a2._visible = false;
                a3._visible = false;
                对话板.文本.text = "老鸨：谢谢黄老爷。";
                对话板.an.onPress = function ()
                {
                    关闭青楼程序(面板);
                }
                ;
            }
            ;
            a3.an.onPress = function ()
            {
                a1._visible = false;
                a2._visible = false;
                a3._visible = false;
                对话板.文本.text = "老鸨：黄老爷真大方，姑娘们好生伺候着。";
                对话板.an.onPress = function ()
                {
                    关闭青楼程序(面板);
                }
                ;
            }
            ;
        }
        ;
    }
    else if (__reg7 < 13) 
    {
        面板.对话.确定.onPress = function ()
        {
            面板.对话._visible = false;
            var __reg1 = 面板.attachMovie("青楼对话", "青楼对话", 10000, {_x: 0, _y: 0});
            __reg1.文本.text = "老鸨：黄老爷既然今天玩得那么高兴。\n不如留宿一晚，我多安排一些姑娘来伺候。";
            __reg1.an.onPress = function ()
            {
                关闭青楼程序(面板);
            }
            ;
        }
        ;
    }
    else if (__reg7 < 16) 
    {
        面板.对话.确定.onPress = function ()
        {
            面板.对话._visible = false;
            var __reg1 = 面板.attachMovie("青楼对话", "青楼对话", 10000, {_x: 0, _y: 0});
            __reg1.文本.text = "老鸨：有些姑娘跟着我做了很多年了。\n黄老爷如有兴趣，可以八折让老爷赎回去当丫鬟。";
            __reg1.an.onPress = function ()
            {
                关闭青楼程序(面板);
            }
            ;
        }
        ;
    }
    else 
    {
        _root.主角.快乐 = _root.主角.快乐 + 20;
        if (_root.主角.快乐 > 100) 
        {
            _root.主角.快乐 = 100;
        }
        面板.对话.确定.onPress = function ()
        {
            关闭青楼程序(面板);
        }
        ;
    }
    _root.主角.体力 = _root.主角.体力 + 100;
    if (_root.主角.体力 > _root.主角.体力上限) 
    {
        _root.主角.体力 = _root.主角.体力上限;
    }
    _root.主角.健康 = _root.主角.健康 - 3;
    _root.主角.寿命 = _root.主角.寿命 - 1;
    更新资料();
}
function 关闭青楼程序(面板)
{
    面板.removeMovieClip();
    _root.紫辰殿面板.removeMovieClip();
    _root.微服出巡面板.removeMovieClip();
    _root.内侍面板.removeMovieClip();
    _root.主角.当前时辰 = _root.主角.当前时辰 + 2;
    时辰推进();
}
function 青楼图形出现(对象)
{
    对象._alpha = 0;
    对象.onEnterFrame = function ()
    {
        this._alpha = this._alpha + 10;
        if (this._alpha >= 100) 
        {
            delete this.onEnterFrame;
        }
    }
    ;
}
function 微服按钮相关(对象)
{
    var 名称 = 对象.属性;
    对象.onRollOut = function ()
    {
        对象._parent.红色文字条.removeMovieClip();
    }
    ;
    对象.onRollOver = function ()
    {
        对象._parent.attachMovie("红色文字条", "红色文字条", 2000, {_x: 0, _y: 0});
        对象._parent.红色文字条.文本.text = 名称;
        对象._parent.红色文字条._x = 对象._x + 对象._width / 2;
        对象._parent.红色文字条._y = 对象._y - 对象._parent.红色文字条._height;
    }
    ;
}
function 提示面板的代码程序(面板, 文本)
{
    面板.onPress = function ()
    {
        if (文本 == "离开") 
        {
            this._parent._parent.内侍面板.removeMovieClip();
            this._parent.removeMovieClip();
            移除板子再推进(_root.紫辰殿面板);
        }
    }
    ;
    面板.onRollOut = function ()
    {
        this._parent.提示.removeMovieClip();
    }
    ;
    面板.onRollOver = function ()
    {
        var __reg2 = this._parent.attachMovie("补助小条", "提示", 9000, {_x: this._x, _y: this._y});
        __reg2._x = __reg2._x - __reg2._width / 2;
        __reg2.文本.text = 文本;
    }
    ;
}
function 路人处理程序(面板)
{
    var 嫖客的话 = 嫖客对话[random(嫖客对话.length)];
    var 两位妇人的话 = 两位妇人对话[random(两位妇人对话.length)];
    var 三位小孩对话 = 三位小孩对话[random(三位小孩对话.length)];
    var 闲散路人对话 = 各种吐槽对话[random(各种吐槽对话.length)];
    var 暴发户说 = 暴发户的话[random(暴发户的话.length)];
    面板.嫖客.onPress = function ()
    {
        var 对话板 = 面板.attachMovie("路人对话", "路人对话", 90000, {_x: 0, _y: 0});
        if (this.开关 == 1) 
        {
            对话板.文本.text = "一位站在怡红院门口的嫖客。";
            对话板.an.onPress = function ()
            {
                面板.红色文字条.removeMovieClip();
                对话板.removeMovieClip();
            }
            ;
            return;
        }
        this.开关 = 1;
        对话板.文本.text = 嫖客的话;
        对话板.an.onPress = function ()
        {
            面板.红色文字条.removeMovieClip();
            对话板.removeMovieClip();
        }
        ;
    }
    ;
    面板.两位妇人.onPress = function ()
    {
        var 对话板 = 面板.attachMovie("路人对话", "路人对话", 90000, {_x: 0, _y: 0});
        if (this.开关 == 1) 
        {
            对话板.文本.text = "两位在门口闲聊的妇人。";
            对话板.an.onPress = function ()
            {
                面板.红色文字条.removeMovieClip();
                对话板.removeMovieClip();
            }
            ;
            return;
        }
        this.开关 = 1;
        对话板.序列 = 0;
        var 对话句 = 两位妇人的话;
        对话板.文本.text = 对话句[0];
        对话板.an.onPress = function ()
        {
            ++对话板.序列;
            if (对话句[对话板.序列] !== undefined) 
            {
                对话板.文本.text = 对话句[对话板.序列];
                return;
            }
            面板.红色文字条.removeMovieClip();
            对话板.removeMovieClip();
        }
        ;
    }
    ;
    面板.三个小孩.onPress = function ()
    {
        var 对话板 = 面板.attachMovie("路人对话", "路人对话", 90000, {_x: 0, _y: 0});
        if (this.开关 == 1) 
        {
            对话板.文本.text = "几个在门口嬉戏的小孩。";
            对话板.an.onPress = function ()
            {
                面板.红色文字条.removeMovieClip();
                对话板.removeMovieClip();
            }
            ;
            return;
        }
        this.开关 = 1;
        对话板.序列 = 0;
        var 对话句 = 三位小孩对话;
        对话板.文本.text = 对话句[0];
        对话板.an.onPress = function ()
        {
            ++对话板.序列;
            if (对话句[对话板.序列] !== undefined) 
            {
                对话板.文本.text = 对话句[对话板.序列];
                return;
            }
            面板.红色文字条.removeMovieClip();
            对话板.removeMovieClip();
        }
        ;
    }
    ;
    面板.闲散路人.onPress = function ()
    {
        var 对话板 = 面板.attachMovie("路人对话", "路人对话", 90000, {_x: 0, _y: 0});
        if (this.开关 == 1) 
        {
            对话板.文本.text = "两位在梨花园门口的闲散路人。";
            对话板.an.onPress = function ()
            {
                面板.红色文字条.removeMovieClip();
                对话板.removeMovieClip();
            }
            ;
            return;
        }
        this.开关 = 1;
        对话板.文本.text = "网友吐槽：" + 闲散路人对话;
        对话板.an.onPress = function ()
        {
            面板.红色文字条.removeMovieClip();
            对话板.removeMovieClip();
        }
        ;
    }
    ;
    面板.暴发户.onPress = function ()
    {
        var 对话板 = 面板.attachMovie("路人对话", "路人对话", 90000, {_x: 0, _y: 0});
        if (this.开关 == 1) 
        {
            对话板.文本.text = "一个大腹便便的暴发户。";
            对话板.an.onPress = function ()
            {
                面板.红色文字条.removeMovieClip();
                对话板.removeMovieClip();
            }
            ;
            return;
        }
        this.开关 = 1;
        对话板.文本.text = "暴发户：" + 暴发户说;
        对话板.an.onPress = function ()
        {
            面板.红色文字条.removeMovieClip();
            对话板.removeMovieClip();
        }
        ;
    }
    ;
}
微服所有地名 = ["一对夫妇", "两位妇人", "员外", "嫖客", "怡红院", "两位差役", "梨花园", "奇兰茶馆", "两位挑工", "婆婆媳妇", "暴发户", "两位文人", "三个小孩", "鸿宾楼", "闲散路人", "老者"];

//  Action tag #8

function 进行外交面板()
{
    var __reg6 = 刷新外交();
    var 军事总表面板 = _root.attachMovie("军事总表面板", "军事总表面板", 90000, {_x: 0, _y: 0});
    军事总表面板.文本.text = "启禀皇上：您想约哪国使者。\n";
    var __reg10 = 4;
    var __reg11 = 12;
    var __reg3 = 0;
    var __reg7 = 0;
    while (__reg7 < __reg11) 
    {
        var __reg5 = 0;
        while (__reg5 < __reg10) 
        {
            if (__reg3 < __reg6.length) 
            {
                if (0 != (__reg3 !== 8) & 0 != __reg6[__reg3].城.length > 0) 
                {
                    var __reg4 = 军事总表面板.attachMovie("补助小条", "补助小条" + __reg3, 112 + __reg3, {_x: __reg5 * 125 + 80, _y: __reg7 * 35 + 80});
                    __reg4.文本.text = __reg6[__reg3].名称;
                    __reg4.属性 = __reg6[__reg3];
                    __reg4.an.onPress = function ()
                    {
                        进行外交确定(this._parent.属性, 军事总表面板);
                    }
                    ;
                }
                ++__reg3;
            }
            ++__reg5;
        }
        ++__reg7;
    }
    军事总表面板.关闭.onRelease = function ()
    {
        _root.军事总表面板.removeMovieClip();
    }
    ;
}
function 进行外交确定(属性, 军事总表面板)
{
    遵旨显示下好吗("是，午后将" + 属性.名称 + "使者约至礼明殿。", 大殿.遵旨);
    军事总表面板.removeMovieClip();
}

//  Action tag #9

function 每个月的各地收支()
{
    var __reg24 = 0;
    var __reg15 = [];
    var __reg10 = 0;
    while (__reg10 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg10].归属 == 8) 
        {
            __reg15.push(_root.所有城池[__reg10]);
        }
        ++__reg10;
    }
    var __reg16 = [];
    var __reg14 = [];
    __reg10 = 0;
    while (__reg10 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg10].归属 == 8) 
        {
            var __reg3 = 0;
            while (__reg3 < _root.所有人才.length) 
            {
                if (0 != (_root.所有人才[__reg3].类 == "知府") & 0 != (_root.所有人才[__reg3].城.id == _root.所有城池[__reg10].id)) 
                {
                    __reg16.push(_root.所有人才[__reg3]);
                }
                if (0 != (_root.所有人才[__reg3].类 == "总兵") & 0 != (_root.所有人才[__reg3].城.id == _root.所有城池[__reg10].id)) 
                {
                    __reg14.push(_root.所有人才[__reg3]);
                }
                ++__reg3;
            }
        }
        ++__reg10;
    }
    var __reg13 = "";
    __reg13 = __reg13 + "户部的本月各州府收支奏折：\n\n";
    __reg10 = 0;
    while (__reg10 < __reg15.length) 
    {
        var __reg2 = __reg15[__reg10];
        var __reg4 = __reg16[__reg10];
        var __reg5 = __reg14[__reg10];
        __reg13 = __reg13 + ("【" + __reg10 + "】" + __reg2.名称 + "，知府：" + __reg4.名字 + "。\n");
        var __reg22 = Math.round((__reg2.农业开发度 * 20 + __reg2.商业开发度 * 30 + __reg2.矿业开发度 * 30 + __reg2.牧业开发度 * 20 * (国家.税率 * 4 / 100)) * (__reg4.清廉 * 0.01));
        var __reg17 = 解析城市方针(__reg2);
        var __reg8 = __reg2.方针;
        var __reg6 = 40000;
        if (__reg8 == 1) 
        {
            __reg6 = 40000 * (1 + __reg4.清廉 * 0.01);
            城市增加属性(__reg4.智慧, __reg2, 0);
        }
        else if (__reg8 == 2) 
        {
            __reg6 = 80000 * (1 + __reg4.清廉 * 0.01);
        }
        else if (__reg8 == 3) 
        {
            __reg6 = 2000 * (1 + __reg4.清廉 * 0.01);
            城市增加属性(__reg4.智慧, __reg2, 1);
        }
        if (0 != (0 != __reg5.野心 > 50 & 0 != __reg5.忠诚 < 70) | 0 != (0 != __reg4.野心 > 65 & 0 != __reg4.忠诚 < 70)) 
        {
            if (random(4) == 0) 
            {
                ++_root.主角.安全度;
                __reg5.忠诚 = __reg5.忠诚 - 2;
                if (0 != __reg4.野心 > 65 & 0 != __reg4.忠诚 < 70) 
                {
                    __reg4.忠诚 = __reg4.忠诚 - 1;
                }
            }
            var __reg19 = random(10);
            if (__reg19 < 2) 
            {
                if (__reg2.调查事件 == 1) 
                {
                    __reg21 = "密使来报" + 颜色代码(__reg2.名称, "ff0000") + "方面有异常。";
                    太监报告所有事件.push([__reg21, "快乐", -5, 7, 5]);
                    var __reg23 = "密使来报" + __reg2.名称 + "方面有异常。";
                    _root.记载入官员奏折的程序(__reg23);
                    每月丞相奏报.unshift(__reg2.名称 + "异常，日久恐怕生变。");
                }
            }
            else 
            {
                if (国家.调查经费 > 0) 
                {
                    __reg11 = random(4);
                }
                else 
                {
                    var __reg11 = random(7);
                }
                if (__reg5.忠诚 <= 25) 
                {
                    if (_root.主角.难度 != 4) 
                    {
                        if (__reg11 == 0) 
                        {
                            if (国家.调查经费 > 0) 
                            {
                                __reg21 = "三百里加急来报，\n" + 颜色代码(__reg2.名称, "ff0000") + "发生叛变，\n\n所幸及时发现，刑部已抓住叛将。\n" + 颜色代码("叛变失败", "ff0000");
                                太监报告所有事件.push([__reg21, "快乐", 0, 24, 1, undefined, undefined, 1, 1]);
                                _root.主角.快乐 = _root.主角.快乐 + 5;
                            }
                            else 
                            {
                                __reg21 = "三百里加急来报，\n" + 颜色代码(__reg2.名称, "ff0000") + "发生叛变，\n\n所幸及时发现，叛将已经逃离。\n" + 颜色代码("叛变失败", "ff0000");
                                太监报告所有事件.push([__reg21, "快乐", 0, 24, 1, undefined, undefined, 1]);
                                _root.主角.快乐 = _root.主角.快乐 - 5;
                                _root.主角.健康 = _root.主角.健康 - 5;
                            }
                            取名(1);
                            __reg20 = 临时名字;
                            官员属性更换程序(__reg4, __reg20);
                            取名(1);
                            __reg20 = 临时名字;
                            官员属性更换程序(__reg5, __reg20);
                        }
                        else if (__reg11 == 1) 
                        {
                            __reg21 = "三百里加急来报，\n" + 颜色代码(__reg2.名称, "ff0000") + "发生叛变。\n\n行动失败，叛乱将领当场毙命。\n" + 颜色代码("叛变失败", "ff0000");
                            太监报告所有事件.push([__reg21, "快乐", 0, 24, 1, undefined, undefined, 1]);
                            _root.主角.快乐 = _root.主角.快乐 - 5;
                            _root.主角.健康 = _root.主角.健康 - 5;
                            取名(1);
                            var __reg20 = 临时名字;
                            官员属性更换程序(__reg4, __reg20);
                            取名(1);
                            __reg20 = 临时名字;
                            官员属性更换程序(__reg5, __reg20);
                        }
                        else 
                        {
                            var __reg21 = "七百里加急来报，\n" + 颜色代码(__reg2.名称, "ff0000") + "发生叛变，知府失踪。\n\n附近州府人心惶惶。\n" + 颜色代码("州府叛变", "ff0000");
                            太监报告所有事件.push([__reg21, "快乐", 0, 24, 1, undefined, undefined, 1]);
                            _root.主角.快乐 = _root.主角.快乐 - 20;
                            _root.主角.健康 = _root.主角.健康 - 10;
                            __reg2.归属 = 9;
                            生成这个城市的兵力(__reg2);
                            删除指定官员的程序(__reg4);
                            删除指定官员的程序(__reg5);
                        }
                    }
                }
            }
        }
        var __reg9 = 取出宰相程序();
        if (0 != __reg9.野心 > 70 & 0 != (__reg9.忠诚 !== 100)) 
        {
            if (_root.主角.难度 != 4) 
            {
                if (random(4) == 0) 
                {
                    __reg9.忠诚 = __reg9.忠诚 - 1;
                    ++_root.主角.安全度;
                }
            }
        }
        if (__reg2.民心 < 20) 
        {
            __reg2.民心 = 20;
        }
        else if (__reg2.民心 < 35) 
        {
            var __reg18 = random(25);
            if (__reg18 < 3) 
            {
                ++_root.主角.安全度;
                __reg21 = 颜色代码(__reg2.名称, "ff0000") + "知府来奏，百姓不满朝廷重税，群起示威。\n破坏州府建筑，皇威受到严重打击。";
                太监报告所有事件.push([__reg21, "快乐", -4, 17, 1]);
                __reg23 = "严重：" + __reg2.名称 + "知府来奏，百姓不满朝廷重税，群起示威。\n破坏州府建筑，皇威受到严重打击。";
                _root.记载入官员奏折的程序(__reg23);
                var __reg7 = random(4);
                if (__reg7 == 0) 
                {
                    每月丞相奏报.unshift(__reg2.名称 + "暴乱，望皇上能减轻税收，安抚百姓。");
                }
                else if (__reg7 == 1) 
                {
                    每月丞相奏报.unshift(__reg2.名称 + "地区动荡，望皇上详查该地区，尽早安抚百姓。");
                }
                else if (__reg7 == 2) 
                {
                    每月丞相奏报.unshift(__reg2.名称 + "民众抗议，望皇上体恤民情，安抚百姓。");
                }
                else if (__reg7 == 3) 
                {
                    每月丞相奏报.unshift(__reg2.名称 + "民心偏低。");
                }
                _root.主角.威望 = _root.主角.威望 - (2 + random(5));
                __reg2.人口 = __reg2.人口 - Math.round(__reg2.人口 / 100);
                __reg2.壮丁 = __reg2.壮丁 - Math.round(__reg2.壮丁 / 100);
                __reg2.银两 = __reg2.银两 - Math.round(__reg2.银两 / 50);
                破坏该城市建筑(2, __reg2);
            }
        }
        if (__reg2.治安 < 50) 
        {
            __reg18 = random(2);
            if (__reg18 == 1) 
            {
                ++_root.主角.安全度;
                __reg21 = __reg2.名称 + "知府来奏，" + 颜色代码(__reg2.名称, "ff0000") + "治安太差，发生了暴动。暴民趁机烧杀抢掠。";
                太监报告所有事件.push([__reg21, "快乐", -4, 18, 1]);
                __reg2.人口 = __reg2.人口 - Math.round(__reg2.人口 / 200);
                __reg2.壮丁 = __reg2.壮丁 - Math.round(__reg2.壮丁 / 200);
                __reg2.银两 = __reg2.银两 - Math.round(__reg2.银两 / 50);
                __reg23 = __reg2.名称 + "知府来奏，" + __reg2.名称 + "治安太差，发生了暴动。暴民趁机烧杀抢掠。";
                _root.记载入官员奏折的程序(__reg23);
                每月丞相奏报.unshift(__reg2.名称 + "暴乱，当建设衙门，提升治安。");
            }
        }
        if (__reg2.安定 < 50) 
        {
            __reg18 = random(2);
            if (__reg18 == 1) 
            {
                __reg21 = __reg2.名称 + "知府来奏，" + 颜色代码(__reg2.名称, "ff0000") + "安定太差，人心惶惶。\n百姓四处逃串。";
                __reg2.人口 = __reg2.人口 - Math.round(__reg2.人口 / 100);
                __reg2.壮丁 = __reg2.壮丁 - Math.round(__reg2.壮丁 / 100);
                太监报告所有事件.push([__reg21, "快乐", -4, 18, 1]);
                __reg23 = __reg2.名称 + "知府来奏，" + __reg2.名称 + "安定太差，人心惶惶。\n百姓四处逃串。";
                每月丞相奏报.unshift(__reg2.名称 + "暴乱，当建设寺庙，提升安定。");
                _root.记载入官员奏折的程序(__reg23);
            }
        }
        __reg6 = Math.round(__reg6);
        __reg13 = __reg13 + ("本月收入：" + __reg22 + "两，州府方针：" + __reg17 + "。\n");
        __reg13 = __reg13 + ("行政开支：" + __reg6 + "两。\n");
        ++__reg10;
    }
    __reg10 = 0;
    while (__reg10 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg10].归属 == 8) 
        {
            var __reg12 = random(40);
            if (主角.祭祀 > 0) 
            {
                __reg12 = 20;
            }
            if (__reg12 == 1) 
            {
                城市灾难事件(_root.所有城池[__reg10]);
            }
        }
        ++__reg10;
    }
    __reg10 = 0;
    while (__reg10 < _root.所有城池.length) 
    {
        _root.所有城池[__reg10].归属 != 8;
        ++__reg10;
    }
    _root.显示用的地方收成表 = __reg13;
}
function 取出宰相程序()
{
    var __reg2 = {};
    var __reg1 = 0;
    while (__reg1 < 所有人才.length) 
    {
        if (所有人才[__reg1].类 == "宰相") 
        {
            __reg2 = 所有人才[__reg1];
        }
        ++__reg1;
    }
    return __reg2;
}
function 获取知府和总兵程序(参数)
{
    var __reg3 = {};
    var __reg2 = 0;
    while (__reg2 < _root.所有人才.length) 
    {
        if (0 != (_root.所有人才[__reg2].类 == "知府") & 0 != (_root.所有人才[__reg2].城.id == 参数)) 
        {
            __reg3.知府 = _root.所有人才[__reg2];
        }
        if (0 != (_root.所有人才[__reg2].类 == "总兵") & 0 != (_root.所有人才[__reg2].城.id == 参数)) 
        {
            __reg3.总兵 = _root.所有人才[__reg2];
        }
        ++__reg2;
    }
    return __reg3;
}
function 城市增加属性(知府智慧, 城市, 参数)
{
    var __reg6 = [城市.农业, "农业"];
    var __reg8 = [城市.商业, "商业"];
    var __reg7 = [城市.矿业, "矿业"];
    var __reg4 = [城市.牧业, "牧业"];
    var __reg2 = [__reg6, __reg8, __reg7, __reg4];
    var __reg5 = Array.NUMERIC | Array.DESCENDING;
    __reg2.sort(__reg5);
    var __reg3 = Math.round(知府智慧 * 0.5);
    if (参数 == 0) 
    {
        城市[__reg2[0][1] + "开发度"] = 城市[__reg2[0][1] + "开发度"] + Math.round(__reg3);
        城市[__reg2[1][1] + "开发度"] = 城市[__reg2[1][1] + "开发度"] + Math.round(__reg3 * 0.2);
        城市[__reg2[2][1] + "开发度"] = 城市[__reg2[2][1] + "开发度"] + Math.round(__reg3 * 0.2);
        城市[__reg2[3][1] + "开发度"] = 城市[__reg2[3][1] + "开发度"] + Math.round(__reg3 * 0.2);
    }
    else if (参数 == 1) 
    {
        城市[__reg2[0][1] + "开发度"] = 城市[__reg2[0][1] + "开发度"] + Math.round(__reg3 * 0.5);
        城市[__reg2[1][1] + "开发度"] = 城市[__reg2[1][1] + "开发度"] + Math.round(__reg3 * 0.1);
        城市[__reg2[2][1] + "开发度"] = 城市[__reg2[2][1] + "开发度"] + Math.round(__reg3 * 0.1);
        城市[__reg2[3][1] + "开发度"] = 城市[__reg2[3][1] + "开发度"] + Math.round(__reg3 * 0.1);
    }
    if (城市[__reg2[0][1] + "开发度"] > 城市[__reg2[0][1]]) 
    {
        城市[__reg2[0][1] + "开发度"] = 城市[__reg2[0][1]];
    }
    if (城市[__reg2[1][1] + "开发度"] > 城市[__reg2[1][1]]) 
    {
        城市[__reg2[1][1] + "开发度"] = 城市[__reg2[1][1]];
    }
    if (城市[__reg2[2][1] + "开发度"] > 城市[__reg2[2][1]]) 
    {
        城市[__reg2[2][1] + "开发度"] = 城市[__reg2[2][1]];
    }
    if (城市[__reg2[3][1] + "开发度"] > 城市[__reg2[3][1]]) 
    {
        城市[__reg2[3][1] + "开发度"] = 城市[__reg2[3][1]];
    }
}
function 解析城市方针(对象)
{
    var __reg1 = "";
    if (对象.方针 == 1) 
    {
        __reg1 = "重视经济";
    }
    else if (对象.方针 == 2) 
    {
        __reg1 = "重视军事";
    }
    else if (对象.方针 == 3) 
    {
        __reg1 = "节约经济";
    }
    return __reg1;
}

//  Action tag #10

function 移除板子再推进(对象)
{
    ++主角.当前时辰;
    对象.removeMovieClip();
    时辰推进();
}
function 时辰推进()
{
    if (_root.主角.后宫频率 > 0) 
    {
        --_root.主角.后宫频率;
    }
    if (主角.体力 < 10) 
    {
        生病出图程序();
        return;
    }
    if (主角.寿命 <= 0) 
    {
        生病出图程序();
        return;
    }
    更新皇宫背景图的程序();
    if (主角.当前时辰 > 3) 
    {
        游戏回合推进();
    }
    else if (0 != (主角.当前时辰 == 1) & 0 != (主角.开科考试 == 1)) 
    {
        主角.开科考试 = 0;
        科举处理();
        if (主角.祭祀活动 == 1) 
        {
            _root.小提示("祭祀没办法去了");
            主角.祭祀活动 = 0;
        }
    }
    else if (0 != (主角.当前时辰 == 1) & 0 != (主角.祭祀活动 == 1)) 
    {
        主角.祭祀活动 = 0;
        祭祀活动举行();
    }
    else 
    {
        if (主角.当前时辰 == 0) 
        {
            每月奏折面板();
            每月后宫数据处理();
            太监报告事情(太监报告所有事件);
            if (主角.年龄 > 35) 
            {
                if (主角.体力上限 > 180) 
                {
                    if (主角.寿命 < 40) 
                    {
                        主角.体力上限 = 主角.体力上限 - 30;
                        if (主角.体力上限 < 150) 
                        {
                            主角.体力上限 = 150;
                        }
                    }
                    else 
                    {
                        主角.体力上限 = 主角.体力上限 - 10;
                    }
                }
            }
        }
        else 
        {
            黑色幕布();
            每月奏折取消();
        }
        时辰 = 所有时辰[主角.当前时辰];
        if (_root.主角.体力 < 40) 
        {
            太监问声好(1);
        }
        else if (_root.主角.生病刚好 == 1) 
        {
            _root.主角.生病刚好 = 0;
            太监问声好(2);
        }
        else if (_root.主角.年 == 1) 
        {
            太监问声好();
        }
    }
    更新资料();
    皇宫.时辰.text = 时辰;
}

//  Action tag #11

function 固定事件()
{
    var __reg2 = [];
    if (主角.丹药列表 !== undefined) 
    {
        __reg2.push("炼丹报告事件");
    }
    if (主角.战斗队伍.胜负 !== undefined) 
    {
        __reg2.push("战争战报事件");
        _root.战争战报记录 = new Object();
        _root.战争战报记录.士兵 = 主角.战斗队伍.士兵;
        _root.战争战报记录.士兵上限 = 主角.战斗队伍.士兵上限;
        _root.战争战报记录.朴刀 = 主角.战斗队伍.朴刀;
        _root.战争战报记录.皮甲 = 主角.战斗队伍.皮甲;
        _root.战争战报记录.战马 = 主角.战斗队伍.战马;
        _root.战争战报记录.铁炮 = 主角.战斗队伍.铁炮;
        _root.战争战报记录.胜负 = 主角.战斗队伍.胜负;
        _root.战争战报记录.战斗地点 = 主角.战斗队伍.战斗地点;
        _root.战争战报记录.斩杀 = Math.round(Number(主角.战斗队伍.敌人总士兵) - 主角.战斗队伍.敌人剩余士兵);
        _root.战争战报记录.敌人总士兵 = 主角.战斗队伍.敌人总士兵;
        主角.战斗队伍.胜负 = undefined;
    }
    if (城市升级喜报 == 1) 
    {
        if (_root.主角.难度 != 4) 
        {
            城市升级喜报 = 0;
            __reg2.push("城市升级喜报播报");
        }
    }
    if (0 != (季 == 1) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("各地赠送贡品事件");
    }
    if (0 != (0 != (0 != (年 == 11) & 0 != (季 == 1)) & 0 != (旬 == "上旬")) & 0 != (_root.主角.事件0 == 0)) 
    {
        _root.主角.事件0 == 1;
        __reg2.push("十年修缮事件");
    }
    if (0 != (0 != (0 != (年 == 21) & 0 != (季 == 1)) & 0 != (旬 == "上旬")) & 0 != (_root.主角.事件1 == 0)) 
    {
        _root.主角.事件1 == 1;
        __reg2.push("二十年修缮事件");
    }
    if (0 != (0 != (0 != (年 == 31) & 0 != (季 == 1)) & 0 != (旬 == "上旬")) & 0 != (_root.主角.事件2 == 0)) 
    {
        _root.主角.事件2 == 1;
        __reg2.push("三十年修缮事件");
    }
    if (0 != (0 != (0 != (年 == 5) & 0 != (季 == 1)) & 0 != (旬 == "上旬")) & 0 != (_root.主角.事件3 == 0)) 
    {
        _root.主角.事件3 == 1;
        __reg2.push("太后大寿比赛");
    }
    if (0 != (0 != (0 != (年 == 15) & 0 != (季 == 2)) & 0 != (旬 == "下旬")) & 0 != (_root.主角.事件4 == 0)) 
    {
        _root.主角.事件4 == 1;
        __reg2.push("荷风夏月比赛");
    }
    if (0 != (0 != (0 != (年 == 25) & 0 != (季 == 3)) & 0 != (旬 == "上旬")) & 0 != (_root.主角.事件5 == 0)) 
    {
        _root.主角.事件5 == 1;
        __reg2.push("丰收大典比赛");
    }
    if (0 != (0 != (0 != (年 == 35) & 0 != (季 == 4)) & 0 != (旬 == "下旬")) & 0 != (_root.主角.事件6 == 0)) 
    {
        _root.主角.事件6 == 1;
        __reg2.push("除夕之夜比赛");
    }
    if (0 != (0 != (年 == 4) & 0 != (季 == 2)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("带妃游玩事件");
    }
    if (0 != (0 != (年 == 14) & 0 != (季 == 2)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("带妃游玩事件");
    }
    if (0 != (0 != (年 == 24) & 0 != (季 == 2)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("带妃游玩事件");
    }
    if (0 != (0 != (年 == 34) & 0 != (季 == 2)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("带妃游玩事件");
    }
    if (0 != (0 != (年 == 2) & 0 != (季 == 3)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("第一届武斗大会");
    }
    if (0 != (0 != (年 == 12) & 0 != (季 == 3)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("第一届武斗大会");
    }
    if (0 != (0 != (年 == 22) & 0 != (季 == 3)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("第一届武斗大会");
    }
    if (0 != (0 != (年 == 32) & 0 != (季 == 3)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("第一届武斗大会");
    }
    if (0 != (0 != (年 == 7) & 0 != (季 == 1)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("选妃子咯");
    }
    if (0 != (0 != (年 == 17) & 0 != (季 == 1)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("选妃子咯");
    }
    if (0 != (0 != (年 == 27) & 0 != (季 == 1)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("选妃子咯");
    }
    if (0 != (0 != (年 == 37) & 0 != (季 == 1)) & 0 != (旬 == "下旬")) 
    {
        __reg2.push("选妃子咯");
    }
    if (0 != (0 != (年 == 8) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("皇子比赛事件");
    }
    if (0 != (0 != (年 == 18) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("皇子比赛事件");
    }
    if (0 != (0 != (年 == 28) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("皇子比赛事件");
    }
    if (0 != (0 != (年 == 38) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("皇子比赛事件");
    }
    if (0 != (0 != (年 == 1) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        if (random(10) == 0) 
        {
            __reg2.push("唐哲修事件");
        }
    }
    if (0 != (0 != (年 == 2) & 0 != (季 == 3)) & 0 != (旬 == "上旬")) 
    {
        if (random(2) == 0) 
        {
            if (_root.主角.难度 != 4) 
            {
                __reg2.push("比目鱼山寨兵团事件");
            }
        }
    }
    if (0 != (0 != (年 == 5) & 0 != (季 == 3)) & 0 != (旬 == "上旬")) 
    {
        if (random(4) == 0) 
        {
            __reg2.push("比目鱼谴责事件");
        }
    }
    if (0 != (0 != (年 == 4) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        if (random(2) == 0) 
        {
            if (_root.主角.难度 != 4) 
            {
                __reg2.push("比目鱼密函事件");
            }
        }
    }
    if (0 != (0 != (年 == 12) & 0 != (季 == 3)) & 0 != (旬 == "上旬")) 
    {
        if (random(2) == 0) 
        {
            __reg2.push("大臣女儿很漂亮事件");
        }
    }
    if (0 != (0 != (年 == 27) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        if (_root.主角.难度 != 4) 
        {
            __reg2.push("泰山封禅大典事件");
        }
    }
    if (0 != (0 != (年 == 10) & 0 != (季 == 1)) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("太后驾崩事件");
    }
    if (0 != (0 != (年 == 1) & 0 != (季 == 1)) & 0 != (旬 == "下旬")) 
    {
        if (_root.主角.难度 != 4) 
        {
            __reg2.push("高丽来使事件");
        }
    }
    if (0 != (0 != (年 == 1) & 0 != (季 == 3)) & 0 != (旬 == "下旬")) 
    {
        if (_root.主角.难度 != 4) 
        {
            __reg2.push("东突厥来使事件");
        }
    }
    if (0 != (0 != (年 == 6) & 0 != (季 == 2)) & 0 != (旬 == "上旬")) 
    {
        刷新所有的阵营数据();
        if (0 != (所有城池[25].归属 == 8) & 0 != 阵营[1].城.length > 0) 
        {
            if (_root.主角.难度 != 4) 
            {
                __reg2.push("日本来使事件");
            }
        }
    }
    if (0 != (0 != (年 == 1) & 0 != (季 == 1)) & 0 != (旬 == "下旬")) 
    {
        if (_root.主角.难度 == 4) 
        {
            __reg2.push("无敌的事件");
        }
    }
    if (0 != (0 != (_root.主角.年龄 == 61) & 0 != (季 == 1)) & 0 != (旬 == "上旬")) 
    {
        __reg2.push("皇帝禅让事件");
    }
    if (_root.国家.金钱 <= 0) 
    {
        __reg2.push("官员不发放俸禄事件");
    }
    if (主角.快乐 <= 10) 
    {
        if (random(2) == 0) 
        {
            __reg2.push("妃子群沐图事件");
        }
        else 
        {
            __reg2.push("皇后劝休息事件");
            主角.快乐 = 15;
            更新资料();
        }
    }
    else if (_root.主角.安全度 > 25) 
    {
        if (random(2) == 0) 
        {
            if (_root.主角.难度 != 4) 
            {
                __reg2.push("刺客行刺事件");
            }
        }
    }
    if (0 != 主角.负数时间 > 6 & 0 != 国家.金钱 < -100000) 
    {
        __reg2.push("穷死了结局");
    }
    if (主角.健康 <= 10) 
    {
        __reg2.push("健康很低的御医事件");
    }
    return __reg2;
}
function 送药一次程序(文本, 影响, 数值)
{
    var __reg2 = {};
    __reg2.名称 = 文本;
    __reg2.增加 = [[影响, 数值]];
    __reg2.特殊 = 0;
    _root.主角.丹药.unshift(__reg2);
}
function 沦陷死亡事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "谁都不许碰我们皇上……\n(京城沦陷，皇宫里一阵骚乱。)";
    对象.太监.人.gotoAndStop(8);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "我跟你们拼了……";
        对象.太监.人.gotoAndStop(7);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "(小桂子被敌军砍死在大殿之上)";
            对象.太监.人._visible = false;
            对象.太监.继续.onPress = function ()
            {
                对象.太监.文本.htmlText = "一切都结束了，皇帝。\n南柯一梦……\n罢了……";
                对象.太监.继续.onPress = function ()
                {
                    城市沦陷程序();
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 无敌的事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "皇上早，鱼叔说为了照顾新人和菜鸟。\n特地开放无敌模式。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "首先属性全满。";
        主角.健康 = 100;
        主角.体力 = 1000;
        主角.体力上限 = 主角.体力;
        主角.快乐 = 100;
        主角.威望 = 1000;
        主角.武术 = 1000;
        主角.文学 = 1000;
        主角.魅力 = 1000;
        主角.智慧 = 1000;
        主角.暴戾 = 1000;
        主角.道德 = 1000;
        主角.才艺 = 1000;
        更新资料();
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "国库金钱全满。";
            国家.金钱 = 1000000000;
            更新资料();
            对象.太监.继续.onPress = function ()
            {
                对象.太监.文本.htmlText = "关于作者比目鱼的事件全部移除。";
                对象.太监.继续.onPress = function ()
                {
                    对象.太监.文本.htmlText = "外交事件全部移除。";
                    对象.太监.继续.onPress = function ()
                    {
                        对象.太监.文本.htmlText = "所有国家皈依天朝。";
                        var __reg3 = 0;
                        while (__reg3 < _root.所有城池.length) 
                        {
                            var __reg2 = _root.所有城池[__reg3];
                            __reg2.人口 = 1200000;
                            __reg2.寺庙 = 100;
                            __reg2.市集 = 100;
                            __reg2.城墙 = 100;
                            __reg2.衙门 = 100;
                            __reg2.义仓 = 100;
                            __reg2.校场 = 100;
                            __reg2.士兵 = 30000;
                            if (__reg2.归属 !== 8) 
                            {
                                创建人才("知府", 3, __reg2);
                                创建人才("总兵", 3, __reg2);
                            }
                            __reg2.归属 = 8;
                            __reg2.民心 = 100;
                            __reg2.行宫 = 3;
                            ++__reg3;
                        }
                        对象.太监.继续.onPress = function ()
                        {
                            对象.太监.文本.htmlText = "所有官员能力全满。";
                            var __reg1 = 0;
                            while (__reg1 < 所有人才.length) 
                            {
                                所有人才[__reg1].年龄 = 16;
                                所有人才[__reg1].智慧 = 100;
                                所有人才[__reg1].野心 = 0;
                                所有人才[__reg1].清廉 = 100;
                                所有人才[__reg1].武术 = 100;
                                所有人才[__reg1].忠诚 = 100;
                                ++__reg1;
                            }
                            对象.太监.继续.onPress = function ()
                            {
                                对象.太监.文本.htmlText = "官员叛乱逻辑，宰相叛乱逻辑移除。";
                                对象.太监.继续.onPress = function ()
                                {
                                    对象.太监.文本.htmlText = "后宫概率增加一倍。";
                                    对象.太监.继续.onPress = function ()
                                    {
                                        对象.太监.文本.htmlText = "特殊妃子人才道具移除。";
                                        对象.太监.继续.onPress = function ()
                                        {
                                            对象.太监.文本.htmlText = "刺客逻辑移除。";
                                            对象.太监.继续.onPress = function ()
                                            {
                                                对象.太监.文本.htmlText = "比目鱼策略游戏水印移除。";
                                                比目鱼策略游戏.text = "";
                                                对象.太监.继续.onPress = function ()
                                                {
                                                    对象.太监.文本.htmlText = "小贴士关于比目鱼部分移除。";
                                                    对象.太监.继续.onPress = function ()
                                                    {
                                                        对象.太监.文本.htmlText = "感谢玩家部分移除。";
                                                        对象.太监.继续.onPress = function ()
                                                        {
                                                            对象.太监.文本.htmlText = "抵制破解部分移除。";
                                                            对象.太监.继续.onPress = function ()
                                                            {
                                                                对象.太监.文本.htmlText = "防修改部分移除。";
                                                                对象.太监.继续.onPress = function ()
                                                                {
                                                                    对象.太监.文本.htmlText = "封神太子2广告部分移除。";
                                                                    对象.太监.继续.onPress = function ()
                                                                    {
                                                                        对象.太监.文本.htmlText = "城市超级富有捷报移除。";
                                                                        对象.太监.继续.onPress = function ()
                                                                        {
                                                                            对象.太监.文本.htmlText = "妃子有可能死亡移除。";
                                                                            对象.太监.继续.onPress = function ()
                                                                            {
                                                                                对象.太监.文本.htmlText = "三年开发手记移除。";
                                                                                对象.太监.继续.onPress = function ()
                                                                                {
                                                                                    对象.太监.文本.htmlText = "哔……作弊结束。\n希望您游戏愉快。";
                                                                                    对象.太监.继续.onPress = function ()
                                                                                    {
                                                                                        结束固定事件程序(对象);
                                                                                    }
                                                                                    ;
                                                                                }
                                                                                ;
                                                                            }
                                                                            ;
                                                                        }
                                                                        ;
                                                                    }
                                                                    ;
                                                                }
                                                                ;
                                                            }
                                                            ;
                                                        }
                                                        ;
                                                    }
                                                    ;
                                                }
                                                ;
                                            }
                                            ;
                                        }
                                        ;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 宰相篡位事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    var __reg1 = 取出宰相程序();
    对象.太监.人.gotoAndStop(8);
    对象.太监.文本.htmlText = __reg1.名字 + " 你好大的胆子，敢带兵入宫。";
    对象.太监.继续.onPress = function ()
    {
        对象.太监.人.gotoAndStop(7);
        对象.太监.文本.htmlText = "皇上待你不薄，予你宰相之位。\n你竟敢图谋不轨……";
        对象.太监.继续.onPress = function ()
        {
            对象.太监.人.gotoAndStop(3);
            对象.太监.文本.htmlText = "你们带我去哪? 我哪也不去……\n皇上，皇上……";
            对象.太监.继续.onPress = function ()
            {
                宰相篡位程序();
            }
            ;
        }
        ;
    }
    ;
}
function 地方叛变事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "报……报告。";
    对象.太监.人.gotoAndStop(1);
    对象.太监.继续.onPress = function ()
    {
        var __reg2 = random(3);
        if (__reg2 == 0) 
        {
            对象.太监.文本.htmlText = "州府总兵起兵叛变，当地知府已经被杀害。\n现在附近州府人心惶惶。";
        }
        else if (__reg2 == 1) 
        {
            对象.太监.文本.htmlText = "州府总兵起兵叛变，当地知府也已叛逃。\n现在附近州府人心惶惶。";
        }
        else if (__reg2 == 2) 
        {
            对象.太监.文本.htmlText = "州府总兵起兵叛变，当地知府失踪。\n现在附近州府人心惶惶。";
        }
        对象.太监.人.gotoAndStop(1);
        对象.太监.继续.onPress = function ()
        {
            _root.主角.快乐 = _root.主角.快乐 - 20;
            _root.主角.健康 = _root.主角.健康 - 10;
            更新资料();
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 炼丹报告事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "青炉房来报。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        if (主角.丹药列表.特殊 == 99) 
        {
            对象.太监.文本.htmlText = "炼制过程中突然炸锅。\n方士炸的满脸是药，已送往御医馆。";
            对象.太监.人.gotoAndStop(5);
        }
        else 
        {
            对象.太监.文本.htmlText = "方士送来炼成的丹药：" + 主角.丹药列表.名称 + "。";
            对象.太监.人.gotoAndStop(4);
            _root.主角.丹药.unshift(主角.丹药列表);
        }
        _root.主角.丹药列表 = undefined;
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 带妃游玩事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n避暑山庄荷塘月色，及其漂亮。\n皇上要带一位娘娘前往游玩呢？";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        选哪位娘娘出去玩();
        对象.太监.人.gotoAndStop(4);
        对象.太监.文本.htmlText = "游玩结束。\n快乐增加，妃子◎增加。";
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 选哪位娘娘出去玩()
{
    _root.attachMovie("后宫封号面板", "后宫封号面板", 90500, {_x: 0, _y: 0});
    var __reg10 = 0;
    var __reg6 = [];
    var __reg7 = 0;
    while (__reg7 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg7].名字 !== undefined) 
        {
            __reg10 = __reg10 + 1;
            __reg6.push([主角.后宫[__reg7].称呼, 主角.后宫[__reg7]]);
        }
        ++__reg7;
    }
    var 提示板 = _root.后宫封号面板.attachMovie("对话框面板", "对话框面板", 90000, {_x: 0, _y: 385});
    提示板._x = (640 - 提示板._width) / 2;
    提示板.an._visible = false;
    var __reg4 = 0;
    __reg7 = 0;
    while (__reg7 < 8) 
    {
        var __reg5 = 0;
        while (__reg5 < 6) 
        {
            if (__reg6[__reg4] !== undefined) 
            {
                var __reg3 = _root.后宫封号面板.attachMovie("后宫名牌小板", "后宫名牌小板" + __reg4, __reg4 + 1000, {_x: __reg5 * 100 + 30, _y: __reg7 * 45 + 60});
                __reg3.文本.text = __reg6[__reg4][0];
                __reg3.属性 = __reg6[__reg4][1];
                __reg3.按.onPress = function ()
                {
                    选哪位娘娘出去玩呢(this._parent.属性);
                }
                ;
                __reg3.按.onRollOut = function ()
                {
                    提示板.文本.text = "";
                }
                ;
                __reg3.按.onRollOver = function ()
                {
                    提示板.文本.text = this._parent.属性.称呼 + "娘娘" + " " + this._parent.属性.名字 + " 相貌：" + this._parent.属性.能力 + " ◎：" + this._parent.属性.爱;
                }
                ;
                ++__reg4;
            }
            ++__reg5;
        }
        ++__reg7;
    }
    _root.后宫封号面板.取消册封._visible = false;
    _root.后宫封号面板.名字.text = "";
    _root.后宫封号面板.标题.text = "带那个妃子前往避暑山庄？";
}
function 选哪位娘娘出去玩呢(对象)
{
    _root.后宫封号面板.removeMovieClip();
    对象.爱 = 对象.爱 + random(30);
    var 面板 = _root.attachMovie("避暑山庄", "避暑山庄", 90800, {_x: 0, _y: 0});
    面板.对话.文本.text = "美人相伴，避暑山庄之行。\n" + 对象.称呼 + " " + 对象.名字 + " 让朕很愉快。";
    _root.主角.快乐 = _root.主角.快乐 + 10;
    if (_root.主角.快乐 >= 100) 
    {
        _root.主角.快乐 = 100;
    }
    更新资料();
    面板.对话.an.onPress = function ()
    {
        _root.烧掉截图(_root);
        面板.removeMovieClip();
    }
    ;
}
function 比目鱼谴责事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "皇上，\n打扰一下，鱼叔要求插播一条广告。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.人.gotoAndStop(8);
        对象.太监.文本.htmlText = "比目鱼：\n关于17YY 破解篡改我们的成长系列，决战系列，西游前传系列 等多部策略游戏。\n我们表示强烈谴责……";
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 皇后劝休息事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n皇后派人送来夜宵，请皇上保重龙体，别太劳累。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.人.gotoAndStop(4);
        对象.太监.文本.htmlText = "快乐值略微得到恢复。\n(请注意快乐值，避免过低。)";
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 选妃子咯()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n皇后从储秀宫挑选了一些宫女，\n皇上中意的可以立即册封。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "请皇上移驾储秀宫。";
        对象.太监.继续.onPress = function ()
        {
            选妃程序();
            比赛.标题.text = "选择满意者留下";
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "选妃结束。";
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 皇子比赛事件()
{
    缓动黑幕();
    var 列表 = [];
    var __reg2 = 0;
    while (__reg2 < 所有子女数据.length) 
    {
        if (0 != (所有子女数据[__reg2].性别 == 0) & 0 != 所有子女数据[__reg2].年龄 >= 5) 
        {
            列表.push(所有子女数据[__reg2]);
        }
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n十年一届的皇子资质大测试在国子监隆重举行。\n所有年满五岁以上的皇子都会进行资质测试。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "请皇上移驾国子监。";
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = _root.attachMovie("皇子比赛项目", "比赛项目", 73000, {_x: 0, _y: 0});
            __reg2.标题.text = "资质大测试";
            资质大测试吧(__reg2, 列表);
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "皇子资质大测试结束了。\n大型歌舞宴会，皆大欢喜。";
            对象.太监.继续.onPress = function ()
            {
                _root.主角.快乐 = _root.主角.快乐 + 20;
                if (_root.主角.快乐 > 100) 
                {
                    _root.主角.快乐 = 100;
                }
                更新资料();
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 资质大测试吧(比赛, 临时列表)
{
    比赛.文本.text = "所有皇子入列：\n";
    var 临时数据 = [];
    var __reg4 = 0;
    while (__reg4 < 临时列表.length) 
    {
        var __reg5 = 临时列表[__reg4];
        var __reg1 = 0;
        var __reg2 = "";
        var __reg3 = random(6);
        if (__reg3 == 0) 
        {
            __reg2 = "作弊被抓";
            __reg1 = 10;
        }
        else if (__reg3 == 1) 
        {
            __reg2 = "超额发挥";
            __reg1 = 80 + random(10);
        }
        else if (__reg3 == 2) 
        {
            __reg2 = "发挥失常";
            __reg1 = 60 + random(10);
        }
        else if (__reg3 == 3) 
        {
            __reg2 = "解题失败";
            __reg1 = 30 + random(10);
        }
        else if (__reg3 == 4) 
        {
            __reg2 = "考试睡着";
            __reg1 = 5 + random(2);
        }
        else if (__reg3 == 5) 
        {
            __reg2 = "状态低迷";
            __reg1 = 20 + random(5);
        }
        临时数据.push({人: 临时列表[__reg4], 分数的: __reg1, 情况的: __reg2});
        比赛.文本.text = 比赛.文本.text + (__reg5.名称 + ",年龄：" + __reg5.年龄 + "，母亲：" + __reg5.母亲 + "。\n");
        ++__reg4;
    }
    临时数据.sortOn("分数的", Array.DESCENDING | Array.NUMERIC);
    var 通用按钮 = 比赛.attachMovie("通用按钮", "通用按钮", 2000, {_x: 600, _y: 445});
    通用按钮._x = (640 - 通用按钮._width) / 2;
    通用按钮.文本.text = "开始测试";
    通用按钮.按.onPress = function ()
    {
        通用按钮.removeMovieClip();
        进入倒计时大测试(比赛, 临时数据);
    }
    ;
}
function 进入倒计时大测试(比赛, 临时数据)
{
    var 条 = 比赛.attachMovie("等待条", "等待条", 74000, {_x: 0, _y: 0});
    条.标题.text = "皇子正在紧张考试";
    条.条._xscale = 0;
    条.onEnterFrame = function ()
    {
        if (this.条._xscale < 100) 
        {
            this.条._xscale = this.条._xscale + 1;
            return;
        }
        if (this.条._xscale == 100) 
        {
            this.条._xscale = this.条._xscale + 1;
            出结果大测试(比赛, 临时数据);
            return;
        }
        this._alpha = this._alpha - 10;
        if (this._alpha <= 0) 
        {
            this.removeMovieClip();
        }
    }
    ;
}
function 出结果大测试(比赛, 临时数据)
{
    比赛.文本.text = "比赛结果揭晓：\n";
    var __reg2 = 0;
    while (__reg2 < 临时数据.length) 
    {
        var __reg1 = 临时数据[__reg2];
        比赛.文本.text = 比赛.文本.text + (__reg1.人.名称 + ",年龄：" + __reg1.人.年龄 + "，母亲：" + __reg1.人.母亲 + "，表现：" + __reg1.情况的 + "，分数：" + __reg1.分数的 + "。\n");
        ++__reg2;
    }
    var 通用按钮 = 比赛.attachMovie("通用按钮", "通用按钮", 2000, {_x: 600, _y: 445});
    通用按钮._x = (640 - 通用按钮._width) / 2;
    通用按钮.文本.text = "进入提名";
    通用按钮.按.onPress = function ()
    {
        通用按钮.removeMovieClip();
        进入提名大测试(比赛, 临时数据);
    }
    ;
}
function 进入提名大测试(比赛, 临时数据)
{
    var 比赛结果 = 比赛.attachMovie("比赛项目", "比赛项目", 173000, {_x: 0, _y: 0});
    比赛结果.标题.text = "给谁第一名";
    var __reg8 = [];
    var __reg5 = 0;
    while (__reg5 < 8) 
    {
        if (临时数据[__reg5].人 !== undefined) 
        {
            __reg8.push(临时数据[__reg5]);
        }
        ++__reg5;
    }
    __reg5 = 0;
    for (;;) 
    {
        if (__reg5 >= __reg8.length) 
        {
            return;
        }
        var __reg4 = 比赛结果.attachMovie("你是第一名", "你是第一名" + __reg5, __reg5 + 200, {_x: 64, _y: 53 + __reg5 * 47});
        __reg4.底.gotoAndStop(1);
        if (__reg5 % 2 == 0) 
        {
            __reg4.底.gotoAndStop(2);
        }
        var __reg7 = __reg8[__reg5];
        __reg4.属性 = __reg7.人.名称;
        __reg4.名字.text = __reg7.人.名称;
        __reg4.年龄.text = "年龄：" + __reg7.人.年龄;
        __reg4.母亲.text = "母亲：" + __reg7.人.母亲;
        __reg4.分数.text = __reg7.分数的;
        __reg4.选择.文本.text = "选择";
        __reg4.选择.按.onPress = function ()
        {
            var __reg3 = 比赛.attachMovie("比赛奖励面板", "比赛奖励面板", 183000, {_x: 0, _y: 0});
            var __reg5 = this._parent._parent.属性;
            __reg3.文0.text = "";
            __reg3.文1.text = "言语鼓励";
            __reg3.文2.text = "赐黄背心";
            __reg3.文3.text = "奖励其母";
            var __reg4 = 48;
            __reg3.文1._x = __reg3.文1._x - __reg4;
            __reg3.文2._x = __reg3.文2._x - __reg4;
            __reg3.文3._x = __reg3.文3._x - __reg4;
            __reg3.an1._x = __reg3.an1._x - __reg4;
            __reg3.an2._x = __reg3.an2._x - __reg4;
            __reg3.an3._x = __reg3.an3._x - __reg4;
            __reg3.an0._visible = false;
            __reg3.an1.onPress = function ()
            {
                _root.烧掉截图(_root);
                比赛.removeMovieClip();
                更新资料();
            }
            ;
            __reg3.an2.onPress = function ()
            {
                国家.金钱 = 国家.金钱 - 20000;
                _root.烧掉截图(_root);
                比赛.removeMovieClip();
                更新资料();
            }
            ;
            __reg3.an3.onPress = function ()
            {
                国家.金钱 = 国家.金钱 - 40000;
                _root.烧掉截图(_root);
                比赛.removeMovieClip();
                更新资料();
            }
            ;
            __reg3.文本.text = "要给皇子" + __reg5 + "什么样的奖励呢？";
            模糊特效(比赛结果);
        }
        ;
        ++__reg5;
    }
}
function 第一届武斗大会()
{
    缓动黑幕();
    var __reg3 = [];
    var __reg2 = 0;
    while (__reg2 < 所有人才.length) 
    {
        __reg3.push(所有人才[__reg2]);
        ++__reg2;
    }
    var 临时列表 = [];
    __reg3.sort(打乱数组程序);
    __reg2 = 0;
    while (__reg2 < 8) 
    {
        临时列表.push(__reg3[__reg2]);
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n十年一届的武斗大会已经到来，朝廷上选出八位进入武斗决赛。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "请皇上移驾武斗场。";
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = _root.attachMovie("比赛项目", "比赛项目", 73000, {_x: 0, _y: 0});
            __reg2.标题.text = "武斗大会";
            开始武斗比赛吧(__reg2, 临时列表);
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "武斗大会结束了。\n宴会众大臣，皆大欢喜。";
            对象.太监.继续.onPress = function ()
            {
                _root.主角.快乐 = _root.主角.快乐 + 20;
                if (_root.主角.快乐 > 100) 
                {
                    _root.主角.快乐 = 100;
                }
                更新资料();
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 开始武斗比赛吧(比赛, 列表)
{
    var __reg7 = ["a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "b0", "b1", "b2", "b3", "c0", "c1", "d0"];
    var 排名面板 = 比赛.attachMovie("排名面板", "排名面板", 8000, {_x: 0, _y: 0});
    var __reg3 = 0;
    while (__reg3 < __reg7.length) 
    {
        排名面板[__reg7[__reg3]]._alpha = 0;
        ++__reg3;
    }
    var __reg5 = 0;
    __reg3 = 0;
    while (__reg3 < 8) 
    {
        var __reg4 = 列表[__reg3];
        var __reg2 = 排名面板.attachMovie("加载的比赛板子", "加载的比赛板子" + __reg5, __reg5 + 8000, {_x: 排名面板["a" + __reg3]._x, _y: 排名面板["a" + __reg3]._y});
        __reg2.版 = 排名面板["a" + __reg3];
        __reg2.版.属性 = __reg4;
        __reg2.序列 = __reg5;
        __reg2.文本.html = true;
        __reg2.属性 = __reg4;
        __reg2.文本.htmlText = 颜色代码(__reg4.名字 + "\n武术：" + __reg4.武术, "DDDDDD");
        ++__reg5;
        ++__reg3;
    }
    排名面板.序列 = 20;
    var 对话 = 比赛.attachMovie("对话框面板", "对话框面板", 12000, {_x: 480, _y: 420});
    对话._x = (640 - 对话._width) / 2;
    对话.文本.text = 列表[0].名字 + "," + 列表[1].名字 + "," + 列表[2].名字 + "," + 列表[3].名字 + "," + 列表[4].名字 + "," + 列表[5].名字 + "," + 列表[6].名字 + "," + 列表[7].名字 + ",八位大臣进入决赛。\n（点击开始决赛。）";
    对话.an.onPress = function ()
    {
        var __reg4 = 排名面板.a0.属性;
        var __reg3 = 排名面板.a1.属性;
        单挑程序(__reg4, __reg3);
        对话.文本.text = "比赛胜负已分";
        _root.单挑位置 = {位置: 排名面板.b0, 颜色: "FFFFCC"};
        对话.an.onPress = function ()
        {
            对话.文本.text = _root.单挑胜负判断;
            对话.an.onPress = function ()
            {
                var __reg4 = 排名面板.a2.属性;
                var __reg3 = 排名面板.a3.属性;
                单挑程序(__reg4, __reg3);
                对话.文本.text = "比赛胜负已分";
                _root.单挑位置 = {位置: 排名面板.b1, 颜色: "FFFFCC"};
                对话.an.onPress = function ()
                {
                    对话.文本.text = _root.单挑胜负判断;
                    对话.an.onPress = function ()
                    {
                        对话.文本.text = _root.单挑胜负判断;
                        对话.an.onPress = function ()
                        {
                            var __reg4 = 排名面板.a4.属性;
                            var __reg3 = 排名面板.a5.属性;
                            单挑程序(__reg4, __reg3);
                            对话.文本.text = "比赛胜负已分";
                            _root.单挑位置 = {位置: 排名面板.b2, 颜色: "FFFFCC"};
                            对话.an.onPress = function ()
                            {
                                对话.文本.text = _root.单挑胜负判断;
                                对话.an.onPress = function ()
                                {
                                    对话.文本.text = _root.单挑胜负判断;
                                    对话.an.onPress = function ()
                                    {
                                        var __reg4 = 排名面板.a6.属性;
                                        var __reg3 = 排名面板.a7.属性;
                                        单挑程序(__reg4, __reg3);
                                        对话.文本.text = "比赛胜负已分";
                                        _root.单挑位置 = {位置: 排名面板.b3, 颜色: "FFFFCC"};
                                        对话.an.onPress = function ()
                                        {
                                            对话.文本.text = _root.单挑胜负判断;
                                            对话.an.onPress = function ()
                                            {
                                                对话.文本.text = "进入四强赛。";
                                                对话.an.onPress = function ()
                                                {
                                                    var __reg4 = 排名面板.b0.属性;
                                                    var __reg3 = 排名面板.b1.属性;
                                                    单挑程序(__reg4, __reg3);
                                                    对话.文本.text = "比赛胜负已分";
                                                    _root.单挑位置 = {位置: 排名面板.c0, 颜色: "FFFF00"};
                                                    对话.an.onPress = function ()
                                                    {
                                                        对话.文本.text = _root.单挑胜负判断;
                                                        对话.an.onPress = function ()
                                                        {
                                                            var __reg4 = 排名面板.b2.属性;
                                                            var __reg3 = 排名面板.b3.属性;
                                                            单挑程序(__reg4, __reg3);
                                                            对话.文本.text = "比赛胜负已分";
                                                            _root.单挑位置 = {位置: 排名面板.c1, 颜色: "FFFF00"};
                                                            对话.an.onPress = function ()
                                                            {
                                                                对话.文本.text = _root.单挑胜负判断;
                                                                对话.an.onPress = function ()
                                                                {
                                                                    对话.文本.text = "进入决赛";
                                                                    对话.an.onPress = function ()
                                                                    {
                                                                        var __reg4 = 排名面板.c0.属性;
                                                                        var __reg3 = 排名面板.c1.属性;
                                                                        单挑程序(__reg4, __reg3);
                                                                        对话.文本.text = "比赛胜负已分";
                                                                        _root.单挑位置 = {位置: 排名面板.d0, 颜色: "ccccff"};
                                                                        对话.an.onPress = function ()
                                                                        {
                                                                            对话.文本.text = _root.单挑胜负判断;
                                                                            对话.an.onPress = function ()
                                                                            {
                                                                                对话.文本.text = "结束了，" + 排名面板.d0.属性.名字 + "获得第一。\n" + 排名面板.d0.属性.名字 + "大人果然神勇。";
                                                                                对话.an.onPress = function ()
                                                                                {
                                                                                    var __reg2 = 比赛.attachMovie("比赛奖励面板", "比赛奖励面板", 80000, {_x: 0, _y: 0});
                                                                                    __reg2.文0.text = "一盒银子";
                                                                                    __reg2.文1.text = "一箱银子";
                                                                                    __reg2.文2.text = "蓝色战袍";
                                                                                    __reg2.文3.text = "红色战袍";
                                                                                    __reg2.an0.onPress = function ()
                                                                                    {
                                                                                        国家.金钱 = 国家.金钱 - 5000;
                                                                                        排名面板.d0.属性.忠诚 = 排名面板.d0.属性.忠诚 + 5;
                                                                                        if (排名面板.d0.属性.忠诚 > 100) 
                                                                                        {
                                                                                            排名面板.d0.属性.忠诚 = 100;
                                                                                        }
                                                                                        _root.烧掉截图(_root);
                                                                                        比赛.removeMovieClip();
                                                                                        更新资料();
                                                                                    }
                                                                                    ;
                                                                                    __reg2.an1.onPress = function ()
                                                                                    {
                                                                                        国家.金钱 = 国家.金钱 - 10000;
                                                                                        排名面板.d0.属性.忠诚 = 排名面板.d0.属性.忠诚 + 10;
                                                                                        if (排名面板.d0.属性.忠诚 > 100) 
                                                                                        {
                                                                                            排名面板.d0.属性.忠诚 = 100;
                                                                                        }
                                                                                        _root.烧掉截图(_root);
                                                                                        比赛.removeMovieClip();
                                                                                        更新资料();
                                                                                    }
                                                                                    ;
                                                                                    __reg2.an2.onPress = function ()
                                                                                    {
                                                                                        国家.金钱 = 国家.金钱 - 20000;
                                                                                        排名面板.d0.属性.忠诚 = 排名面板.d0.属性.忠诚 + 15;
                                                                                        if (排名面板.d0.属性.忠诚 > 100) 
                                                                                        {
                                                                                            排名面板.d0.属性.忠诚 = 100;
                                                                                        }
                                                                                        _root.烧掉截图(_root);
                                                                                        比赛.removeMovieClip();
                                                                                        更新资料();
                                                                                    }
                                                                                    ;
                                                                                    __reg2.an3.onPress = function ()
                                                                                    {
                                                                                        国家.金钱 = 国家.金钱 - 40000;
                                                                                        排名面板.d0.属性.忠诚 = 排名面板.d0.属性.忠诚 + 20;
                                                                                        if (排名面板.d0.属性.忠诚 > 100) 
                                                                                        {
                                                                                            排名面板.d0.属性.忠诚 = 100;
                                                                                        }
                                                                                        _root.烧掉截图(_root);
                                                                                        比赛.removeMovieClip();
                                                                                        更新资料();
                                                                                    }
                                                                                    ;
                                                                                    __reg2.文本.text = "要给" + 排名面板.d0.属性.名字 + "什么样的奖励呢？";
                                                                                    模糊特效(排名面板);
                                                                                    模糊特效(比赛.ff);
                                                                                    模糊特效(对话);
                                                                                }
                                                                                ;
                                                                            }
                                                                            ;
                                                                        }
                                                                        ;
                                                                    }
                                                                    ;
                                                                }
                                                                ;
                                                            }
                                                            ;
                                                        }
                                                        ;
                                                    }
                                                    ;
                                                }
                                                ;
                                            }
                                            ;
                                        }
                                        ;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 除夕之夜比赛()
{
    缓动黑幕();
    var 列表 = [];
    var __reg2 = 0;
    while (__reg2 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg2].名字 !== undefined) 
        {
            列表.push({称呼: 主角.后宫[__reg2].称呼, 名字: 主角.后宫[__reg2].名字});
        }
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n一年又一年，处处皑皑飘雪。\n除夕之夜，皇后携众妃子想为皇上举办一场辞旧迎新活动。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        if (列表.length < 10) 
        {
            对象.太监.人.gotoAndStop(1);
            对象.太监.文本.htmlText = "妃子数量太少，好像不足以举办比赛。";
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
            return;
        }
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "皇上您想办什么样子的比赛呢？";
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = _root.attachMovie("比赛项目", "比赛项目", 73000, {_x: 0, _y: 0});
            __reg2.标题.text = "除夕之夜活动";
            开始比赛吧(__reg2, 列表);
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "活动结束了。\n妃子们都玩得很开心。";
            对象.太监.继续.onPress = function ()
            {
                _root.主角.快乐 = _root.主角.快乐 + 20;
                if (_root.主角.快乐 > 100) 
                {
                    _root.主角.快乐 = 100;
                }
                更新资料();
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 丰收大典比赛()
{
    缓动黑幕();
    var 列表 = [];
    var __reg2 = 0;
    while (__reg2 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg2].名字 !== undefined) 
        {
            列表.push({称呼: 主角.后宫[__reg2].称呼, 名字: 主角.后宫[__reg2].名字});
        }
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n秋季，大地丰收。皇后想为皇上举办一场丰收比赛活动。\n以庆丰收之喜。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        if (列表.length < 10) 
        {
            对象.太监.人.gotoAndStop(1);
            对象.太监.文本.htmlText = "妃子数量太少，好像不足以举办比赛。";
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
            return;
        }
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "皇上您想办什么样子的比赛呢？";
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = _root.attachMovie("比赛项目", "比赛项目", 73000, {_x: 0, _y: 0});
            __reg2.标题.text = "丰收大典活动";
            开始比赛吧(__reg2, 列表);
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "活动结束了。\n妃子们都玩得很开心。";
            对象.太监.继续.onPress = function ()
            {
                _root.主角.快乐 = _root.主角.快乐 + 20;
                if (_root.主角.快乐 > 100) 
                {
                    _root.主角.快乐 = 100;
                }
                更新资料();
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 荷风夏月比赛()
{
    缓动黑幕();
    var 列表 = [];
    var __reg2 = 0;
    while (__reg2 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg2].名字 !== undefined) 
        {
            列表.push({称呼: 主角.后宫[__reg2].称呼, 名字: 主角.后宫[__reg2].名字});
        }
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n夏日闷热，皇后想在湖畔给皇上举办一场比赛。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        if (列表.length < 10) 
        {
            对象.太监.人.gotoAndStop(1);
            对象.太监.文本.htmlText = "妃子数量太少，好像不足以举办比赛。";
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
            return;
        }
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "皇上您想办什么样子的比赛呢？";
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = _root.attachMovie("比赛项目", "比赛项目", 73000, {_x: 0, _y: 0});
            __reg2.标题.text = "荷风夏月活动";
            开始比赛吧(__reg2, 列表);
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "活动结束了。\n妃子们都玩得很开心。";
            对象.太监.继续.onPress = function ()
            {
                _root.主角.快乐 = _root.主角.快乐 + 20;
                if (_root.主角.快乐 > 100) 
                {
                    _root.主角.快乐 = 100;
                }
                更新资料();
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 太后大寿比赛()
{
    缓动黑幕();
    var 列表 = [];
    var __reg2 = 0;
    while (__reg2 < 主角.后宫.length) 
    {
        if (主角.后宫[__reg2].名字 !== undefined) 
        {
            列表.push({称呼: 主角.后宫[__reg2].称呼, 名字: 主角.后宫[__reg2].名字});
        }
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上。\n太后大寿在即，太后想举办一次妃子比赛助兴。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        if (列表.length < 10) 
        {
            对象.太监.人.gotoAndStop(1);
            对象.太监.文本.htmlText = "妃子数量太少，好像不足以举办比赛。";
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
            return;
        }
        对象.太监.人.gotoAndStop(2);
        对象.太监.文本.htmlText = "皇上您想办什么样子的比赛呢？";
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = _root.attachMovie("比赛项目", "比赛项目", 73000, {_x: 0, _y: 0});
            __reg2.标题.text = "太后寿宴活动";
            开始比赛吧(__reg2, 列表);
            对象.太监.人.gotoAndStop(4);
            对象.太监.文本.htmlText = "活动结束了。\n妃子们都玩得很开心。";
            对象.太监.继续.onPress = function ()
            {
                _root.主角.快乐 = _root.主角.快乐 + 20;
                if (_root.主角.快乐 > 100) 
                {
                    _root.主角.快乐 = 100;
                }
                更新资料();
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 开始比赛吧(比赛, 列表)
{
    var 按钮 = [];
    var __reg5 = 0;
    var __reg7 = [];
    __reg7.push({id: 0, 名称: "刺绣", 解释: "考验心灵手巧，由针工局主审。"});
    __reg7.push({id: 1, 名称: "巧厨", 解释: "由御膳房大厨主审，考验烹饪技术。"});
    __reg7.push({id: 2, 名称: "投壶", 解释: "将弓箭丢入十步之外的壶中，以数量评判。"});
    __reg7.push({id: 3, 名称: "对联", 解释: "由大学士出题，对联巧妙者获胜。"});
    __reg7.push({id: 4, 名称: "吟诗", 解释: "皇上出题，诗意优美者胜出。"});
    __reg7.push({id: 5, 名称: "作画", 解释: "皇上出题，画面构思巧妙，手法利落者夺冠。"});
    __reg7.push({id: 6, 名称: "书法", 解释: "现场书写前人诗篇一副，由大学士评审。"});
    __reg7.push({id: 7, 名称: "骑马", 解释: "考验骑术各种技能动作，由殿前将军主审。"});
    __reg7.push({id: 8, 名称: "射箭", 解释: "考验弓箭掌握能力，五十步之外移动靶，射中点数多者胜出。"});
    __reg7.push({id: 9, 名称: "唱曲", 解释: "各地小调名曲竞赛，宫廷乐师长主审。"});
    __reg7.push({id: 10, 名称: "赛狗", 解释: "赛狗。进行压注小狗，最后奖金最多者获胜。"});
    __reg7.push({id: 11, 名称: "舞蹈", 解释: "舞蹈大赛，各自表演一套舞蹈。由乐师长主审。"});
    __reg7.push({id: 12, 名称: "掰腕", 解释: "坐桌子两侧掰弯，三局两胜。淘汰赛。"});
    __reg7.push({id: 13, 名称: "围棋", 解释: "围棋大赛，胜点最多者获胜。"});
    __reg7.push({id: 14, 名称: "踢毽", 解释: "踢毽大赛，按最高连续踢中次数评判。"});
    __reg7.push({id: 15, 名称: "角抵", 解释: "一种类似相扑摔跤的比赛，淘汰赛。"});
    __reg7.push({id: 16, 名称: "灯谜", 解释: "猜灯谜，淘汰赛。"});
    __reg7.push({id: 17, 名称: "杆球", 解释: "一种用杆子打球的比赛，先入对方门洞十次者可淘汰对方。"});
    __reg7.push({id: 18, 名称: "礼仪", 解释: "评判礼仪修养，由礼教司主审。"});
    __reg7.push({id: 19, 名称: "剑舞", 解释: "带剑表演舞蹈，由乐师长主审。"});
    var 解释框 = 比赛.attachMovie("解释框", "解释框", 2000, {_x: 0, _y: 300});
    解释框._x = (640 - 解释框._width) / 2;
    var __reg4 = 0;
    for (;;) 
    {
        if (__reg4 >= 5) 
        {
            return;
        }
        var __reg6 = 0;
        while (__reg6 < 4) 
        {
            var __reg3 = 比赛.attachMovie("补助小条", "补助小条" + __reg5, __reg5 + 200, {_x: 65 + __reg4 * 100, _y: 70 + __reg6 * 48});
            __reg3.文本.text = __reg7[__reg5].名称;
            __reg3.名称 = __reg7[__reg5].名称;
            __reg3.说明 = __reg7[__reg5].解释;
            __reg3.an.onRollOut = function ()
            {
                解释框.文本.text = "规则：\n";
            }
            ;
            __reg3.an.onRollOver = function ()
            {
                解释框.文本.text = this._parent.说明;
            }
            ;
            __reg3.an.onPress = function ()
            {
                _root.烧掉截图(_root);
                解释框.removeMovieClip();
                进入比赛得奖(比赛, 列表, this._parent.名称);
                var __reg3 = 0;
                for (;;) 
                {
                    if (__reg3 >= 按钮.length) 
                    {
                        return;
                    }
                    按钮[__reg3].removeMovieClip();
                    ++__reg3;
                }
            }
            ;
            按钮.push(__reg3);
            ++__reg5;
            ++__reg6;
        }
        ++__reg4;
    }
}
function 进入比赛得奖(比赛, 列表, 名称)
{
    比赛.标题.text = 名称 + " 排名表";
    列表.sort(打乱数组程序);
    var __reg2 = 0;
    while (__reg2 < 列表.length) 
    {
        ++__reg2;
    }
    var __reg7 = ["a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "b0", "b1", "b2", "b3", "c0", "c1", "d0"];
    var 排名面板 = 比赛.attachMovie("排名面板", "排名面板", 8000, {_x: 0, _y: 0});
    __reg2 = 0;
    while (__reg2 < __reg7.length) 
    {
        排名面板[__reg7[__reg2]]._alpha = 0;
        ++__reg2;
    }
    var __reg6 = 0;
    __reg2 = 0;
    while (__reg2 < 8) 
    {
        var __reg4 = 列表[__reg2];
        var __reg3 = 排名面板.attachMovie("加载的比赛板子", "加载的比赛板子" + __reg6, __reg6 + 8000, {_x: 排名面板["a" + __reg2]._x, _y: 排名面板["a" + __reg2]._y});
        __reg3.版 = 排名面板["a" + __reg2];
        __reg3.版.属性 = __reg4;
        __reg3.文本.html = true;
        __reg3.属性 = __reg4;
        __reg3.文本.htmlText = 颜色代码(__reg4.称呼, "FFCC00") + "\n" + 颜色代码(__reg4.名字, "ffffff");
        ++__reg6;
        ++__reg2;
    }
    排名面板.序列 = 20;
    var 对话 = 比赛.attachMovie("对话框面板", "对话框面板", 12000, {_x: 480, _y: 420});
    对话._x = (640 - 对话._width) / 2;
    对话.文本.text = 列表[0].称呼 + "," + 列表[1].称呼 + "," + 列表[2].称呼 + "," + 列表[3].称呼 + "," + 列表[4].称呼 + "," + 列表[5].称呼 + "," + 列表[6].称呼 + "," + 列表[7].称呼 + ",八位娘娘进入决赛。\n（点击开始决赛。）";
    对话.an.onPress = function ()
    {
        var __reg3 = 妃子比赛获胜的执行(排名面板, "b0", "a0", "a1", "FFFFCC");
        对话.文本.text = __reg3;
        对话.an.onPress = function ()
        {
            var __reg3 = 妃子比赛获胜的执行(排名面板, "b1", "a2", "a3", "FFFFCC");
            对话.文本.text = __reg3;
            对话.an.onPress = function ()
            {
                var __reg3 = 妃子比赛获胜的执行(排名面板, "b2", "a4", "a5", "FFFFCC");
                对话.文本.text = __reg3;
                对话.an.onPress = function ()
                {
                    var __reg3 = 妃子比赛获胜的执行(排名面板, "b3", "a6", "a7", "FFFFCC");
                    对话.文本.text = __reg3;
                    对话.an.onPress = function ()
                    {
                        对话.文本.text = "进入四强赛。";
                        对话.an.onPress = function ()
                        {
                            var __reg3 = 妃子比赛获胜的执行(排名面板, "c0", "b0", "b1", "FFFF00");
                            对话.文本.text = __reg3;
                            对话.an.onPress = function ()
                            {
                                var __reg3 = 妃子比赛获胜的执行(排名面板, "c1", "b2", "b3", "FFFF00");
                                对话.文本.text = __reg3;
                                对话.an.onPress = function ()
                                {
                                    对话.文本.text = "进入决赛。";
                                    对话.an.onPress = function ()
                                    {
                                        var __reg3 = 妃子比赛获胜的执行(排名面板, "d0", "c0", "c1", "FF99FF");
                                        对话.文本.text = __reg3;
                                        对话.an.onPress = function ()
                                        {
                                            对话.文本.text = "结束了，" + 排名面板.d0.属性.称呼 + 排名面板.d0.属性.名字 + "获得第一。\n" + 排名面板.d0.属性.称呼 + "娘娘真是多才多艺，皇上准备赐予什么样的奖励。";
                                            对话.an.onPress = function ()
                                            {
                                                var __reg2 = 比赛.attachMovie("比赛奖励面板", "比赛奖励面板", 80000, {_x: 0, _y: 0});
                                                __reg2.文0.text = "一盒银子";
                                                __reg2.文1.text = "一箱珠宝";
                                                __reg2.文2.text = "珍珠外套";
                                                __reg2.文3.text = "锦绣凤袍";
                                                __reg2.an0.onPress = function ()
                                                {
                                                    国家.金钱 = 国家.金钱 - 10000;
                                                    _root.烧掉截图(_root);
                                                    比赛.removeMovieClip();
                                                    更新资料();
                                                }
                                                ;
                                                __reg2.an1.onPress = function ()
                                                {
                                                    国家.金钱 = 国家.金钱 - 20000;
                                                    _root.烧掉截图(_root);
                                                    比赛.removeMovieClip();
                                                    更新资料();
                                                }
                                                ;
                                                __reg2.an2.onPress = function ()
                                                {
                                                    国家.金钱 = 国家.金钱 - 30000;
                                                    _root.烧掉截图(_root);
                                                    比赛.removeMovieClip();
                                                    更新资料();
                                                }
                                                ;
                                                __reg2.an3.onPress = function ()
                                                {
                                                    国家.金钱 = 国家.金钱 - 50000;
                                                    _root.烧掉截图(_root);
                                                    比赛.removeMovieClip();
                                                    更新资料();
                                                }
                                                ;
                                                __reg2.文本.text = "要给" + 排名面板.d0.属性.称呼 + "娘娘什么样的奖励呢？";
                                                模糊特效(排名面板);
                                                模糊特效(比赛.ff);
                                                模糊特效(对话);
                                            }
                                            ;
                                        }
                                        ;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 妃子比赛获胜的执行(排名面板, 位置, A, B, 颜色)
{
    var __reg8 = 排名面板[A].属性;
    var __reg7 = 排名面板[B].属性;
    var __reg10 = random(2);
    if (__reg10 == 1) 
    {
        __reg1 = __reg8;
        __reg6 = __reg7;
    }
    else 
    {
        var __reg1 = __reg7;
        var __reg6 = __reg8;
    }
    var __reg3 = "";
    var __reg4 = random(5);
    if (__reg4 == 0) 
    {
        __reg3 = __reg6.称呼 + " " + __reg6.名字 + " 差一点点，好可惜。失败了。";
    }
    else if (__reg4 == 1) 
    {
        __reg3 = __reg1.称呼 + " " + __reg1.名字 + " 遥遥领先，对手不堪一击。";
    }
    else if (__reg4 == 2) 
    {
        __reg3 = __reg1.称呼 + " " + __reg1.名字 + " 后来居上，成功逆转败局。";
    }
    else if (__reg4 == 3) 
    {
        __reg3 = __reg1.称呼 + " " + __reg1.名字 + " 状态极佳，直接胜过对手。";
    }
    else if (__reg4 == 4) 
    {
        __reg3 = __reg6.称呼 + " " + __reg6.名字 + " 完败。";
    }
    __reg3 = __reg3 + ("\n" + __reg1.名字 + "胜出。");
    var __reg5 = 排名面板.attachMovie("加载的比赛板子", "加载的比赛板子" + 排名面板.序列, 排名面板.序列 + 8000, {_x: 排名面板[位置]._x, _y: 排名面板[位置]._y});
    __reg5.版 = 排名面板[位置];
    __reg5.版.属性 = __reg1;
    __reg5.文本.html = true;
    __reg5.文本.htmlText = 颜色代码(__reg1.称呼, "FFCC00") + "\n" + 颜色代码(__reg1.名字, 颜色);
    ++排名面板.序列;
    return __reg3;
}
function 战争例行消耗(取报告, 参数)
{
    if (取报告.士兵 < 0) 
    {
        取报告.士兵 = 0;
    }
    var __reg2 = 取报告.士兵上限 - 取报告.士兵;
    if (__reg2 < 0) 
    {
        __reg2 = 0;
    }
    if (参数 == 1) 
    {
        __reg5 = __reg2 * 3;
    }
    else 
    {
        var __reg5 = __reg2 * 6;
    }
    var __reg3 = 取报告.士兵 / 取报告.士兵上限;
    取报告.朴刀 = Math.round(取报告.朴刀 * __reg3);
    取报告.皮甲 = Math.round(取报告.皮甲 * __reg3);
    取报告.战马 = Math.round(取报告.战马 * __reg3);
    取报告.铁炮 = Math.round(取报告.铁炮 * __reg3);
    国家.士兵 = 国家.士兵 + 取报告.士兵;
    国家.朴刀 = 国家.朴刀 + 取报告.朴刀;
    国家.皮甲 = 国家.皮甲 + 取报告.皮甲;
    国家.战马 = 国家.战马 + 取报告.战马;
    国家.铁炮 = 国家.铁炮 + 取报告.铁炮;
    国家.金钱 = 国家.金钱 - __reg5;
    更新资料();
    var __reg4 = {};
    __reg4.死伤多少人 = __reg2;
    __reg4.需要多少抚恤金 = __reg5;
    return __reg4;
}
function 战争战报事件()
{
    var 取报告 = _root.战争战报记录;
    var 反馈数值 = 战争例行消耗(取报告);
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(23);
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "皇上，" + 取报告.战斗地点.名称 + "之战的战报已经送到。\n(详细战报可参见军事奏折)";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        if (取报告.胜负 == 0) 
        {
            对象.太监.文本.htmlText = "战争异常激烈，我军全军覆没。";
            记录大事件的程序(颜色代码(取报告.战斗地点.名称 + "之战异常激烈，我军全军覆没。", "ff0000"));
            对象.太监.人.gotoAndStop(8);
        }
        else if (取报告.胜负 == 1) 
        {
            对象.太监.文本.htmlText = "全军将士英勇杀敌，我军获胜。";
            记录大事件的程序(颜色代码(取报告.战斗地点.名称 + "之战全军将士英勇杀敌，我军获胜。", "ff0000"));
            对象.太监.人.gotoAndStop(2);
            取报告.战斗地点.归属 = 8;
            取报告.士兵 = random(30000) + 30000;
            创建人才("知府", 3, 取报告.战斗地点);
            创建人才("总兵", 3, 取报告.战斗地点);
            更新所有主要职位的人();
            刷新阵营几城的程序();
        }
        else if (取报告.胜负 == 2) 
        {
            对象.太监.文本.htmlText = "战争异常激烈，将士也是拼命杀敌。\n战争难解难分，暂时陷入停战状态。";
            记录大事件的程序(颜色代码(取报告.战斗地点.名称 + "之战异常激烈，将士也是拼命杀敌。\n战争难解难分，暂时陷入停战状态。", "ff0000"));
            对象.太监.人.gotoAndStop(5);
        }
        对象.太监.继续.onPress = function ()
        {
            加载进步动画条的说("金钱");
            if (取报告.胜负 == 0) 
            {
                加载进步动画条的说("快乐");
                加载进步动画条的说("威望");
                主角.快乐 = 主角.快乐 - 20;
                主角.威望 = 主角.威望 - 2;
                记录大事件的程序(颜色代码(取报告.战斗地点.名称 + "之战失败。", "0000ff"));
            }
            else if (取报告.胜负 == 1) 
            {
                加载进步动画条的说("快乐");
                加载进步动画条的说("威望");
                主角.快乐 = 主角.快乐 + 20;
                主角.威望 = 主角.威望 + 50;
                记录大事件的程序(颜色代码(取报告.战斗地点.名称 + "之战胜利。", "0000ff"));
            }
            else if (取报告.胜负 == 2) 
            {
                记录大事件的程序(颜色代码(取报告.战斗地点.名称 + "之战不分胜负。", "0000ff"));
            }
            更新资料();
            对象.太监.文本.htmlText = "本次战争斩杀敌人" + 取报告.斩杀 + "名,我军伤亡将士" + 反馈数值.死伤多少人 + "名，国库需支出抚恤金" + 反馈数值.需要多少抚恤金 + "两。\n返回京城的的部队有" + 取报告.士兵 + "名，朴刀" + 取报告.朴刀 + "把，皮甲" + 取报告.皮甲 + "件，战马" + 取报告.战马 + "匹，铁炮" + 取报告.铁炮 + "门。\n";
            对象.太监.人.gotoAndStop(4);
            对象.太监.继续.onPress = function ()
            {
                if (取报告.胜负 == 1) 
                {
                    对象.太监.继续.onPress = function ()
                    {
                    }
                    ;
                    对象.太监.文本.htmlText = "";
                    var 俘虏 = _root.attachMovie("俘虏面板", "俘虏面板", 321212, {_x: 0, _y: 0});
                    var 俘虏数量 = Math.round(Number(取报告.敌人总士兵) * 0.01);
                    俘虏.文本.text = "本次战役共俘获" + 取报告.战斗地点.名称 + "兵" + 俘虏数量 + "名。";
                    if (random(3) == 1) 
                    {
                        var __reg2 = 来一个宝贝();
                        俘虏.文本.text = 俘虏.文本.text + ("\n并获得一件珍宝“" + __reg2 + "”。");
                    }
                    俘虏.太监.gotoAndStop(4);
                    俘虏.对话.文本.text = "战斗中抓获的俘虏，皇上想如何处置。";
                    俘虏.attachMovie("通用按钮", "遣返家园", 6002, {_x: 100, _y: 320});
                    俘虏.attachMovie("通用按钮", "午门斩首", 6003, {_x: 200, _y: 320});
                    俘虏.attachMovie("通用按钮", "教化为民", 6004, {_x: 300, _y: 320});
                    俘虏.遣返家园.文本.text = "遣返家园";
                    俘虏.午门斩首.文本.text = "午门斩首";
                    俘虏.教化为民.文本.text = "教化为民";
                    俘虏.遣返家园.按.onPress = function ()
                    {
                        主角.道德 = 主角.道德 + 15;
                        取报告.战斗地点.人口 = 取报告.战斗地点.人口 + 俘虏数量;
                        俘虏.遣返家园._visible = false;
                        俘虏.午门斩首._visible = false;
                        俘虏.教化为民._visible = false;
                        俘虏.俘虏图.gotoAndStop(3);
                        俘虏.太监.gotoAndStop(4);
                        俘虏.对话.文本.text = "是，立即将俘虏送回" + 取报告.战斗地点.名称 + "。";
                        俘虏消失程序(俘虏, 对象, 取报告.战斗地点);
                    }
                    ;
                    俘虏.教化为民.按.onPress = function ()
                    {
                        俘虏.俘虏图.gotoAndStop(2);
                        俘虏.遣返家园._visible = false;
                        俘虏.午门斩首._visible = false;
                        俘虏.教化为民._visible = false;
                        俘虏.太监.gotoAndStop(4);
                        俘虏.对话.文本.text = "是，即刻令知府前来领这些" + 取报告.战斗地点.名称 + "俘虏。";
                        俘虏消失程序(俘虏, 对象, 取报告.战斗地点);
                    }
                    ;
                    俘虏.午门斩首.按.onPress = function ()
                    {
                        主角.暴戾 = 主角.暴戾 + 15;
                        俘虏.遣返家园._visible = false;
                        俘虏.午门斩首._visible = false;
                        俘虏.教化为民._visible = false;
                        俘虏.俘虏图.gotoAndStop(4);
                        俘虏.太监.gotoAndStop(4);
                        俘虏.对话.文本.text = "这么多" + 取报告.战斗地点.名称 + "兵，估计要杀上好几天。";
                        俘虏消失程序(俘虏, 对象, 取报告.战斗地点);
                    }
                    ;
                    俘虏.俘虏图.gotoAndStop(1);
                    return;
                }
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 俘虏消失程序(俘虏, 对象, 战斗地点)
{
    主角.快乐 = 主角.快乐 + 40;
    更新资料();
    结束固定事件程序(对象);
    俘虏.时间 = 0;
    判定城里是否有美女(战斗地点);
    俘虏.onEnterFrame = function ()
    {
        ++this.时间;
        if (this.时间 > 60) 
        {
            this._alpha = this._alpha - 10;
            if (this._alpha <= 10) 
            {
                this.removeMovieClip();
            }
        }
    }
    ;
}
function 判定城里是否有美女(战斗城市)
{
    if (战斗城市.妃子开关 == 0) 
    {
        if (战斗城市.id == 22) 
        {
            出现外域美人(0, 战斗城市);
        }
        else if (战斗城市.id == 26) 
        {
            var __reg2 = random(3);
            if (__reg2 == 0) 
            {
                出现外域美人(1, 战斗城市);
            }
            else if (__reg2 == 1) 
            {
                出现外域美人(11, 战斗城市);
            }
            else if (__reg2 == 2) 
            {
                出现外域美人(12, 战斗城市);
            }
        }
        else if (战斗城市.id == 23) 
        {
            出现外域美人(2, 战斗城市);
        }
        else if (战斗城市.id == 10) 
        {
            出现外域美人(3, 战斗城市);
        }
        else if (战斗城市.id == 0) 
        {
            出现外域美人(10, 战斗城市);
        }
        else if (战斗城市.id == 1) 
        {
            出现外域美人(9, 战斗城市);
        }
        else if (战斗城市.id == 21) 
        {
            出现外域美人(8, 战斗城市);
        }
        else if (战斗城市.id == 12) 
        {
            出现外域美人(15, 战斗城市);
        }
        else if (战斗城市.id == 6) 
        {
            出现外域美人(7, 战斗城市);
        }
        else if (战斗城市.id == 5) 
        {
            出现外域美人(6, 战斗城市);
        }
        else if (战斗城市.id == 11) 
        {
            出现外域美人(5, 战斗城市);
        }
        else if (战斗城市.id == 29) 
        {
            出现外域美人(4, 战斗城市);
        }
        else if (战斗城市.id == 7) 
        {
            出现外域美人(13, 战斗城市);
        }
        else if (战斗城市.id == 4) 
        {
            出现外域美人(14, 战斗城市);
        }
        return;
    }
}
function 出现外域美人(对象, 战斗城市)
{
    战斗城市.妃子开关 = 1;
    var 取数据 = 外域美人[对象];
    _root.图库.外域美女图.gotoAndStop(取数据.跳);
    var 外域美人图 = _root.attachMovie("外域美人图", "外域美人图", 128020, {_x: 0, _y: 0});
    图形拷贝程序(_root.图库.外域美女图, 外域美人图.图);
    外域美人图.名字.text = 取数据.名称;
    外域美人图.文本.text = "外貌：" + 取数据.能力;
    外域美人图.文本.text = 外域美人图.文本.text + "\n\n";
    外域美人图.文本.text = 外域美人图.文本.text + 取数据.介绍;
    外域美人图.a0.文本.text = "入教坊司";
    外域美人图.a1.文本.text = "遣返家乡";
    外域美人图.a2.文本.text = "直接处死";
    外域美人图.a3.文本.text = "纳入后宫";
    外域美人图.a0.按.onPress = function ()
    {
        出圣旨(取数据.名称 + "敌国之妃。择日将" + 取数据.名称 + "送入教坊司悉心调教。");
        _root.主角.暴戾 = _root.主角.暴戾 + 5;
        更新资料();
        外域美人图.removeMovieClip();
    }
    ;
    外域美人图.a1.按.onPress = function ()
    {
        出圣旨("虽是敌国之妃，但总是战争无辜之人。命御林军选一头领，送" + 取数据.名称 + "返回故乡。");
        _root.主角.道德 = _root.主角.道德 + 10;
        更新资料();
        外域美人图.removeMovieClip();
    }
    ;
    外域美人图.a2.按.onPress = function ()
    {
        出圣旨(取数据.名称 + "敌国之妃。即刻将" + 取数据.名称 + "送至午门斩首，扬我天朝国威。");
        _root.主角.暴戾 = _root.主角.暴戾 + 10;
        更新资料();
        外域美人图.removeMovieClip();
    }
    ;
    外域美人图.a3.按.onPress = function ()
    {
        外域美人后宫册封(取数据);
        _root.主角.道德 = _root.主角.道德 + 5;
        更新资料();
        外域美人图.removeMovieClip();
    }
    ;
    外域美人图._alpha = 0;
    外域美人图.onEnterFrame = function ()
    {
        this._alpha = this._alpha + 10;
        if (this._alpha >= 100) 
        {
            delete this.onEnterFrame;
        }
    }
    ;
}
function 外域美人后宫册封(对象)
{
    对象.年龄 = 19;
    对象.爱 = 100;
    对象.经验 = random(100);
    对象.称呼 = "宫女";
    对象.名字 = 对象.名称;
    对象.头像 = 0;
    对象.特殊头像 = 对象.跳;
    对象.孕 = 0;
    对象.病 = 0;
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
                    给她什么名号好呢(对象, this._parent.属性, 1);
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
function 各种药材增加()
{
    var __reg1 = random(所有药材.length);
    所有药材[__reg1].数量 = 所有药材[__reg1].数量 + 1;
}
function 各地赠送贡品事件()
{
    缓动黑幕();
    var __reg2 = 0;
    while (__reg2 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg2].归属 == 8) 
        {
            if (random(2) == 0) 
            {
                var __reg3 = _root.所有城池[__reg2].名称 + "送来珍贵药材和其他贡品。";
                _root.每月的官员奏折.push(__reg3);
                各种药材增加();
            }
        }
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < _root.阵营.length) 
    {
        if (_root.阵营[__reg2].外交 == 7) 
        {
            if (random(3) == 0) 
            {
                var __reg4 = 来一个宝贝();
                __reg3 = _root.阵营[__reg2].名称 + "进贡了珍贵的药材品。\n还有一件珍品“" + __reg4 + "”。";
            }
            else 
            {
                __reg3 = _root.阵营[__reg2].名称 + "进贡了珍贵的药材和其他贡品。";
            }
            _root.每月的官员奏折.push(__reg3);
            各种药材增加();
            各种药材增加();
            各种药材增加();
        }
        ++__reg2;
    }
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(21);
    对象.太监.文本.htmlText = "各地的贡品已送达皇宫。";
    记录大事件的程序("各地的贡品已送达皇宫。");
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        结束固定事件程序(对象);
    }
    ;
}
function 刺客行刺事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.背景.gotoAndStop(6);
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(23);
    对象.太监.文本.htmlText = "皇上，皇上。\n一群刺客潜入皇宫。";
    对象.太监.人.gotoAndStop(3);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "御林军正在全力搜捕。";
        对象.太监.人.gotoAndStop(7);
        对象.太监.继续.onPress = function ()
        {
            var __reg2 = random(20);
            if (__reg2 == 1) 
            {
                对象.太监.文本.htmlText = "刺客闯入皇帝寝室，很可惜一刀刺中要害。\n御医赶来已经回天无力了。";
                记录大事件的程序("刺客闯入皇帝寝室，很可惜一刀刺中要害。\n御医赶来已经回天无力了。");
                对象.太监.人.gotoAndStop(3);
                对象.太监.继续.onPress = function ()
                {
                    结束固定事件程序(对象);
                    死亡判定(3);
                }
                ;
                return;
            }
            if (__reg2 < 5) 
            {
                对象.太监.文本.htmlText = "刺客闯入皇帝寝宫。\n幸得御林军及时赶到，皇上受了点轻伤。";
                记录大事件的程序("刺客闯入皇帝寝宫。\n幸得御林军及时赶到，皇上受了点轻伤。");
                对象.太监.人.gotoAndStop(5);
                对象.太监.继续.onPress = function ()
                {
                    _root.出现的固定事件 = [];
                    主角.当前时辰 = 4;
                    时辰推进();
                }
                ;
                return;
            }
            if (__reg2) 
            {
                if (0 != (random(2) == 0) & 0 != _root.主角.武术 > 500) 
                {
                    对象.太监.文本.htmlText = "皇上手持扇子，以一对五。\n将刺客全部拿下。";
                    记录大事件的程序("皇上手持扇子，以一对五。\n将刺客全部拿下。");
                    对象.太监.人.gotoAndStop(7);
                    对象.太监.继续.onPress = function ()
                    {
                        结束固定事件程序(对象);
                    }
                    ;
                    return;
                }
                记录大事件的程序("刺客全被御林军抓住了。\n虚惊一场。");
                对象.太监.文本.htmlText = "刺客全被御林军抓住了。\n虚惊一场。";
                对象.太监.人.gotoAndStop(1);
                对象.太监.继续.onPress = function ()
                {
                    结束固定事件程序(对象);
                }
                ;
            }
        }
        ;
    }
    ;
}
function 城市升级喜报播报()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.人.gotoAndStop(2);
    var 全民庆典 = _root.attachMovie("全民庆典", "全民庆典", 92000, {_x: 0, _y: 0});
    全民庆典.对话.文本.text = "新的极富裕州府诞生了，皇室威望得到了提升。\n各地百姓都在庆祝，感谢皇上的恩典。";
    全民庆典.对话.an.onPress = function ()
    {
        全民庆典.对话.an.onPress = function ()
        {
        }
        ;
        全民庆典.onEnterFrame = function ()
        {
            this._alpha = this._alpha - 10;
            if (this._alpha <= 0) 
            {
                this.removeMovieClip();
            }
        }
        ;
    }
    ;
    主角.威望 = 主角.威望 + 5;
    更新资料();
    对象.太监.文本.htmlText = "有州府发展至极富裕。";
    对象.太监.继续.onPress = function ()
    {
        结束固定事件程序(对象);
    }
    ;
}
function 穷死了结局()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "启禀皇上，官员，将士拖欠将近一年的俸禄。";
    对象.太监.人.gotoAndStop(5);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "国库已经一整年都没进过银子了。";
        对象.太监.人.gotoAndStop(1);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.人.gotoAndStop(5);
            对象.太监.文本.htmlText = "(很遗憾，提前进入结局)";
            对象.太监.继续.onPress = function ()
            {
                死亡判定(4);
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 十年修缮事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(22);
    对象.太监.文本.htmlText = "皇上登基已过十年。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "各地百姓送来上好的建材庆贺。\n皇宫大殿进行修缮。";
        对象.太监.人.gotoAndStop(2);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "(大殿修缮类事件解锁)。";
            记录大事件的程序("大殿第一次修缮。");
            对象.太监.人.gotoAndStop(4);
            对象.太监.继续.onPress = function ()
            {
                _root.主角.大殿 = 2;
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 二十年修缮事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(22);
    对象.太监.文本.htmlText = "皇上登基已过了二十年。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "各地百姓送来上好的建材庆贺。\n皇宫大殿进行修缮。";
        对象.太监.人.gotoAndStop(2);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "大殿好像比以前更好了。";
            记录大事件的程序("大殿第二次修缮。");
            对象.太监.人.gotoAndStop(4);
            对象.太监.继续.onPress = function ()
            {
                _root.主角.大殿 = 3;
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 三十年修缮事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(22);
    对象.太监.文本.htmlText = "皇上登基已过了三十年。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "各地百姓送来上好的建材庆贺。\n皇宫大殿进行修缮。";
        对象.太监.人.gotoAndStop(2);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "大殿被修缮一新。";
            记录大事件的程序("登基三十年，大殿第三次修缮。");
            对象.太监.人.gotoAndStop(4);
            对象.太监.继续.onPress = function ()
            {
                _root.主角.大殿 = 4;
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 东突厥来使事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "皇上，东突厥来使求见。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "现在已在礼明殿。";
        对象.太监.人.gotoAndStop(4);
        对象.太监.继续.onPress = function ()
        {
            var 面板啊 = _root.attachMovie("礼明殿面板", "礼明殿面板", 12012, {_x: 0, _y: 0});
            面板啊.使者0.gotoAndStop(6);
            面板啊.使者1.gotoAndStop(6);
            面板啊.离开.text = "";
            面板啊.按._visible = false;
            面板啊.按.onPress = function ()
            {
            }
            ;
            var 对话框什么 = 面板啊.attachMovie("礼明殿对话", "礼明殿对话", 212, {_x: 0, _y: 0});
            对话框什么.文本.text = "中原王。\n我等奉突厥圣天大可汗之命前来。\n如贵邦能向我突厥进贡2000万两白银和美女百名。\n我国将会考虑改善两国的外交。\n突厥铁骑横扫大半个世界，大可汗让你慎重考虑。";
            面板啊.attachMovie("红色小条", "答应", 600, {_x: 420, _y: 300});
            面板啊.答应.文本.text = "答应";
            面板啊.答应.an.onPress = function ()
            {
                面板啊.答应._visible = false;
                面板啊.拒绝._visible = false;
                对话框什么.文本.text = "中原王果然是个明理之人。\n大可汗定十分愉快。";
                _root.阵营[2].外交 = 3;
                _root.国家.金钱 = _root.国家.金钱 - 20000000;
                _root.主角.威望 = 50;
                _root.主角.快乐 = 60;
                更新资料();
                对话框什么.an.onPress = function ()
                {
                    面板啊.removeMovieClip();
                    对象.太监.文本.htmlText = "皇上做得对，识时务者为俊杰。";
                    记录大事件的程序("我国对突厥进贡2000万两白银。");
                    对象.太监.人.gotoAndStop(1);
                    对象.太监.继续.onPress = function ()
                    {
                        结束固定事件程序(对象);
                    }
                    ;
                }
                ;
            }
            ;
            面板啊.attachMovie("红色小条", "拒绝", 602, {_x: 530, _y: 300});
            面板啊.拒绝.文本.text = "拒绝";
            面板啊.拒绝.an.onPress = function ()
            {
                面板啊.答应._visible = false;
                面板啊.拒绝._visible = false;
                对话框什么.文本.text = "中原王需明白，大汗想取贵国领土如探囊取物。\n好自为知。";
                _root.阵营[2].外交 = 0;
                对话框什么.an.onPress = function ()
                {
                    面板啊.removeMovieClip();
                    对象.太监.文本.htmlText = "皇上做得对，是可忍孰不可忍。";
                    记录大事件的程序("突厥来使威胁，皇上表示不屈服。");
                    对象.太监.人.gotoAndStop(8);
                    对象.太监.继续.onPress = function ()
                    {
                        结束固定事件程序(对象);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 日本来使事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "皇上，日本来使求见。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "现在已在礼明殿。";
        对象.太监.人.gotoAndStop(4);
        对象.太监.继续.onPress = function ()
        {
            var 面板啊 = _root.attachMovie("礼明殿面板", "礼明殿面板", 12012, {_x: 0, _y: 0});
            面板啊.使者0.gotoAndStop(4);
            面板啊.使者1.gotoAndStop(4);
            面板啊.离开.text = "";
            面板啊.按._visible = false;
            面板啊.按.onPress = function ()
            {
            }
            ;
            var 对话框什么 = 面板啊.attachMovie("礼明殿对话", "礼明殿对话", 212, {_x: 0, _y: 0});
            对话框什么.文本.text = "中原王。\n我大和天皇陛下实在不想对贵国用兵。\n如贵国割淮南予我国，可免刀剑冲突。\n这只能让贵国百姓遭殃。";
            面板啊.attachMovie("红色小条", "答应", 600, {_x: 420, _y: 300});
            面板啊.答应.文本.text = "答应";
            面板啊.答应.an.onPress = function ()
            {
                面板啊.答应._visible = false;
                面板啊.拒绝._visible = false;
                对话框什么.文本.text = "中原王果然是个明理之人。\n天皇陛下定十分愉快。";
                _root.阵营[1].外交 = 1;
                _root.主角.威望 = _root.主角.威望 - 100;
                _root.主角.快乐 = _root.主角.快乐 - 10;
                var __reg2 = 获取知府和总兵程序(25);
                删除指定官员的程序(__reg2.知府);
                删除指定官员的程序(__reg2.总兵);
                所有城池[25].归属 = 1;
                生成这个城市的兵力(所有城池[25]);
                更新资料();
                对话框什么.an.onPress = function ()
                {
                    面板啊.removeMovieClip();
                    对象.太监.文本.htmlText = "皇上……\n真的把淮南割出去了?";
                    记录大事件的程序("签订丧权辱国条约。");
                    对象.太监.人.gotoAndStop(1);
                    对象.太监.继续.onPress = function ()
                    {
                        结束固定事件程序(对象);
                    }
                    ;
                }
                ;
            }
            ;
            面板啊.attachMovie("红色小条", "拒绝", 602, {_x: 530, _y: 300});
            面板啊.拒绝.文本.text = "拒绝";
            面板啊.拒绝.an.onPress = function ()
            {
                面板啊.答应._visible = false;
                面板啊.拒绝._visible = false;
                对话框什么.文本.text = "你竟然无视我们天皇陛下的好意。\n好自为知。";
                _root.阵营[1].外交 = 0;
                对话框什么.an.onPress = function ()
                {
                    面板啊.removeMovieClip();
                    对象.太监.文本.htmlText = "皇上，日本乃区区弹丸之地。\n犯我中华,虽远必诛！";
                    记录大事件的程序("日本来使威胁，皇上表示不屈服。");
                    对象.太监.人.gotoAndStop(8);
                    对象.太监.继续.onPress = function ()
                    {
                        结束固定事件程序(对象);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 高丽来使事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(21);
    对象.太监.文本.htmlText = "启禀皇上，高丽来使觐见。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "高丽国希望能成为我国附属国。\n年年对我国进贡，我国需要给予军事保护。";
        对象.太监.人.gotoAndStop(4);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "今日起，高丽国成为我国之附属国。";
            记录大事件的程序("高丽国成为我国之附属国。");
            对象.太监.人.gotoAndStop(2);
            对象.太监.继续.onPress = function ()
            {
                阵营[0].外交 = 7;
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 官员不发放俸禄事件()
{
    var __reg1 = 0;
    while (__reg1 < 所有人才.length) 
    {
        var __reg2 = random(2);
        if (__reg2 == 1) 
        {
            所有人才[__reg1].忠诚 = 所有人才[__reg1].忠诚 - 2;
        }
        if (所有人才[__reg1].忠诚 < 20) 
        {
            所有人才[__reg1].忠诚 = 20;
        }
        ++__reg1;
    }
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.图.gotoAndStop(22);
    对象.太监.文本.html = true;
    对象.太监.文本.htmlText = "皇上，国库已无存银。\n本月的官员俸禄无法发放。\n百官之中流言蜚语散播。";
    记录大事件的程序("国库已无存银，宫内压缩开支。");
    对象.太监.人.gotoAndStop(1);
    对象.太监.继续.onPress = function ()
    {
        结束固定事件程序(对象);
    }
    ;
}
function 皇帝禅让事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.图._visible = false;
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(5);
    对象.太监.文本.htmlText = "皇上您想禅让？可是皇上，您身体还很健康。";
    对象.太监.人.gotoAndStop(3);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "可是国家不能一日无君，让太子继位吗？";
        对象.太监.人.gotoAndStop(1);
        对象.太监.继续.onPress = function ()
        {
            对象.太监.文本.htmlText = "那禅让仪式，我通知内务府和太子府尽快准备。";
            记录大事件的程序("禅让仪式开始，皇帝让位，太子登基。");
            对象.太监.人.gotoAndStop(4);
            对象.太监.继续.onPress = function ()
            {
                对象.太监.removeMovieClip();
                对象.背景.removeMovieClip();
                死亡判定(2);
            }
            ;
        }
        ;
    }
    ;
}
function 健康很低的御医事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "皇上，皇上……。";
    对象.太监.人.gotoAndStop(4);
    对象.太监.继续.onPress = function ()
    {
        var __reg3 = random(3);
        if (__reg3 == 0) 
        {
            对象.太监.文本.htmlText = "御医，快传御医。皇上吐血了……";
        }
        else if (__reg3 == 1) 
        {
            对象.太监.文本.htmlText = "不好，快叫御医。\n皇上晕过去了，快叫御医……";
        }
        else if (__reg3 == 2) 
        {
            对象.太监.文本.htmlText = "皇上突然在大殿晕过去，快叫御医……";
        }
        记录大事件的程序("皇上劳累过度，晕倒。");
        对象.太监.人.gotoAndStop(3);
        对象.太监.继续.onPress = function ()
        {
            var 图 = this._parent._parent.attachMovie("健康很低图", "背景", 对象.背景.getDepth(), {_x: 0, _y: 0});
            var 对话框 = 图.attachMovie("对话框面板", "对话框面板", 200, {_x: 70, _y: 390});
            对话框._x = (640 - 对话框._width) / 2;
            对象.太监._visible = false;
            对话框.文本.text = "御医们前来诊断，情况渐渐好转。";
            对话框.an.onPress = function ()
            {
                对话框.文本.text = "(皇上要注意健康，不要太劳累了。)";
                对话框.an.onPress = function ()
                {
                    _root.主角.健康 = 70;
                    _root.主角.生病次数 = _root.主角.生病次数 + 2;
                    _root.主角.寿命 = _root.主角.寿命 - (random(20) + 10 * _root.主角.生病次数);
                    更新资料();
                    图.removeMovieClip();
                    结束固定事件程序(对象, 1);
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 妃子群沐图事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图._visible = false;
    对象.太监.文本.htmlText = "看皇上闷闷不乐的。";
    对象.太监.人.gotoAndStop(6);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "不如，奴才找些妃子来伺候下皇上。";
        对象.太监.人.gotoAndStop(6);
        对象.太监.继续.onPress = function ()
        {
            var 图 = this._parent._parent.attachMovie("妃子沐浴图", "背景", 对象.背景.getDepth(), {_x: 0, _y: 0});
            var 对话框 = 图.attachMovie("对话框面板", "对话框面板", 200, {_x: 70, _y: 390});
            对话框._x = (640 - 对话框._width) / 2;
            对象.太监._visible = false;
            对话框.文本.text = "很愉快……";
            对话框.an.onPress = function ()
            {
                对话框.文本.text = "(快乐增加，健康降低。)";
                对话框.an.onPress = function ()
                {
                    _root.主角.快乐 = 70;
                    _root.主角.健康 = _root.主角.健康 - 40;
                    if (_root.主角.健康 < 20) 
                    {
                        _root.主角.健康 = 20;
                    }
                    更新资料();
                    图.removeMovieClip();
                    结束固定事件程序(对象, 1);
                }
                ;
            }
            ;
        }
        ;
    }
    ;
}
function 太后驾崩事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.文本.html = true;
    对象.太监.图.gotoAndStop(20);
    对象.太监.文本.htmlText = "呜呜~`，皇上。";
    对象.太监.人.gotoAndStop(3);
    对象.太监.继续.onPress = function ()
    {
        对象.太监.文本.htmlText = "太后驾崩了，皇上准备如何处理太后后事。";
        对象.太监.人.gotoAndStop(1);
        对象.太监.继续.onPress = function ()
        {
        }
        ;
        固定事件的是否选择(对象.太监);
        对象.太监.是.文本.text = "全国举孝";
        对象.太监.否.文本.text = "独自守孝";
        对象.太监.是.按.onPress = function ()
        {
            固定事件的是否选择取消(对象.太监);
            对象.太监.文本.htmlText = "请皇上拟旨。\n奴才即刻通知吏部，传旨全国。";
            记录大事件的程序("太后驾崩。皇上颁旨，全国守孝。");
            对象.太监.人.gotoAndStop(1);
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
        }
        ;
        对象.太监.否.按.onPress = function ()
        {
            固定事件的是否选择取消(对象.太监);
            对象.太监.文本.htmlText = "奴才即刻通知内务府着手办理。";
            记录大事件的程序("太后驾崩。皇上亲自守孝。");
            对象.太监.人.gotoAndStop(1);
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
}
function 比目鱼密函事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.人.gotoAndStop(4);
    对象.太监.文本.html = true;
    对象.太监.文本.htmlText = "启禀皇上，" + 颜色代码("鱼叔", "ff0000") + "密函一封，请皇上过目。\n上面写着:\n“皇上是否会继续支持比目鱼策略游戏?”";
    对象.太监.图.gotoAndStop(19);
    对象.太监.图._visible = false;
    对象.太监.继续.onPress = function ()
    {
    }
    ;
    固定事件的是否选择(对象.太监);
    对象.太监.是.文本.text = "支持";
    对象.太监.否.文本.text = "支持";
    对象.太监.是.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        if (random(2) == 0) 
        {
            送药一次程序("昆仑仙豆", "健康", 50);
        }
        else 
        {
            送药一次程序("伸腿瞪眼丸", "健康", 50);
        }
        对象.太监.文本.htmlText = "皇上英明。\n感受策略游戏，最有意思了。\n(^_^)";
        对象.太监.人.gotoAndStop(2);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
    对象.太监.否.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        if (random(2) == 0) 
        {
            送药一次程序("夜夜笙歌香", "兴奋", 50);
        }
        else 
        {
            送药一次程序("春水流香丸", "兴奋", 50);
        }
        对象.太监.文本.htmlText = "皇上英明。\n感受策略游戏，最有意思了。\n(^_^)";
        对象.太监.人.gotoAndStop(6);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 比目鱼山寨兵团事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.人.gotoAndStop(4);
    对象.太监.文本.html = true;
    对象.太监.文本.htmlText = "启禀皇上，流寇" + 颜色代码("比目鱼", "ff0000") + "手下的山寨军团十五万人马希望朝廷能够招安。\n皇上愿意招收他们么?";
    对象.太监.图.gotoAndStop(19);
    对象.太监.图._visible = false;
    对象.太监.继续.onPress = function ()
    {
    }
    ;
    固定事件的是否选择(对象.太监);
    对象.太监.是.文本.text = "收入军营";
    对象.太监.否.文本.text = "打发离开";
    对象.太监.是.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "皇上英明。\n为朝廷效命是他们天大的荣幸。";
        对象.太监.人.gotoAndStop(2);
        对象.太监.继续.onPress = function ()
        {
            国家.士兵 = 国家.士兵 + 150000;
            结束固定事件程序(对象);
        }
        ;
    }
    ;
    对象.太监.否.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "皇上英明。\n朝廷正规军队岂能与草寇为伍。";
        对象.太监.人.gotoAndStop(6);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 大臣女儿很漂亮事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.人.gotoAndStop(4);
    对象.太监.文本.html = true;
    对象.太监.文本.htmlText = "启禀皇上，昨日办差到" + 颜色代码("杨学士", "ff0000") + "府上。\n杨府三个女儿都长得国色天香。\n皇上如有得闲，奴才就把他们领进宫来。";
    对象.太监.图.gotoAndStop(19);
    对象.太监.图._visible = false;
    对象.太监.继续.onPress = function ()
    {
    }
    ;
    固定事件的是否选择(对象.太监);
    对象.太监.是.文本.text = "甚好";
    对象.太监.否.文本.text = "掌嘴";
    对象.太监.是.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "皇上英明。";
        对象.太监.人.gotoAndStop(6);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
    对象.太监.否.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "奴才罪该万死。";
        对象.太监.人.gotoAndStop(3);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 泰山封禅大典事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.人.gotoAndStop(4);
    对象.太监.文本.html = true;
    对象.太监.文本.htmlText = "启禀皇上，\n皇上在位数十年，国家发展如日中天。\n大臣建议皇上进行泰山封禅。\n全国庆典需五千万两白银。";
    对象.太监.图.gotoAndStop(19);
    对象.太监.图._visible = false;
    对象.太监.继续.onPress = function ()
    {
    }
    ;
    固定事件的是否选择(对象.太监);
    对象.太监.是.文本.text = "举办";
    对象.太监.否.文本.text = "不办";
    if (国家.金钱 < 50000000) 
    {
        对象.太监.是._visible = false;
        对象.太监.否._x = 对象.太监.是._x;
    }
    对象.太监.是.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "皇上英明。\n奴才这就去安排。";
        对象.太监.人.gotoAndStop(6);
        对象.太监.继续.onPress = function ()
        {
            var 封禅图 = _root.attachMovie("封禅图", "封禅图", 92100, {_x: 0, _y: 0});
            国家.金钱 = 国家.金钱 - 50000000;
            更新资料();
            封禅图.对话.文本.text = "太宗，受命立极，六合殷盛。上帝眷，锡臣忠武，底绥内艰，推戴圣父。敬若天意，四海宴然。封祀岱岳，谢成于天。子孙百禄，苍生受福。";
            封禅图.对话.an.onPress = function ()
            {
                封禅图.对话.an.onPress = function ()
                {
                }
                ;
                封禅图.onEnterFrame = function ()
                {
                    封禅图.onPress = function ()
                    {
                    }
                    ;
                    this._alpha = this._alpha - 10;
                    if (this._alpha <= 0) 
                    {
                        this.removeMovieClip();
                    }
                }
                ;
            }
            ;
            主角.威望 = 主角.威望 + 100;
            更新资料();
            对象.太监.文本.htmlText = "大型典礼虽操办辛苦，但百姓无不津津乐道。\n全国民心增加，官员忠诚增加，士兵训练度增加，妃子恩爱度增加，国威增加。";
            对象.太监.继续.onPress = function ()
            {
                结束固定事件程序(对象);
            }
            ;
        }
        ;
    }
    ;
    对象.太监.否.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "是。";
        对象.太监.人.gotoAndStop(4);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 唐哲修事件()
{
    缓动黑幕();
    var 对象 = 出基本对话事件图();
    对象.太监.人.gotoAndStop(5);
    对象.太监.文本.html = true;
    对象.太监.文本.htmlText = "启禀皇上，有个自称" + 颜色代码("唐哲修", "ff0000") + "的人突然闯入皇宫。\n说想面见皇上，现在卫兵已将其抓住。\n皇上想如何处置。";
    对象.太监.图.gotoAndStop(19);
    对象.太监.继续.onPress = function ()
    {
    }
    ;
    固定事件的是否选择(对象.太监);
    对象.太监.是.文本.text = "押来见朕";
    对象.太监.否.文本.text = "就地处死";
    对象.太监.是.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "刚才在路上，那人突然变成一阵烟雾。\n现在卫兵们正在四处寻找此人踪迹。";
        对象.太监.人.gotoAndStop(3);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
    对象.太监.否.按.onPress = function ()
    {
        固定事件的是否选择取消(对象.太监);
        对象.太监.文本.htmlText = "那人似乎会使法术，一阵烟雾后消失不见了。\n现在皇宫已经加强戒备，拼死保护皇上安全。";
        对象.太监.人.gotoAndStop(3);
        对象.太监.继续.onPress = function ()
        {
            结束固定事件程序(对象);
        }
        ;
    }
    ;
}
function 颜色代码(文本, 颜色)
{
    var __reg1 = "<FONT COLOR=\'#" + 颜色 + "\'>" + 文本 + "</FONT>";
    return __reg1;
}
function 固定事件的是否选择取消(太监)
{
    太监.是._visible = false;
    太监.否._visible = false;
    太监.继续._visible = true;
}
function 固定事件的是否选择(太监)
{
    太监.继续._visible = false;
    太监.attachMovie("通用按钮", "是", 8000, {_x: 太监.继续字眼._x, _y: 太监.继续字眼._y});
    太监.attachMovie("通用按钮", "否", 8001, {_x: 太监.继续字眼._x + 100, _y: 太监.继续字眼._y});
    太监.是.文本.text = "准奏";
    太监.否.文本.text = "搁置";
    太监.是.按.onPress = function ()
    {
    }
    ;
    太监.否.按.onPress = function ()
    {
    }
    ;
}
function 出基本对话事件图()
{
    var __reg3 = _root.attachMovie("故宫背景", "故宫背景", 9220, {_x: 0, _y: 0});
    __reg3.gotoAndStop(季);
    __reg3.onPress = function ()
    {
    }
    ;
    模糊特效(__reg3);
    var __reg2 = _root.attachMovie("太监报告事情", "太监报告事情的图形", 9225, {_x: 0, _y: 0});
    __reg2.图.gotoAndStop(1);
    __reg2.人.gotoAndStop(太监表情);
    __reg2.文本.text = "";
    __reg2.继续.onPress = function ()
    {
    }
    ;
    var __reg4 = {};
    __reg4.背景 = __reg3;
    __reg4.太监 = __reg2;
    return __reg4;
}
固定显示事件 = [];

