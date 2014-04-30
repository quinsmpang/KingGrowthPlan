//Frame 3
//  Action tag #0

function 宣政殿()
{
    if (主角.当前时辰 !== 0) 
    {
        太监说话的程序(4, "启禀皇上：\n早朝时间已过，请另做安排。");
        return;
    }
    更新所有主要职位的人();
    _root.主角.健康 = _root.主角.健康 - 5;
    _root.主角.快乐 = _root.主角.快乐 - 5;
    加载进步动画条的说("健康");
    加载进步动画条的说("快乐");
    _root.更新资料();
    attachMovie("大殿", "大殿", 220, {_x: 0, _y: 0});
    大殿.大殿背景.gotoAndStop(主角.大殿);
    大殿.丞相的话._visible = false;
    大殿.所有人 = Array();
    大殿.按._visible = false;
    大殿.操作._visible = false;
    var __reg2 = 0;
    while (__reg2 < _root.所有城池.length) 
    {
        大殿["文官" + __reg2].gotoAndStop(1);
        大殿["武官" + __reg2].gotoAndStop(1);
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < 所有面板.length) 
    {
        大殿[所有面板[__reg2]]._visible = false;
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < 所有官员.length) 
    {
        大殿[所有官员[__reg2]].gotoAndStop(1);
        大殿[所有官员[__reg2] + 1].gotoAndStop(1);
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < _root.所有场景官员.length) 
    {
        大殿[_root.所有场景官员[__reg2]].gotoAndStop(2);
        ++__reg2;
    }
    大殿.attachMovie("万岁万万岁", "万岁万万岁", 23423, {_x: 250, _y: 50});
    大殿.有几城 = 0;
    __reg2 = 0;
    while (__reg2 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg2].归属 == 8) 
        {
            ++大殿.有几城;
        }
        ++__reg2;
    }
    __reg2 = 0;
    while (__reg2 < _root.所有城池.length) 
    {
        if (__reg2 < 大殿.有几城) 
        {
            大殿["文官" + __reg2]._visible = true;
            大殿["武官" + __reg2]._visible = true;
        }
        else 
        {
            大殿["文官" + __reg2]._visible = false;
            大殿["武官" + __reg2]._visible = false;
        }
        ++__reg2;
    }
    _root.大殿.说话.文本.text = _root.大殿.说话.文本.text + "\n众官员齐聚大殿。";
    大殿刷新说话屏幕();
}
function 大殿主要面板(哪个板)
{
    var __reg2 = 0;
    while (__reg2 < 所有面板.length) 
    {
        大殿[所有面板[__reg2]]._visible = false;
        ++__reg2;
    }
    _root.主要面板操作();
    哪个板._visible = true;
}
function 大殿跪()
{
    var __reg3 = 0;
    while (__reg3 < _root.所有场景官员.length) 
    {
        大殿[_root.所有场景官员[__reg3]].gotoAndStop(3);
        ++__reg3;
    }
    _root.大殿.attachMovie("临时元件", "去跪", 23425, {_x: 0, _y: 0});
    _root.大殿.去跪.onEnterFrame = function ()
    {
        this._alpha = this._alpha - 4;
        if (this._alpha < 0) 
        {
            var __reg3 = 0;
            while (__reg3 < _root.所有场景官员.length) 
            {
                _root.大殿[_root.所有场景官员[__reg3]].gotoAndStop(2);
                ++__reg3;
            }
            this.removeMovieClip();
        }
    }
    ;
}
function 大殿执行()
{
    if (_root.大殿.去跪 !== undefined) 
    {
        _root.大殿.去跪.removeMovieClip();
        var __reg3 = 0;
        while (__reg3 < _root.所有场景官员.length) 
        {
            _root.大殿[_root.所有场景官员[__reg3]].gotoAndStop(2);
            ++__reg3;
        }
    }
    _root.大殿.说话.文本.text = _root.大殿.说话.文本.text + "\n您：众卿平身。\n众官员：谢皇上。";
    _root.大殿.按._visible = false;
    _root.大殿.attachMovie("临时元件", "准备开始啊", 23423, {_x: 0, _y: 0});
    大殿刷新说话屏幕();
    _root.大殿.准备开始啊.onEnterFrame = function ()
    {
        this._alpha = this._alpha - 5;
        if (this._alpha < 0) 
        {
            _root.大殿开始();
            _root.大殿.说话.文本.text = _root.大殿.说话.文本.text + "\n群臣在殿上等候，您可以开始处理政务了。";
            大殿刷新说话屏幕();
            this.removeMovieClip();
        }
    }
    ;
}
function 大殿开始()
{
    大殿.操作._visible = true;
    大殿.万岁万万岁._visible = false;
    var __reg7 = 0;
    while (__reg7 < _root.所有场景官员.length) 
    {
        大殿[_root.所有场景官员[__reg7]].gotoAndStop(1);
        ++__reg7;
    }
    __reg7 = 0;
    while (__reg7 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg7].归属 == 8) 
        {
            var __reg4 = [];
            var __reg6 = _root.所有城池[__reg7];
            var __reg8 = "无事";
            if (__reg6.民心 < 50) 
            {
                __reg4.push("民心偏低");
            }
            if (__reg6.治安 < 50) 
            {
                __reg4.push("治安偏低");
            }
            if (__reg6.安定 < 50) 
            {
                __reg4.push("安定偏低");
            }
            if (__reg4.length > 0) 
            {
                var __reg5 = __reg6.名称;
                var __reg3 = 0;
                while (__reg3 < __reg4.length) 
                {
                    if (__reg3 == __reg4.length - 1) 
                    {
                        __reg5 = __reg5 + (__reg4[__reg3] + "。");
                    }
                    else 
                    {
                        __reg5 = __reg5 + (__reg4[__reg3] + "，");
                    }
                    ++__reg3;
                }
                每月丞相奏报.unshift(__reg5);
            }
        }
        ++__reg7;
    }
    if (每月丞相奏报.length > 0) 
    {
        var __reg9 = 大殿.attachMovie("丞相奏折", "丞相奏折", 45500, {_x: 0, _y: 0});
        __reg9.文本.text = "丞相启奏：\n";
        __reg7 = 0;
        while (__reg7 < 每月丞相奏报.length) 
        {
            __reg9.文本.text = __reg9.文本.text + (每月丞相奏报[__reg7] + "\n");
            ++__reg7;
        }
        __reg9._alpha = 0;
        __reg9.时间 = 0;
        __reg9.onEnterFrame = function ()
        {
            --this.时间;
            if (this.时间 < 0) 
            {
                this._alpha = this._alpha + 5;
                if (this._alpha >= 100) 
                {
                    this.关闭.onPress = function ()
                    {
                        this._parent.removeMovieClip();
                    }
                    ;
                    delete (this.onEnterFrame);
                }
            }
        }
        ;
    }
    大殿.丞相.onPress = function ()
    {
        if (_root.大殿.临时人物 == undefined) 
        {
            var __reg2 = 丞相的提示();
            丞相的动作(__reg2);
        }
    }
    ;
}
function 大殿出列(谁, 参数, 称呼)
{
    if (大殿.临时人物 !== 谁) 
    {
        大殿.临时人物._visible = true;
        大殿.临时人物 = 谁;
        duplicateMovieClip(大殿.临时人物, "出列1", 17284);
        大殿.临时人物._visible = false;
        大殿.出列1._x = 大殿.中间区域._x;
        大殿.出列1._y = 大殿.中间区域._y;
        大殿.出列1.gotoAndStop(4);
        _root.大殿.attachMovie("临时元件", "准备鞠躬", 23423, {_x: 0, _y: 0});
        _root.大殿.准备鞠躬.onEnterFrame = function ()
        {
            this._alpha = this._alpha - 5;
            if (this._alpha < 0) 
            {
                _root.大殿.出列1.gotoAndStop(5);
                this.removeMovieClip();
            }
        }
        ;
        大殿.是谁 = _root.所有部门[参数].名字;
        var __reg3 = random(4);
        var __reg4 = "在。请皇上吩咐。";
        if (__reg3 == 0) 
        {
            __reg4 = "在。请皇上吩咐。";
        }
        else if (__reg3 == 1) 
        {
            __reg4 = "微臣在。";
        }
        else if (__reg3 == 2) 
        {
            __reg4 = 称呼 + " " + 大殿.是谁 + "在。";
        }
        else if (__reg3 == 3) 
        {
            __reg4 = "在。";
        }
        遵旨显示下好吗(__reg4, 大殿.遵旨);
        大殿刷新说话屏幕();
    }
}
function 遵旨显示下好吗(文本, 路径)
{
    路径.文本.text = 文本;
    路径._visible = true;
    路径.时间 = 30;
    路径.onEnterFrame = function ()
    {
        --this.时间;
        if (this.时间 < 0) 
        {
            this._visible = false;
            delete this.onEnterFrame;
        }
    }
    ;
}
function 大殿刷新说话屏幕()
{
    大殿.说话.文本.scroll = 大殿.说话.文本.maxscroll;
}
function 大殿取消了()
{
    var __reg1 = 0;
    while (__reg1 < 所有面板.length) 
    {
        大殿[所有面板[__reg1]]._visible = false;
        ++__reg1;
    }
    大殿.出列1.removeMovieClip();
    大殿.临时人物._visible = true;
    大殿.临时人物 = undefined;
}
function 大殿退朝()
{
    var __reg3 = 0;
    while (__reg3 < _root.所有场景官员.length) 
    {
        大殿[_root.所有场景官员[__reg3]].gotoAndStop(2);
        ++__reg3;
    }
    大殿.操作._visible = false;
    _root.大殿.说话.文本.text = _root.大殿.说话.文本.text + "\n您：退朝。";
    大殿刷新说话屏幕();
    _root.大殿.attachMovie("临时元件", "退朝", 23423, {_x: 0, _y: 0});
    _root.大殿.退朝.onEnterFrame = function ()
    {
        this._alpha = this._alpha - 5;
        _root.大殿.出列1.removeMovieClip();
        _root.大殿.临时人物._visible = true;
        _root.大殿.临时人物 = undefined;
        var __reg3 = 0;
        while (__reg3 < 所有面板.length) 
        {
            大殿[所有面板[__reg3]]._visible = false;
            ++__reg3;
        }
        大殿.出列1.removeMovieClip();
        大殿.临时人物._visible = true;
        大殿.临时人物 = undefined;
        if (this._alpha < 50) 
        {
            if (大殿[_root.所有场景官员[0]]._currentframe == 2) 
            {
                __reg3 = 0;
                while (__reg3 < _root.所有场景官员.length) 
                {
                    大殿[_root.所有场景官员[__reg3]].gotoAndStop(3);
                    ++__reg3;
                }
            }
        }
        if (this._alpha < 0) 
        {
            _root.大殿._alpha = _root.大殿._alpha - 10;
            if (_root.大殿._alpha < 0) 
            {
                ++主角.当前时辰;
                时辰推进();
                _root.黑幕布.removeMovieClip();
                _root.大殿.removeMovieClip();
            }
        }
    }
    ;
}
function 丞相的提示()
{
    var __reg1 = 小贴士[random(小贴士.length)];
    return __reg1;
}
所有面板 = ["中央军板", "吏部板", "吏部1板", "户部板", "户部1板", "礼部板", "礼部1板", "兵部板", "兵部1板", "刑部板", "刑部1板", "工部板", "工部1板"];
所有官员 = ["中央军", "吏部", "户部", "礼部", "兵部", "刑部", "工部"];

//  Action tag #1

function 全人才属性优化()
{
    var __reg1 = 0;
    while (__reg1 < 所有人才.length) 
    {
        if (0 != (所有人才[__reg1].类 !== "总兵") & 0 != (所有人才[__reg1].类 !== "知府")) 
        {
            所有人才[__reg1].城 = "";
        }
        ++__reg1;
    }
    更新所有主要职位的人();
}
function 重置六部伟()
{
    var __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= 六部伟.length) 
        {
            return;
        }
        var __reg2 = 0;
        while (__reg2 < 所有人才.length) 
        {
            if (六部伟[__reg3] == 所有人才[__reg2].类) 
            {
                this.所有部门[六部伟[__reg3]] = 所有人才[__reg2];
            }
            if (所有人才[__reg2].类 == "中央军") 
            {
                this.所有部门.中央军 = 所有人才[__reg2];
            }
            ++__reg2;
        }
        ++__reg3;
    }
}
function 更新所有主要职位的人()
{
    所有官员的职位 = [["宰相", "宰相"], ["中央军", "中央军"], ["吏部", "吏部尚书"], ["吏部1", "吏部侍郎"], ["户部", "户部尚书"], ["户部1", "户部侍郎"], ["礼部", "礼部尚书"], ["礼部1", "礼部侍郎"], ["兵部", "兵部尚书"], ["兵部1", "兵部侍郎"], ["刑部", "刑部尚书"], ["刑部1", "刑部侍郎"], ["工部", "工部尚书"], ["工部1", "工部侍郎"]];
    var __reg3 = 0;
    while (__reg3 < 所有人才.length) 
    {
        if (0 != (所有人才[__reg3].类 == "总兵") | 0 != (所有人才[__reg3].类 == "知府")) 
        {
            所有官员的职位.push([所有人才[__reg3].类, 所有人才[__reg3].城.名称 + 所有人才[__reg3].类, 所有人才[__reg3].城]);
        }
        ++__reg3;
    }
    __reg3 = 0;
    while (__reg3 < 所有人才.length) 
    {
        var __reg2 = 0;
        while (__reg2 < 六部伟啊啊.length) 
        {
            if (所有人才[__reg3].类 == 六部伟啊啊[__reg2]) 
            {
                this.所有部门[六部伟啊啊[__reg2]] = 所有人才[__reg3];
            }
            ++__reg2;
        }
        ++__reg3;
    }
    __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 所有人才.length) 
        {
            return;
        }
        if (0 != (所有人才[__reg2].类 == "总兵") | 0 != (所有人才[__reg2].类 == "知府")) 
        {
            if (所有人才[__reg2].城.归属 !== 8) 
            {
                所有人才[__reg2].类 = "赋闲";
                所有人才[__reg2].城 = "";
            }
        }
        ++__reg2;
    }
}
function 创建人才(类, 地位, 城, 参数, 用途)
{
    取名(1);
    var __reg1 = {id: 主角.人才顺序, 名字: 临时名字, 类: 类, 地位: 地位, 城: 城};
    if (参数 == undefined) 
    {
        生成这个人才的属性(__reg1, 1);
        所有人才.push(__reg1);
        ++主角.人才顺序;
    }
    else if (参数 == 1) 
    {
        生成这个人才的属性(__reg1, 2);
        ++主角.人才顺序;
    }
    if (用途 == 1) 
    {
        if (random(10) >= 4) 
        {
            __reg1.年龄 = random(16) + 16;
        }
        else 
        {
            __reg1.年龄 = random(30) + 30;
        }
        __reg1.经验 = random(50);
    }
    return __reg1;
}
function 生成这个人才的属性(人才, 参数)
{
    if (参数 == 1) 
    {
        人才.俸禄 = 所有俸禄[人才.地位];
        if (人才.类 == "知府") 
        {
            人才.智慧 = 50 + random(20);
            人才.武术 = 25 + random(20);
        }
        else if (人才.类 == "总兵") 
        {
            人才.武术 = 50 + random(20);
            人才.智慧 = 25 + random(20);
        }
        else if (人才.类 == "中央军") 
        {
            人才.武术 = 60 + random(25);
            人才.智慧 = 25 + random(20);
        }
        else 
        {
            人才.武术 = 40 + random(20);
            人才.智慧 = 45 + random(20);
        }
        if (random(10) < 5) 
        {
            人才.清廉 = 20 + random(70);
        }
        else 
        {
            人才.清廉 = 20 + random(20);
        }
        if (random(10) < 5) 
        {
            人才.野心 = 20 + random(70);
        }
        else 
        {
            人才.野心 = 20 + random(20);
        }
        人才.忠诚 = 45 + random(40);
        人才.年龄 = 40 + random(26);
        人才.经验 = 人才.年龄 * 2 + random(200);
        人才.爵位 = "无";
        return;
    }
    if (参数 == 2) 
    {
        人才.武术 = 25 + random(35);
        人才.智慧 = 25 + random(35);
        人才.清廉 = 20 + random(70);
        人才.野心 = 20 + random(70);
        人才.忠诚 = 50 + random(40);
        人才.年龄 = 40 + random(26);
        人才.经验 = 人才.年龄 * 2 + random(200);
        人才.爵位 = "无";
    }
}
数值 = 0;
所有人才 = Array();
国内人才 = Array();
爵位 = Array("公", "侯", "伯", "子", "男");
六部伟 = Array("吏部", "户部", "礼部", "兵部", "刑部", "工部");
六部正名 = Array("吏部尚书", "户部尚书", "礼部尚书", "兵部尚书", "刑部尚书", "工部尚书", "吏部侍郎", "户部侍郎", "礼部侍郎", "兵部侍郎", "刑部侍郎", "工部侍郎", "中央将军");
所有官阶 = Array("七品", "从六品", "正六品", "从五品", "正五品", "从四品", "正四品", "从三品", "正三品", "从二品", "正二品", "从一品", "正一品");
六部伟啊啊 = Array("吏部", "户部", "礼部", "兵部", "刑部", "工部", "吏部1", "户部1", "礼部1", "兵部1", "刑部1", "工部1", "中央军");
var i = 0;
while (i < 所有官阶.length) 
{
    ++i;
}
所有俸禄 = Array();
var i = 0;
while (i < 所有官阶.length) 
{
    所有俸禄.push(300 + 250 * i);
    ++i;
}
创建人才("宰相", 12, undefined);
创建人才("中央军", 12, undefined);
所有部门 = new Object();
var i = 0;
while (i < 六部伟.length) 
{
    this.所有部门[六部伟[i]] = 创建人才(六部伟[i], 12, undefined);
    this.所有部门[六部伟[i] + "1"] = 创建人才(六部伟[i] + "1", 10, undefined);
    ++i;
}
var i = 0;
while (i < 所有城池.length) 
{
    this["城人才" + i] = Array();
    if (所有城池[i].归属 == 8) 
    {
        创建人才("知府", 3, 所有城池[i]);
        创建人才("总兵", 3, 所有城池[i]);
    }
    ++i;
}
var i = 0;
while (i < 6) 
{
    创建人才("赋闲", 0, undefined);
    ++i;
}

//  Action tag #2

function 调试子女()
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 99) 
        {
            return;
        }
        var __reg2 = 女名[random(女名.length)] + 女名[random(女名.length)];
        所有子女数据.push({id: __reg1, 名称: __reg2, 性别: random(2), 母亲: "王柳萱", 年龄: random(39) + 10, 婚: 0, 封号: "", 性情: 性情[random(性情.length)]});
        ++__reg1;
    }
}
function 公主取名()
{
    var __reg1 = 皇家名字女字[random(皇家名字女字.length)] + 女名[random(女名.length)];
    return __reg1;
}
皇帝的辈分 = 皇家名字组合库[random(皇家名字组合库.length)];

//  Action tag #3

function 执行数值拉动(路径, 参数)
{
    路径.取消.onRelease = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
    if (参数 == 1) 
    {
        __reg12 = ss;
        __reg5 = 0;
        __reg4 = 0;
        __reg3 = 0;
        while (__reg3 < 所有城池.length) 
        {
            if (所有城池[__reg3].归属 == 8) 
            {
                __reg5 = __reg5 + 所有城池[__reg3].壮丁;
                __reg4 = __reg4 + 1;
            }
            ++__reg3;
        }
        __reg8 = Math.floor(__reg5 * 0.2);
        if (__reg8 * 4 > 国家.金钱) 
        {
            __reg8 = Math.round(国家.金钱 / 4);
        }
        路径.长度 = __reg8;
        if (路径.长度 < 8000) 
        {
            路径.文本.text = 路径.文本.text + "\n各州府壮丁数量很少，恐怕很难招募。";
        }
        路径.值 = 0;
        路径.文本.text = "回禀皇上：\n当前国家共有民夫：" + Math.round(国家.民夫 / 10000) + "万名。\n当前可以征召壮丁：" + 路径.长度 + "名。";
        路径.提示.text = "从各地的壮丁中征召民夫。";
        路径.确定.onRelease = function ()
        {
            if (路径.值 == 0) 
            {
                _root.小提示("请拉动红条操作");
                return;
            }
            if (this._parent.条._xscale > 0) 
            {
                var __reg3 = 路径.值;
                var __reg4 = "朝廷招揽全国有意从事建设工作的民夫" + __reg3 + "名，薪俸二两。";
                国家减少壮丁(__reg3);
                国库钱数变动的程序(__reg3 * -2);
                _root.国家.民夫 = _root.国家.民夫 + __reg3;
                _root.主角.招募民夫 = 1;
                出圣旨(__reg4, 路径);
                大殿体力扣除程序(10);
                删除之前的界面(路径);
                更新资料();
            }
        }
        ;
    }
    else if (参数 == 2) 
    {
        var __reg12 = ss;
        var __reg5 = 0;
        var __reg4 = 0;
        var __reg3 = 0;
        while (__reg3 < 所有城池.length) 
        {
            if (所有城池[__reg3].归属 == 8) 
            {
                __reg5 = __reg5 + 所有城池[__reg3].壮丁;
                __reg4 = __reg4 + 1;
            }
            ++__reg3;
        }
        var __reg8 = Math.floor(__reg5 * 0.2);
        if (__reg8 * 4 > 国家.金钱) 
        {
            __reg8 = Math.round(国家.金钱 / 4);
        }
        路径.长度 = __reg8;
        路径.值 = 0;
        路径.文本.text = "回禀皇上：\n当前国家共有士兵：" + Math.round(国家.士兵 / 10000) + "万名。\n士兵训练度：" + 国家.训练 + "。\n当前可以征召壮丁：" + 路径.长度 + "名。";
        if (路径.长度 < 8000) 
        {
            路径.文本.text = 路径.文本.text + "\n各州府壮丁数量很少，恐怕很难招募。";
        }
        路径.提示.text = "从各地的壮丁中征召士兵。";
        路径.确定.onRelease = function ()
        {
            if (路径.值 == 0) 
            {
                _root.小提示("请拉动红条操作");
                return;
            }
            if (this._parent.条._xscale > 0) 
            {
                var __reg3 = 路径.值;
                var __reg4 = "中央招募全国有意从军效国之士兵" + __reg3 + "名，薪俸四两。";
                var __reg5 = Math.round((_root.国家.士兵 * _root.国家.训练 + __reg3 * 1) / ((_root.国家.士兵 + __reg3) * 100) * 100);
                国家.训练 = __reg5;
                国家减少壮丁(__reg3);
                国库钱数变动的程序(__reg3 * -4);
                _root.国家.士兵 = _root.国家.士兵 + __reg3;
                _root.主角.招募士兵 = 1;
                出圣旨(__reg4, 路径);
                大殿体力扣除程序(10);
                删除之前的界面(路径);
                更新资料();
            }
        }
        ;
    }
    else if (参数 == 3) 
    {
        路径.长度 = Math.floor(国家.士兵 / 2);
        路径.值 = 0;
        路径.文本.text = "回禀皇上：\n当前国家共有士兵：" + Math.round(国家.士兵 / 10000) + "万名。\n士兵训练度：" + 国家.训练 + "。\n当前可以进行卸甲归田的士兵：" + 路径.长度 + "名。\n应维持适量的士兵，以保卫国家。";
        if (路径.长度 < 8000) 
        {
            路径.文本.text = 路径.文本.text + "\n国家不可无兵，请皇上慎重。";
        }
        路径.提示.text = "将士兵送回各地归农。";
        路径.确定.onRelease = function ()
        {
            if (路径.值 == 0) 
            {
                _root.小提示("请拉动红条操作");
                return;
            }
            if (this._parent.条._xscale > 0) 
            {
                var __reg6 = 路径.值;
                var __reg7 = "令兵部尚书解雇士兵" + __reg6 + "名，每人给五两银子，还乡归民。";
                国库钱数变动的程序(__reg6 * -5);
                _root.国家.士兵 = _root.国家.士兵 - __reg6;
                _root.主角.卸甲归田 = 1;
                var __reg5 = 0;
                var __reg4 = 0;
                var __reg3 = 0;
                while (__reg3 < 所有城池.length) 
                {
                    if (所有城池[__reg3].归属 == 8) 
                    {
                        __reg4 = __reg4 + 1;
                    }
                    ++__reg3;
                }
                __reg5 = Math.round(__reg6 / __reg4);
                __reg3 = 0;
                while (__reg3 < 所有城池.length) 
                {
                    if (所有城池[__reg3].归属 == 8) 
                    {
                        所有城池[__reg3].壮丁 = 所有城池[__reg3].壮丁 + __reg5;
                    }
                    ++__reg3;
                }
                出圣旨(__reg7, 路径);
                大殿体力扣除程序(10);
                删除之前的界面(路径);
                更新资料();
            }
        }
        ;
    }
    else if (参数 == 4) 
    {
        路径.长度 = Math.floor(国家.民夫 / 2);
        路径.值 = 0;
        路径.文本.text = "回禀皇上：\n当前国家共有民夫：" + Math.round(国家.民夫 / 10000) + "万名。\n当前可以进行解雇的士兵：" + 路径.长度 + "名。\n应维持一定数量的民夫，以保证国家建设。";
        if (路径.长度 < 10000) 
        {
            路径.文本.text = 路径.文本.text + "\n民夫数量已经很少，请皇上慎重。";
        }
        路径.提示.text = "将民夫送回各地归农。";
        路径.确定.onRelease = function ()
        {
            if (路径.值 == 0) 
            {
                _root.小提示("请拉动红条操作");
                return;
            }
            if (this._parent.条._xscale > 0) 
            {
                var __reg6 = 路径.值;
                var __reg7 = "令工部尚书解雇民夫" + __reg6 + "名，每人给四两银子，还乡归民。";
                国库钱数变动的程序(__reg6 * -4);
                _root.国家.民夫 = _root.国家.民夫 - __reg6;
                _root.主角.解雇民夫 = 1;
                var __reg5 = 0;
                var __reg4 = 0;
                var __reg3 = 0;
                while (__reg3 < 所有城池.length) 
                {
                    if (所有城池[__reg3].归属 == 8) 
                    {
                        __reg4 = __reg4 + 1;
                    }
                    ++__reg3;
                }
                __reg5 = Math.round(__reg6 / __reg4);
                __reg3 = 0;
                while (__reg3 < 所有城池.length) 
                {
                    if (所有城池[__reg3].归属 == 8) 
                    {
                        所有城池[__reg3].壮丁 = 所有城池[__reg3].壮丁 + __reg5;
                    }
                    ++__reg3;
                }
                出圣旨(__reg7, 路径);
                大殿体力扣除程序(10);
                删除之前的界面(路径);
                更新资料();
            }
        }
        ;
    }
    else if (参数 == 5) 
    {
        if (国家.金钱 > 500000) 
        {
            路径.长度 = 500000;
        }
        else 
        {
            路径.长度 = Math.floor(国家.金钱 / 10);
        }
        路径.值 = 0;
        路径.文本.text = "回禀皇上：\n当前投入的调查经费" + 国家.调查经费 + "两。\n拨的银子，将持续有效。";
        路径.提示.text = "官员的数量决定每月需要的调查费用。";
        路径.确定.onRelease = function ()
        {
            if (路径.值 == 0) 
            {
                _root.小提示("请拉动红条操作");
                return;
            }
            if (this._parent.条._xscale > 0) 
            {
                var __reg3 = 路径.值;
                var __reg4 = "国库拨银" + __reg3 + "两至刑部，对各地大臣进行检查。";
                国家.调查经费 = 国家.调查经费 + __reg3;
                国库钱数变动的程序(__reg3 * -1);
                出圣旨(__reg4, 路径);
                大殿体力扣除程序(20);
                删除之前的界面(路径);
                更新资料();
            }
        }
        ;
    }
    路径.条._xscale = 0;
    NewDrag(路径.r.a);
}
function 国家减少壮丁(数量)
{
    var __reg2 = [];
    var __reg1 = 0;
    while (__reg1 < 所有城池.length) 
    {
        if (所有城池[__reg1].归属 == 8) 
        {
            __reg2.push(所有城池[__reg1]);
        }
        ++__reg1;
    }
    var __reg3 = Math.round(数量 / __reg2.length);
    __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= __reg2.length) 
        {
            return;
        }
        if (__reg2[__reg1].壮丁 > __reg3) 
        {
            __reg2[__reg1].壮丁 = __reg2[__reg1].壮丁 - __reg3;
        }
        ++__reg1;
    }
}
function NewDrag(Mc)
{
    Mc.onPress = function ()
    {
        var tiao_max = 398;
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

//  Action tag #4

function 礼明殿()
{
    _root.attachMovie("礼明殿面板", "礼明殿面板", 3000, {_x: 0, _y: 0});
}
function 青炉房()
{
    var 面板 = _root.attachMovie("青炉房面板", "青炉房面板", 3000, {_x: 0, _y: 0});
    面板.取消.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    面板.方士.onPress = function ()
    {
        var __reg3 = _root.attachMovie("内侍面板", "内侍面板", 90000, {_x: 0, _y: 0});
        __reg3.文本.text = "恭迎皇上。\n青炉房可以用外国进贡的药材提炼金丹。";
        __reg3.文0.text = "开炉炼丹";
        __reg3.文1.text = "服用丹药";
        __reg3.文2.text = "试验丹药";
        __reg3.文3.text = "丢弃丹药";
        按键功能跳动(__reg3.an0, "开炉炼丹程序");
        按键功能跳动(__reg3.an1, "服用丹药程序");
        按键功能跳动(__reg3.an2, "试验丹药程序");
        按键功能跳动(__reg3.an3, "丢弃丹药程序");
        __reg3.attachMovie("红色小条", "查看药材", 5500, {_x: 115.6, _y: 255});
        __reg3.查看药材.文本.text = "查看药材";
        按键功能跳动(__reg3.查看药材.an, "查看药材程序");
        __reg3.attachMovie("红色小条", "查看丹药", 5501, {_x: 220.25, _y: 255});
        __reg3.查看丹药.文本.text = "查看丹药";
        按键功能跳动(__reg3.查看丹药.an, "查看丹药程序");
        __reg3.取消.onPress = function ()
        {
            this._parent.removeMovieClip();
        }
        ;
    }
    ;
}
function 查看丹药程序(区别参数)
{
    var 面板 = _root.attachMovie("丹药面板", "丹药面板", 92120, {_x: 0, _y: 0});
    if (区别参数 == undefined) 
    {
        面板.标题.text = "丹药列表";
    }
    else if (区别参数 == 1) 
    {
        面板.标题.text = "试用丹药";
    }
    else if (区别参数 == 2) 
    {
        面板.标题.text = "丢弃丹药";
    }
    else if (区别参数 == 3) 
    {
        面板.标题.text = "服用丹药";
    }
    var __reg3 = 0;
    var 所有格子 = [];
    var __reg4 = 0;
    while (__reg4 < 7) 
    {
        var __reg2 = 0;
        while (__reg2 < 3) 
        {
            var __reg5 = 面板.attachMovie("蓝色长条", "蓝色长条" + __reg3, __reg3 + 20, {_x: __reg2 * 180 + 55, _y: __reg4 * 40 + 80});
            所有格子.push(__reg5);
            ++__reg3;
            ++__reg2;
        }
        ++__reg4;
    }
    面板.展示序列 = 0;
    更新丹药详细资料(所有格子, 面板, 区别参数);
    面板.关闭.onPress = function ()
    {
        面板.removeMovieClip();
    }
    ;
    面板.上.onPress = function ()
    {
        if (面板.展示序列 > 0) 
        {
            面板.展示序列 = 面板.展示序列 - 1;
            更新丹药详细资料(所有格子, 面板, 区别参数);
        }
    }
    ;
    面板.下.onPress = function ()
    {
        if (面板.展示序列 < Math.round(主角.丹药.length / 21) - 1) 
        {
            面板.展示序列 = 面板.展示序列 + 1;
            更新丹药详细资料(所有格子, 面板, 区别参数);
        }
    }
    ;
}
function 更新丹药详细资料(所有格子, 面板, 区别参数)
{
    var __reg6 = 面板.展示序列;
    var __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= 所有格子.length) 
        {
            return;
        }
        if (主角.丹药[__reg6 * 21 + __reg3].名称 === undefined) 
        {
            所有格子[__reg3]._visible = false;
        }
        else 
        {
            所有格子[__reg3]._visible = true;
            所有格子[__reg3].文本.text = 主角.丹药[__reg6 * 21 + __reg3].名称;
            所有格子[__reg3].textColor = 0;
            所有格子[__reg3].属性 = __reg6 * 21 + __reg3;
            if (区别参数 == 1) 
            {
                所有格子[__reg3].an.onPress = function ()
                {
                    太监吃下这个药(this._parent.属性);
                }
                ;
            }
            else if (区别参数 == 2) 
            {
                所有格子[__reg3].an.onPress = function ()
                {
                    var __reg4 = 主角.丹药[this._parent.属性].名称;
                    主角.丹药.splice(this._parent.属性, 1);
                    _root.丹药面板.removeMovieClip();
                    _root.内侍面板.removeMovieClip();
                    var __reg3 = _root.青炉房面板.attachMovie("丞相的说话", "丞相的说话", 6800, {_x: 137, _y: 92});
                    __reg3.文本.text = __reg4 + "已丢弃。";
                    __reg3.时间 = 30;
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
                ;
            }
            else if (区别参数 == 3) 
            {
                所有格子[__reg3].an.onPress = function ()
                {
                    var __reg5 = 主角.丹药[this._parent.属性].名称;
                    var __reg3 = 0;
                    while (__reg3 < 主角.丹药[this._parent.属性].增加.length) 
                    {
                        _root.主角[主角.丹药[this._parent.属性].增加[__reg3][0]] = _root.主角[主角.丹药[this._parent.属性].增加[__reg3][0]] + 主角.丹药[this._parent.属性].增加[__reg3][1];
                        ++__reg3;
                    }
                    更新资料();
                    主角.丹药.splice(this._parent.属性, 1);
                    _root.丹药面板.removeMovieClip();
                    _root.内侍面板.removeMovieClip();
                    var __reg4 = _root.青炉房面板.attachMovie("丞相的说话", "丞相的说话", 6800, {_x: 137, _y: 92});
                    __reg4.文本.text = __reg5 + "请皇上慢服。";
                    __reg4.时间 = 30;
                    __reg4.onEnterFrame = function ()
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
                ;
            }
        }
        ++__reg3;
    }
}
function 太监吃下这个药(对象)
{
    var 药剂 = 主角.丹药[对象];
    主角.丹药.splice(对象, 1);
    var 太监名字 = 太监试药面板.对象;
    _root.丹药面板.removeMovieClip();
    _root.太监试药面板.对话.文本.text = "谢皇上赐药。";
    _root.太监试药面板.对话.an.onPress = function ()
    {
        太监吃药来个黑色();
        _root.太监试药面板.对话.文本.text = "过了一会……";
        _root.太监试药面板.对话.an.onPress = function ()
        {
            太监吃药来个黑色();
            _root.太监试药面板.对话.文本.text = "又过了一会……";
            _root.太监试药面板.对话.an.onPress = function ()
            {
                太监吃药来个黑色();
                var __reg2 = 药剂.增加[0];
                if (__reg2[0] == "寿命") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.太监._visible = false;
                        _root.太监试药面板.对话.文本.text = 太监名字 + "脸色发青，已抬出宫外。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "脸色微红，精神抖擞。看来丹药可能有益寿延年之效。";
                    }
                }
                else if (__reg2[0] == "体力上限") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.太监._visible = false;
                        _root.太监试药面板.对话.文本.text = 太监名字 + "印堂发黑，已送往御医所救治。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "双目有光，红光满面。丹药估计有强精壮骨之效。";
                    }
                }
                else if (__reg2[0] == "兴奋") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "好像没什么事发生。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：好奇怪，很想找根柱子蹭一下。";
                    }
                }
                else if (__reg2[0] == "体力") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.太监._visible = false;
                        _root.太监试药面板.对话.文本.text = 太监名字 + "突然晕倒了，已送往御医院。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：感觉精神了很少。";
                    }
                }
                else if (__reg2[0] == "才艺") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：耳朵可以听到鸣叫声。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：感觉耳朵听声音变清晰了。";
                    }
                }
                else if (__reg2[0] == "魅力") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：没什么感觉。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：感觉身体残疾的部分有了生机。";
                    }
                }
                else if (__reg2[0] == "武术") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：没什么感觉。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：没什么感觉。";
                    }
                }
                else if (__reg2[0] == "智慧") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：没什么感觉。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：没什么感觉。";
                    }
                }
                else if (__reg2[0] == "健康") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：感觉有点虚，站不住。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：好像体内觉得舒服通畅了。";
                    }
                }
                else if (__reg2[0] == "快乐") 
                {
                    if (__reg2[1] < 0) 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：感觉心里有种不愉快。";
                    }
                    else 
                    {
                        _root.太监试药面板.对话.文本.text = 太监名字 + "：觉得心情突然好了不少。";
                    }
                }
                else 
                {
                    _root.太监试药面板.对话.文本.text = 太监名字 + "没什么感觉。";
                }
                _root.太监试药面板.对话.an.onPress = function ()
                {
                    _root.太监试药面板.对话.文本.text = "试药结束。";
                    _root.太监试药面板.对话.an.onPress = function ()
                    {
                        _root.太监试药面板.removeMovieClip();
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
function 太监吃药来个黑色()
{
    _root.attachMovie("太监黑色幕布", "太监黑色幕布", 912231, {_x: 0, _y: 0});
    太监黑色幕布.时间 = 30;
    太监黑色幕布.onEnterFrame = function ()
    {
        this.onPress = function ()
        {
        }
        ;
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
function 查看药材程序()
{
    var 药材 = _root.attachMovie("查看药材", "查看药材", 90021, {_x: 0, _y: 0});
    var __reg2 = 0;
    while (__reg2 < 所有药材.length) 
    {
        var __reg4 = 药材.attachMovie("红色小条", "红色小条" + __reg2, __reg2 + 350, {_x: 200, _y: 50 + __reg2 * 45});
        var __reg3 = 药材.attachMovie("小文本条", "文本条" + __reg2, __reg2 + 550, {_x: 340, _y: 50 + __reg2 * 45});
        __reg3._y = __reg3._y + (__reg4._height - __reg3._height) / 2;
        __reg4.文本.text = 所有药材[__reg2].名称;
        __reg3.文本.text = "数量：" + 所有药材[__reg2].数量;
        ++__reg2;
    }
    var __reg5 = 药材.attachMovie("红色小条", "离开", 6000, {_x: 520, _y: 420});
    __reg5.文本.text = "关闭";
    __reg5.an.onPress = function ()
    {
        药材.removeMovieClip();
    }
    ;
}
function 开炉炼丹程序()
{
    if (主角.炼制丹药 == 1) 
    {
        _root.小提示("需要等待七七四十九天");
        return;
    }
    var 面板 = _root.attachMovie("炼丹面板", "炼丹面板", 92000, {_x: 0, _y: 0});
    炉子内的道具 = [];
    var __reg3 = 0;
    while (__reg3 < 9) 
    {
        面板["药" + __reg3]._visible = false;
        面板["药" + __reg3].文本.textColor = 16777215;
        ++__reg3;
    }
    面板.关闭.文本.text = "关闭";
    面板.关闭.onPress = function ()
    {
        if (炉子内的道具.length > 0) 
        {
            var __reg1 = 0;
            while (__reg1 < 炉子内的道具.length) 
            {
                炉子内的道具[__reg1].数量 = 炉子内的道具[__reg1].数量 + 1;
                ++__reg1;
            }
        }
        面板.removeMovieClip();
    }
    ;
    面板.炼制.文本.text = "炼制";
    面板.炼制.onPress = function ()
    {
        if (炉子内的道具.length == 0) 
        {
            _root.小提示("炼丹炉内空无一物");
            return;
        }
        if (炉子内的道具.length < 3) 
        {
            _root.小提示("至少需要放入三种药剂。");
            return;
        }
        主角.炼制丹药 = 1;
        炼制丹药逻辑(炉子内的道具);
        _root.内侍面板.removeMovieClip();
        var __reg3 = _root.青炉房面板.attachMovie("丞相的说话", "丞相的说话", 6800, {_x: 137, _y: 92});
        __reg3.文本.text = "炼丹开始，七七四十九天后方可炼成。";
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
        面板.removeMovieClip();
    }
    ;
    更新药材数量炼制程序(面板);
}
function 装入特殊药材(参数)
{
};
function 炼制丹药逻辑(炉子内的道具)
{
    var __reg4 = "";
    var __reg1 = 0;
    while (__reg1 < 炉子内的道具.length) 
    {
        __reg4 = __reg4 + 炉子内的道具[__reg1].id;
        ++__reg1;
    }
    var __reg7 = "";
    var __reg3 = [];
    var __reg5 = 0;
    if (__reg4 == "327154") 
    {
        __reg7 = "天地长寿丹";
        __reg3 = [["寿命", 6]];
        __reg5 = 0;
    }
    else if (__reg4 == "1234650") 
    {
        __reg7 = "含笑半步颠";
        __reg3 = [["寿命", -200]];
        __reg5 = 1;
    }
    else if (__reg4 == "0342165") 
    {
        __reg7 = "狮虎强壮丹";
        __reg3 = [["体力", 500], ["体力上限", 25]];
        __reg5 = 0;
    }
    else if (__reg4 == "2542370") 
    {
        __reg7 = "七星通络丹";
        __reg3 = [["体力上限", 40]];
        __reg5 = 0;
    }
    else if (__reg4 == "0425") 
    {
        __reg7 = "壮骨丸";
        __reg3 = [["体力上限", 5]];
        __reg5 = 0;
    }
    else if (__reg4 == "1367") 
    {
        __reg7 = "长生丸";
        __reg3 = [["寿命", 1]];
        __reg5 = 0;
    }
    else if (__reg4 == "245") 
    {
        __reg7 = "消疲丹";
        __reg3 = [["体力", 300]];
        __reg5 = 0;
    }
    else 
    {
        var __reg2 = [];
        __reg2[0] = ["红", [["寿命", -4]]];
        __reg2[1] = ["橙", [["体力上限", -35]]];
        __reg2[2] = ["黄", [["寿命", 2]]];
        __reg2[3] = ["绿", [["体力上限", -45]]];
        __reg2[4] = ["青", [["体力上限", 15]]];
        __reg2[5] = ["橙", [["兴奋", 4]]];
        __reg2[6] = ["蓝", [["体力上限", 35], ["寿命", -24]]];
        __reg2[7] = ["紫", [["体力", 280]]];
        __reg2[8] = ["白", [["才艺", 4]]];
        __reg2[9] = ["黑", [["魅力", 3]]];
        __reg2[10] = ["灰", [["武术", 3]]];
        __reg2[11] = ["银", [["智慧", 2]]];
        __reg2[12] = ["金", [["体力", 270], ["寿命", -10]]];
        __reg2[13] = ["褐", [["健康", 50]]];
        __reg2[14] = ["铜", [["快乐", 50]]];
        var __reg10 = ["药丸", "药片", "丹药", "药粉", "颗粒", "药块", "药条"];
        var __reg8 = random(__reg2.length);
        var __reg9 = __reg2[__reg8][1].length;
        __reg1 = 0;
        while (__reg1 < __reg9) 
        {
            __reg3.push(__reg2[__reg8][1][__reg1]);
            ++__reg1;
        }
        __reg5 = 0;
        __reg7 = __reg2[__reg8][0] + "的" + __reg10[random(__reg10.length)];
        if (random(30) == 0) 
        {
            __reg5 = 99;
        }
    }
    主角.丹药列表 = {};
    主角.丹药列表.名称 = __reg7;
    主角.丹药列表.增加 = __reg3;
    主角.丹药列表.特殊 = __reg5;
}
function 更新药材数量炼制程序(面板)
{
    var __reg2 = 0;
    for (;;) 
    {
        if (__reg2 >= 所有药材.length) 
        {
            return;
        }
        var __reg3 = 所有药材[__reg2];
        面板["药材" + __reg2].文本.text = __reg3.名称;
        面板["药材数量" + __reg2].text = __reg3.数量;
        面板["药材" + __reg2].文本.textColor = 16777215;
        面板["药材" + __reg2].属性 = 所有药材[__reg2];
        面板["药材" + __reg2].按.onPress = function ()
        {
            放入炉子药材(this._parent.属性, 面板);
        }
        ;
        ++__reg2;
    }
}
function 放入炉子药材(对象, 面板)
{
    if (炉子内的道具.length >= 9) 
    {
        _root.小提示("炉子内已经放满");
        return;
    }
    if (对象.数量 <= 0) 
    {
        对象.数量 = 0;
        _root.小提示("药材已经用光");
        return;
    }
    if (对象.数量 > 0) 
    {
        --对象.数量;
        炉子内的道具.push(对象);
        更新炉子里的药(面板);
        更新药材数量炼制程序(面板);
        return;
    }
    _root.小提示("异常错误");
}
function 更新炉子里的药(面板)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 9) 
        {
            return;
        }
        面板["药" + __reg1]._visible = false;
        if (炉子内的道具[__reg1] !== undefined) 
        {
            面板["药" + __reg1]._visible = true;
            面板["药" + __reg1].文本.text = 炉子内的道具[__reg1].名称;
        }
        ++__reg1;
    }
}
function 服用丹药程序()
{
    if (_root.主角.丹药.length <= 0) 
    {
        _root.小提示("没有丹药");
        return;
    }
    查看丹药程序(3);
}
function 试验丹药程序()
{
    if (_root.主角.丹药.length <= 0) 
    {
        _root.小提示("没有丹药");
        return;
    }
    _root.attachMovie("太监试药面板", "太监试药面板", 92000, {_x: 0, _y: 0});
    太监试药面板.太监.gotoAndStop(1);
    var __reg2 = "小" + 太监名字字库[random(太监名字字库.length)] + "子";
    var __reg3 = ["习礼监", "御用监", "内官监", "御马监", "司设监", "尚宝监", "神宫监", "尚膳监", "尚衣监", "印绶监", "直殿监", "都知监", "惜薪司", "宝钞司", "钟鼓司", "混堂司", "兵仗局", "巾帽局", "针工局", "内织局", "酒醋局", "司苑局", "银作局", "浣衣局"];
    太监试药面板.对话.文本.text = __reg3[random(__reg3.length)] + __reg2 + "参见皇上。\n皇上传唤小的有什么吩咐。";
    太监试药面板.对象 = __reg2;
    太监试药面板.对话.an.onPress = function ()
    {
        查看丹药程序(1);
    }
    ;
}
function 丢弃丹药程序()
{
    if (_root.主角.丹药.length <= 0) 
    {
        _root.小提示("没有丹药");
        return;
    }
    查看丹药程序(2);
}

//  Action tag #5

function 奇珍宝库程序()
{
    var 面板 = _root.attachMovie("奇珍面板", "奇珍面板", 90021, {_x: 0, _y: 0});
    面板.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
    面板.标题.text = "奇珍宝库";
    面板.文本.text = "";
    var __reg9 = 4;
    var __reg10 = 6;
    var __reg4 = 0;
    var 所有格子 = [];
    var __reg5 = 0;
    while (__reg5 < __reg10) 
    {
        var __reg6 = 0;
        while (__reg6 < __reg9) 
        {
            var __reg3 = 面板.attachMovie("补助小条", "补助小条" + __reg4, 112 + __reg4, {_x: __reg6 * 125 + 87, _y: __reg5 * 35 + 65});
            __reg3.文本.text = "aaaa";
            __reg3.文本.color = "FFCC00";
            __reg3.属性 = __reg4;
            所有格子.push(__reg3);
            ++__reg4;
            ++__reg6;
        }
        ++__reg5;
    }
    var 临时宝物 = [];
    __reg6 = 0;
    while (__reg6 < 我的宝贝.length) 
    {
        临时宝物.push(所有宝贝[我的宝贝[__reg6]]);
        ++__reg6;
    }
    面板.序列 = 0;
    整理宝物展示(临时宝物, 面板, 所有格子);
    面板.上.onPress = function ()
    {
        if (面板.序列 >= 1) 
        {
            面板.序列 = 面板.序列 - 1;
            整理宝物展示(临时宝物, 面板, 所有格子);
        }
    }
    ;
    面板.下.onPress = function ()
    {
        if (面板.序列 < 临时宝物.length / 24) 
        {
            面板.序列 = 面板.序列 + 1;
            整理宝物展示(临时宝物, 面板, 所有格子);
        }
    }
    ;
}
function 整理宝物展示(临时宝物, 面板, 所有格子)
{
    var __reg3 = 0;
    for (;;) 
    {
        if (__reg3 >= 所有格子.length) 
        {
            return;
        }
        var __reg4 = 临时宝物[面板.序列 * 24 + __reg3];
        var __reg2 = 所有格子[__reg3];
        if (__reg4 == undefined) 
        {
            __reg2._visible = false;
        }
        else 
        {
            __reg2._visible = true;
            __reg2.文本.text = __reg4.名称;
            __reg2.取 = __reg4;
            __reg2.序列号数 = 面板.序列 * 24 + __reg3;
            __reg2.an.onPress = function ()
            {
                使用这个珍宝道具(this._parent.取, 面板, this._parent.序列号数);
            }
            ;
            __reg2.an.onRollOut = function ()
            {
                面板.文本.text = "";
            }
            ;
            __reg2.an.onRollOver = function ()
            {
                var __reg2 = 转换成星(this._parent.取.级别);
                面板.文本.text = this._parent.取.名称 + "   稀世度：" + __reg2 + "。\n";
                面板.文本.text = 面板.文本.text + this._parent.取.说明;
            }
            ;
        }
        ++__reg3;
    }
}
function 使用这个珍宝道具(对象, 面板, 序列号码)
{
    模糊特效(面板);
    var 板子 = _root.attachMovie("内侍面板", "内侍面板", 90051, {_x: 0, _y: 0});
    板子.文本.text = "皇上，这件珍宝：" + 对象.名称 + "您想怎么处理？";
    板子.文0.text = "送给大臣";
    板子.文1.text = "送给妃子";
    板子.文2.text = "贱价处理";
    var __reg2 = 55;
    板子.文0._x = 板子.文0._x + __reg2;
    板子.文1._x = 板子.文1._x + __reg2;
    板子.文2._x = 板子.文2._x + __reg2;
    板子.an0._x = 板子.an0._x + __reg2;
    板子.an1._x = 板子.an1._x + __reg2;
    板子.an2._x = 板子.an2._x + __reg2;
    板子.an0.onPress = function ()
    {
        赏赐显示大臣的面板(对象, 序列号码);
        板子.removeMovieClip();
        面板.removeMovieClip();
        _root.紫辰殿面板.removeMovieClip();
        _root.内侍面板.removeMovieClip();
    }
    ;
    板子.an1.onPress = function ()
    {
        赏赐妃子的程序(对象, 序列号码);
        板子.removeMovieClip();
        面板.removeMovieClip();
        _root.紫辰殿面板.removeMovieClip();
        _root.内侍面板.removeMovieClip();
    }
    ;
    板子.an2.onPress = function ()
    {
        if (序列号码 == 0) 
        {
            小提示("卖了用啥盖印。");
            return;
        }
        变卖这个珍宝(对象, 序列号码);
        板子.removeMovieClip();
        面板.removeMovieClip();
        _root.紫辰殿面板.removeMovieClip();
        _root.内侍面板.removeMovieClip();
    }
    ;
    板子.文3.text = "";
    板子.an3._visible = false;
    板子.取消.onPress = function ()
    {
        板子.removeMovieClip();
        面板.removeMovieClip();
        _root.紫辰殿面板.removeMovieClip();
        _root.内侍面板.removeMovieClip();
    }
    ;
}
function 转换成星(级别)
{
    var __reg1 = "☆☆☆☆☆☆";
    if (级别 == "S") 
    {
        __reg1 = "★★★★★★";
    }
    else if (级别 == "A") 
    {
        __reg1 = "★★★★★☆";
    }
    else if (级别 == "B") 
    {
        __reg1 = "★★★★☆☆";
    }
    else if (级别 == "C") 
    {
        __reg1 = "★★★☆☆☆";
    }
    else if (级别 == "D") 
    {
        __reg1 = "★★☆☆☆☆";
    }
    else if (级别 == "E") 
    {
        __reg1 = "★☆☆☆☆☆";
    }
    return __reg1;
}
function 来一个宝贝()
{
    if (剩余宝贝.length <= 0) 
    {
        __reg2 = 100;
    }
    else 
    {
        var __reg2 = 剩余宝贝[random(剩余宝贝.length)];
        var __reg1 = 0;
        while (__reg1 < 剩余宝贝.length) 
        {
            if (剩余宝贝[__reg1] == __reg2) 
            {
                剩余宝贝.splice(__reg1, 1);
            }
            ++__reg1;
        }
    }
    我的宝贝.push(__reg2);
    return 所有宝贝[__reg2].名称;
}
function 赏赐显示大臣的面板(珍宝, 序列号码)
{
    var 面板 = _root.attachMovie("丹药面板", "丹药面板", 90151, {_x: 0, _y: 0});
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
        面板.临时列表.push(所有人才[__reg6]);
        ++__reg6;
    }
    面板.序列 = 0;
    面板.珍宝 = 珍宝;
    更新赏赐官员的列表(面板, 按钮数据, 序列号码);
    面板.上.onPress = function ()
    {
        if (面板.序列 > 0) 
        {
            面板.序列 = 面板.序列 - 25;
            更新赏赐官员的列表(面板, 按钮数据, 序列号码);
        }
    }
    ;
    面板.下.onPress = function ()
    {
        if (面板.序列 < 面板.临时列表.length - 25) 
        {
            面板.序列 = 面板.序列 + 25;
            更新赏赐官员的列表(面板, 按钮数据, 序列号码);
        }
    }
    ;
}
function 更新赏赐官员的列表(面板, 按钮数据, 序列号码)
{
    var __reg1 = 0;
    for (;;) 
    {
        if (__reg1 >= 按钮数据.length) 
        {
            return;
        }
        赏赐官员的按钮程序啊(面板, 按钮数据[__reg1], 面板.序列 + __reg1, 序列号码);
        ++__reg1;
    }
}
function 赏赐官员的按钮程序啊(面板, 对象, 序列, 序列号码)
{
    var 数据 = 面板.临时列表[序列];
    if (数据.名字 == undefined) 
    {
        对象._visible = false;
        return;
    }
    对象._visible = true;
    对象.文本.text = 数据.名字;
    对象.按.数据 = 数据;
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
        赏赐这个大臣确定(this.数据, 面板.珍宝, 面板, 序列号码);
    }
    ;
}
function 赏赐这个大臣确定(人物, 珍宝, 面板, 序列号码)
{
    trace("可以赏赐了：" + 人物.名字 + "/" + 珍宝.类);
    出现紫宸殿图形面板();
    _root.紫辰殿面板.路人对话.文本.text = "赐" + 珍宝.名称 + "，予" + 人物.名字 + "，奴才这就去。";
    var 结果的话 = "";
    trace("打印序列号码：" + 序列号码);
    if (珍宝.类 == "国") 
    {
        __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：臣万死不敢接受这个东西。(珍宝已退回。)";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "跪在那，一句不吭。(珍宝已退回。)";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：臣罪该万死，但臣绝对忠诚于皇上。(珍宝已退回。)";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：传国玉玺雕刻得真精美啊。(珍宝已退回。)";
        }
    }
    else if (珍宝.类 == "杂") 
    {
        __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：臣谢皇上隆恩。(大臣很高兴，忠诚提高。)";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：谢主隆恩。(大臣很高兴，忠诚提高。)";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：皇上太帅了。(大臣很高兴，忠诚提高。)";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：万岁万岁万万岁。(大臣很高兴，忠诚提高。)";
        }
        人物.忠诚 = 100;
        我的宝贝.splice(序列号码, 1);
    }
    else if (珍宝.类 == "情") 
    {
        __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：皇上这是什么意思?(珍宝已退回。)";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：公公，这东西是做怎么用的?(珍宝已退回。)";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：公公，赐这东西，臣下实在想不通。(珍宝已退回。)";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：公公，你拿错了吧。(珍宝已退回。)";
        }
    }
    else if (珍宝.类 == "毒") 
    {
        var __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：哎，君让臣死，臣不得不死……";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：俗话说伴君如伴虎，我认了……";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：愿来世还能继续辅佐皇上……";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.名字 + "：皇上这是为什么，老臣死不瞑目啊……";
        }
        取名(1);
        var __reg5 = 临时名字;
        官员属性更换程序(人物, __reg5);
        我的宝贝.splice(序列号码, 1);
    }
    _root.紫辰殿面板.路人对话.an.onPress = function ()
    {
        缓动黑幕();
        _root.紫辰殿面板.路人对话.文本.text = 结果的话;
        _root.紫辰殿面板.路人对话.an.onPress = function ()
        {
            烧掉截图(_root);
            _root.紫辰殿面板.removeMovieClip();
        }
        ;
    }
    ;
    面板.removeMovieClip();
}
function 出现紫宸殿图形面板()
{
    var 面板 = _root.attachMovie("紫辰殿面板", "紫辰殿面板", 90171, {_x: 0, _y: 0});
    面板.取消._visible = false;
    面板.离开文字.text = "";
    var __reg2 = 面板.attachMovie("路人对话", "路人对话", 90171, {_x: 0, _y: 0});
    __reg2.文本.text = "ssss";
    __reg2.an.onPress = function ()
    {
        烧掉截图(_root);
        面板.removeMovieClip();
    }
    ;
}
function 赏赐妃子的程序(珍宝, 序列)
{
    _root.attachMovie("后宫面板", "后宫的面板", 92000, {_x: 0, _y: 0});
    后宫的面板.标题.text = "想将宝物赐予哪位娘娘?";
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
        trace("主角.后宫[i].称呼:" + 主角.后宫[__reg3].称呼);
        if (主角.后宫[__reg3].名字 !== undefined) 
        {
            后宫的面板["后宫" + __reg3].属性 = 主角.后宫[__reg3];
            后宫的面板["后宫" + __reg3].名字.text = 主角.后宫[__reg3].名字;
            后宫的面板["后宫" + __reg3].按.onRelease = function ()
            {
                赠予妃子的程序(珍宝, 序列, this._parent.属性);
                _root.后宫的面板.removeMovieClip();
            }
            ;
        }
        ++__reg3;
    }
    后宫的面板.安排宫女._visible = false;
}
function 赠予妃子的程序(珍宝, 序列, 属性)
{
    trace("打印一下：" + 珍宝.名称 + "/" + 珍宝.类 + "/" + 序列 + "/" + 属性.称呼);
    赏赐这个妃子确定(属性, 珍宝, 面板, 序列);
}
function 赏赐这个妃子确定(人物, 珍宝, 面板, 序列号码)
{
    trace("可以赏赐了：" + 人物.名字 + "/" + 珍宝.类);
    出现紫宸殿图形面板();
    _root.紫辰殿面板.路人对话.文本.text = "赐" + 珍宝.名称 + "，予" + 人物.称呼 + "娘娘，奴才这就去。";
    var 结果的话 = "";
    trace("打印序列号码：" + 序列号码);
    if (珍宝.类 == "国") 
    {
        __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：玉玺真好看。(珍宝已退回。)";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：这个玉玺最配威武的皇上了。(珍宝已退回。)";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：雕刻得真精致呀。(珍宝已退回。)";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：据说玉玺是由和氏璧雕制而成。(珍宝已退回。)";
        }
    }
    else if (珍宝.类 == "杂") 
    {
        __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：臣谢皇上隆恩。(娘娘很高兴，◎提高。)";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：谢主隆恩。(娘娘很高兴，◎提高。)";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：皇上太帅了。(娘娘很高兴，◎提高。)";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：万岁万岁万万岁。(娘娘很高兴，◎提高。)";
        }
        人物.爱 = 人物.爱 + 10;
        我的宝贝.splice(序列号码, 1);
    }
    else if (珍宝.类 == "情") 
    {
        __reg3 = random(4);
        if (__reg3 == 0) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：这是什么。[羞]";
        }
        else if (__reg3 == 1) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：[惊]这是什么！";
        }
        else if (__reg3 == 2) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：[惊]这是什么……[呆]";
        }
        else if (__reg3 == 3) 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：[惊]这是什么。[羞])";
        }
        人物.爱 = 人物.爱 + 50;
        我的宝贝.splice(序列号码, 1);
    }
    else if (珍宝.类 == "毒") 
    {
        if (人物.称呼 == "皇后") 
        {
            结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：臣妾绝不喝这个。";
        }
        else 
        {
            var __reg3 = random(4);
            if (__reg3 == 0) 
            {
                结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：臣妾先走一步了……";
            }
            else if (__reg3 == 1) 
            {
                结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：看错皇上了……";
            }
            else if (__reg3 == 2) 
            {
                结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：愿来世还能继续伺候皇上……";
            }
            else if (__reg3 == 3) 
            {
                结果的话 = "奴才回来了。\n" + 人物.称呼 + "娘娘 " + 人物.名字 + "：皇上，你好狠心。";
            }
            人物.名字 = undefined;
        }
        我的宝贝.splice(序列号码, 1);
    }
    _root.紫辰殿面板.路人对话.an.onPress = function ()
    {
        缓动黑幕();
        _root.紫辰殿面板.路人对话.文本.text = 结果的话;
        _root.紫辰殿面板.路人对话.an.onPress = function ()
        {
            烧掉截图(_root);
            _root.紫辰殿面板.removeMovieClip();
        }
        ;
    }
    ;
    面板.removeMovieClip();
}
function 变卖这个珍宝(珍宝, 序列号码)
{
    trace(珍宝.名称 + "/" + 珍宝.类);
    我的宝贝.splice(序列号码, 1);
    var __reg2 = random(40) * 10000;
    var __reg3 = 所有国内的大名人[random(所有国内的大名人.length)];
    var __reg4 = "拍卖吸引不少国内名人，最终" + __reg3 + "以" + __reg2 + "两白银，将" + 珍宝.名称 + "购走。";
    国家.金钱 = 国家.金钱 + __reg2;
    更新资料();
    特殊说话(__reg4, 4);
    _root.特殊出现对话.太监报告事情的图形.继续.onPress = function ()
    {
        烧掉截图(_root);
        _root.特殊出现对话.removeMovieClip();
    }
    ;
}
function 浩荡出巡程序()
{
    var 面板 = _root.attachMovie("浩荡出巡面板", "浩荡出巡面板", 90005, {_x: 0, _y: 0});
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
    var __reg10 = 4;
    var __reg11 = 12;
    var __reg3 = 0;
    var __reg7 = 0;
    while (__reg7 < __reg11) 
    {
        __reg5 = 0;
        while (__reg5 < __reg10) 
        {
            if (__reg3 < __reg6.length) 
            {
                var __reg4 = 面板.attachMovie("补助小条", "补助小条" + __reg3, 112 + __reg3, {_x: __reg5 * 125 + 80, _y: __reg7 * 35 + 80});
                __reg4.文本.text = __reg6[__reg3].名称;
                __reg4.属性 = __reg6[__reg3];
                __reg4.an.onPress = function ()
                {
                    if (this._parent.属性.行宫 >= 3) 
                    {
                        浩荡出巡程序哦(this._parent.属性);
                        面板.removeMovieClip();
                        return;
                    }
                    _root.小提示("需要建设三级行宫");
                }
                ;
                ++__reg3;
            }
            ++__reg5;
        }
        ++__reg7;
    }
    面板.关闭.onRelease = function ()
    {
        面板.removeMovieClip();
        _root.内侍面板.removeMovieClip();
    }
    ;
}
function 浩荡出巡程序哦(城市)
{
    _root.内侍面板.removeMovieClip();
    var 浩荡图 = _root.attachMovie("浩荡出巡的图", "浩荡出巡的图", 90902, {_x: 0, _y: 0});
    var 对话框 = 浩荡图.attachMovie("对话框面板", "对话框面板", 5000, {_x: 0, _y: 0});
    对话框._x = (640 - 对话框._width) / 2;
    对话框._y = 380;
    对话框.文本.text = "当地百姓庆祝皇帝出巡到此。";
    对话框.an.onRelease = function ()
    {
        对话框.文本.text = "皇威增加，当地民心治安发生变化。";
        加载进步动画条的说("金钱");
        加载进步动画条的说("威望");
        城市.民心 = 城市.民心 + 15;
        if (城市.民心 > 100) 
        {
            城市.民心 = 100;
        }
        对话框.文本.text = 对话框.文本.text + ("\n当前民心升至：" + 城市.民心);
        var __reg2 = random(30000) + 30000;
        国库钱数变动的程序(__reg2 * -1);
        _root.主角.威望 = _root.主角.威望 + (random(10) + 10);
        if (_root.主角.威望 > 1000) 
        {
            _root.主角.威望 = 1000;
        }
        更新资料();
        对话框.an.onRelease = function ()
        {
            浩荡图.removeMovieClip();
            _root.紫辰殿面板.removeMovieClip();
            主角.当前时辰 = 4;
            时辰推进();
        }
        ;
    }
    ;
}

//  Action tag #6

function 更新各城府的数据()
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
            var __reg2 = _root.所有城池[__reg4];
            var __reg5 = Math.round((__reg2.人口 + __reg2.壮丁) / 10000);
            __reg2.治安 = 城市的哪个百分比程序(__reg2.衙门 * 15, __reg5);
            __reg2.运输 = 城市的哪个百分比程序(__reg2.市集 * 10, __reg5);
            __reg2.体能 = 城市的哪个百分比程序(__reg2.校场 * 10, __reg5);
            __reg2.城防 = 城市的哪个百分比程序(__reg2.城墙 * 20, __reg5);
            var __reg7 = __reg2.义仓 * 10 - __reg5;
            if (__reg7 < 0) 
            {
                __reg2.积粮 = 0;
            }
            else 
            {
                __reg2.积粮 = __reg7;
            }
            __reg2.安定 = 城市的哪个百分比程序(__reg2.寺庙 * 20, __reg5);
            var __reg3 = 0;
            while (__reg3 < _root.所有人才.length) 
            {
                if (0 != (_root.所有人才[__reg3].类 == "知府") & 0 != (_root.所有人才[__reg3].城.id == _root.所有城池[__reg4].id)) 
                {
                    var __reg6 = _root.所有人才[__reg3];
                }
                ++__reg3;
            }
            if (__reg6.清廉 < 50) 
            {
                if (random(2) == 1) 
                {
                    __reg2.民心 = __reg2.民心 - 1;
                }
            }
            else if (__reg6.清廉 > 80) 
            {
                if (random(2) == 1) 
                {
                    __reg2.民心 = __reg2.民心 + 1;
                }
            }
            if (国家.税率 > 25) 
            {
                __reg2.民心 = __reg2.民心 - 1;
            }
            else if (国家.税率 > 40) 
            {
                __reg2.民心 = __reg2.民心 - 3;
            }
            else if (random(4) == 1) 
            {
                __reg2.民心 = __reg2.民心 + 1;
            }
            if (__reg2.民心 > 100) 
            {
                __reg2.民心 = 100;
            }
            if (__reg2.民心 < 20) 
            {
                __reg2.民心 = 20;
            }
        }
        ++__reg4;
    }
}
function 城市的哪个百分比程序(基础值, 人口)
{
    var __reg1 = Math.round(基础值 / 人口 * 100);
    if (__reg1 <= 0) 
    {
        __reg1 = 0;
    }
    else if (__reg1 > 100) 
    {
        __reg1 = 100;
    }
    return __reg1;
}
function 暂时不做这个记录()
{
    var __reg7 = 0;
    var __reg5 = 0;
    var __reg12 = 0;
    var __reg4 = 0;
    var __reg6 = 0;
    var __reg10 = 0;
    var __reg8 = 0;
    var __reg11 = 0;
    var __reg9 = 0;
    收支表.总数.text = "国库现有白银：" + Math.round(_root.主角.国库.金钱 / 10000) + "万两，粮食：" + Math.round(_root.主角.国库.粮食 / 10000) + "万石。";
    var __reg3 = 0;
    while (__reg3 < _root.所有城池.length) 
    {
        if (_root.所有城池[__reg3].归属 == 8) 
        {
            ++__reg7;
            __reg5 = __reg5 + _root.所有城池[__reg3].人口;
            _root.所有城池[__reg3].黄金 = Math.round((_root.所有城池[__reg3].人口 / 10000 / 4 - _root.所有城池[__reg3].士兵 / 10000) * 1 + _root.所有城池[__reg3].市集 / 10);
            _root.所有城池[__reg3].粮食 = Math.round((_root.所有城池[__reg3].人口 / 10000 / 2 - _root.所有城池[__reg3].士兵 / 10000) * 1 + _root.所有城池[__reg3].农田 / 10);
            __reg4 = __reg4 + _root.所有城池[__reg3].黄金;
            __reg6 = __reg6 + _root.所有城池[__reg3].粮食;
            临时文 = undefined;
            var __reg2 = 0;
            while (__reg2 < _root.所有人才.length) 
            {
                if (0 != (_root.所有人才[__reg2].类 == "知府") & 0 != (_root.所有人才[__reg2].城.id == _root.所有城池[__reg3].id)) 
                {
                    临时文 = _root.所有人才[__reg2];
                }
                ++__reg2;
            }
            __reg10 = __reg10 + 临时文.清廉;
            __reg8 = __reg8 + _root.所有城池[__reg3].士兵;
            __reg9 = __reg9 + _root.所有城池[__reg3].义仓;
        }
        ++__reg3;
    }
    __reg3 = 0;
    while (__reg3 < _root.所有人才.length) 
    {
        __reg11 = __reg11 + _root.所有俸禄[_root.所有人才[__reg3].地位];
        ++__reg3;
    }
    地区数.text = "回禀皇上：我国拥有地区" + __reg7 + "个,人口" + Math.round(__reg5 / 10000) + "万人。";
    收入数.text = "目前水平，国家每年可以收入税收：白银 " + __reg4 + "万两，粮食 " + __reg6 + "万石";
}

//  Action tag #7

function 每月奏折面板()
{
    var 每月的奏折 = _root.attachMovie("每月的奏折", "每月的奏折", 150, {_x: 6, _y: 443});
    每月的奏折.地方奏折.onPress = function ()
    {
        var __reg2 = _root.attachMovie("奏折面板", "奏折面板", 90000, {_x: 0, y: 0});
        显示奏折内容(__reg2, _root.显示用的地方收成表);
    }
    ;
    每月的奏折.官员奏折.onPress = function ()
    {
        if (_root.每月的官员奏折.length <= 0) 
        {
            _root.小提示("无重要的官员奏折");
            return;
        }
        var __reg2 = _root.attachMovie("奏折面板", "奏折面板", 90000, {_x: 0, y: 0});
        显示奏折内容2(__reg2, _root.每月的官员奏折);
    }
    ;
    每月的奏折.军事奏折.onPress = function ()
    {
        if (_root.每月的军事奏折 == "") 
        {
            _root.小提示("无重要的军事奏折");
            return;
        }
        var __reg3 = _root.attachMovie("奏折面板", "奏折面板", 90000, {_x: 0, y: 0});
        __reg3.文本.text = _root.每月的军事奏折;
        __reg3.关闭.onPress = function ()
        {
            this._parent.removeMovieClip();
        }
        ;
    }
    ;
    每月的奏折.关闭.onPress = function ()
    {
        每月的奏折.removeMovieClip();
    }
    ;
}
function 记载入官员奏折的程序(文本)
{
    每月的官员奏折.push(文本);
}
function 每月官员的弹劾奏折()
{
    if (random(3) == 0) 
    {
        var __reg6 = random(3);
        var __reg4 = [];
        var __reg1 = 0;
        while (__reg1 < 所有人才.length) 
        {
            __reg4.push(所有人才[__reg1].名字);
            ++__reg1;
        }
        __reg4.sort(打乱数组程序);
        var __reg5 = ["调戏民女", "嚣张跋扈", "非法圈地", "作风问题", "纵容亲属", "言语不敬", "拉帮结派", "私自敛财", "饮酒失态", "出入青楼"];
        __reg1 = 0;
        for (;;) 
        {
            if (__reg1 >= __reg6) 
            {
                return;
            }
            var __reg2 = __reg4[__reg1];
            var __reg3 = __reg5[random(__reg5.length)];
            每月的官员奏折.push(__reg2 + " 被言官以 “" + __reg3 + "” 理由上本弹劾。");
            ++__reg1;
        }
    }
}
function 显示奏折内容2(面板, 内容)
{
    面板.文本.text = "";
    var __reg2 = 0;
    while (__reg2 < 内容.length) 
    {
        面板.文本.text = 面板.文本.text + (内容[__reg2] + "\n");
        ++__reg2;
    }
    面板.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
}
function 显示奏折内容(面板, 内容)
{
    面板.文本.text = 内容;
    面板.关闭.onPress = function ()
    {
        this._parent.removeMovieClip();
    }
    ;
}
function 每月奏折取消()
{
    if (_root.每月的奏折 !== undefined) 
    {
        每月的奏折.removeMovieClip();
    }
}
每月的官员奏折 = [];
每月的军事奏折 = "";

