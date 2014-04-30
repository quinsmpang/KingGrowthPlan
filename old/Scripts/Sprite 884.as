//Sprite 884
//  InitClip
dynamic class mx.skins.halo.RectBorder extends mx.skins.RectBorder
{
    static var symbolName: String = "RectBorder";
    static var symbolOwner = mx.skins.halo.RectBorder;
    static var version: String = "2.0.2.127";
    var borderCapColorName: String = "borderCapColor";
    var shadowCapColorName: String = "shadowCapColor";
    var colorList = {highlightColor: 0, borderColor: 0, buttonColor: 0, shadowColor: 0, borderCapColor: 0, shadowCapColor: 0};
    var borderWidths = {none: 0, solid: 1, inset: 2, outset: 2, alert: 3, dropDown: 2, menuBorder: 2, comboNonEdit: 2};
    static var classConstructed = mx.skins.halo.RectBorder.classConstruct();
    static var UIObjectExtensionsDependency = mx.core.ext.UIObjectExtensions;
    var __borderMetrics;
    var _color;
    var backgroundColorName;
    var beginFill;
    var borderColorName;
    var borderStyleName;
    var buttonColorName;
    var className;
    var clear;
    var drawRect;
    var drawRoundRect;
    var endFill;
    var getStyle;
    var highlightColorName;
    var offset;
    var shadowColorName;

    function RectBorder()
    {
        super();
    }

    function init(Void)
    {
        this.borderWidths["default"] = 3;
        super.init();
    }

    function getBorderMetrics(Void)
    {
        if (this.offset == undefined) 
        {
            var __reg3 = this.getStyle(this.borderStyleName);
            this.offset = this.borderWidths[__reg3];
        }
        if (this.getStyle(this.borderStyleName) == "default" || this.getStyle(this.borderStyleName) == "alert") 
        {
            this.__borderMetrics = {left: 3, top: 1, right: 3, bottom: 3};
            return this.__borderMetrics;
        }
        return super.getBorderMetrics();
    }

    function drawBorder(Void)
    {
        var __reg6 = _global.styles[this.className];
        if (__reg6 == undefined) 
        {
            __reg6 = _global.styles.RectBorder;
        }
        var __reg5 = this.getStyle(this.borderStyleName);
        var __reg7 = this.getStyle(this.borderColorName);
        if (__reg7 == undefined) 
        {
            __reg7 = __reg6[this.borderColorName];
        }
        var __reg8 = this.getStyle(this.backgroundColorName);
        if (__reg8 == undefined) 
        {
            __reg8 = __reg6[this.backgroundColorName];
        }
        var __reg16 = this.getStyle("backgroundImage");
        if (__reg5 != "none") 
        {
            var __reg14 = this.getStyle(this.shadowColorName);
            if (__reg14 == undefined) 
            {
                __reg14 = __reg6[this.shadowColorName];
            }
            var __reg13 = this.getStyle(this.highlightColorName);
            if (__reg13 == undefined) 
            {
                __reg13 = __reg6[this.highlightColorName];
            }
            var __reg12 = this.getStyle(this.buttonColorName);
            if (__reg12 == undefined) 
            {
                __reg12 = __reg6[this.buttonColorName];
            }
            var __reg11 = this.getStyle(this.borderCapColorName);
            if (__reg11 == undefined) 
            {
                __reg11 = __reg6[this.borderCapColorName];
            }
            var __reg10 = this.getStyle(this.shadowCapColorName);
            if (__reg10 == undefined) 
            {
                __reg10 = __reg6[this.shadowCapColorName];
            }
        }
        this.offset = this.borderWidths[__reg5];
        var __reg9 = this.offset;
        var __reg3 = this.__get__width();
        var __reg4 = this.__get__height();
        this.clear();
        this._color = undefined;
        if (__reg5 != "none") 
        {
            if (__reg5 == "inset") 
            {
                this._color = this.colorList;
                this.draw3dBorder(__reg11, __reg12, __reg7, __reg13, __reg14, __reg10);
            }
            else if (__reg5 == "outset") 
            {
                this._color = this.colorList;
                this.draw3dBorder(__reg11, __reg7, __reg12, __reg14, __reg13, __reg10);
            }
            else if (__reg5 == "alert") 
            {
                __reg15 = this.getStyle("themeColor");
                this.drawRoundRect(0, 5, __reg3, __reg4 - 5, 5, 6184542, 10);
                this.drawRoundRect(1, 4, __reg3 - 2, __reg4 - 5, 4, [6184542, 6184542], 10, 0, "radial");
                this.drawRoundRect(2, 0, __reg3 - 4, __reg4 - 2, 3, [0, 14342874], 100, 0, "radial");
                this.drawRoundRect(2, 0, __reg3 - 4, __reg4 - 2, 3, __reg15, 50);
                this.drawRoundRect(3, 1, __reg3 - 6, __reg4 - 4, 2, 16777215, 100);
            }
            else if (__reg5 == "default") 
            {
                this.drawRoundRect(0, 5, __reg3, __reg4 - 5, {tl: 5, tr: 5, br: 0, bl: 0}, 6184542, 10);
                this.drawRoundRect(1, 4, __reg3 - 2, __reg4 - 5, {tl: 4, tr: 4, br: 0, bl: 0}, [6184542, 6184542], 10, 0, "radial");
                this.drawRoundRect(2, 0, __reg3 - 4, __reg4 - 2, {tl: 3, tr: 3, br: 0, bl: 0}, [12897484, 11844796], 100, 0, "radial");
                this.drawRoundRect(3, 1, __reg3 - 6, __reg4 - 4, {tl: 2, tr: 2, br: 0, bl: 0}, 16777215, 100);
            }
            else if (__reg5 == "dropDown") 
            {
                this.drawRoundRect(0, 0, __reg3 + 1, __reg4, {tl: 4, tr: 0, br: 0, bl: 4}, [13290186, 7895160], 100, -10, "linear");
                this.drawRoundRect(1, 1, __reg3 - 1, __reg4 - 2, {tl: 3, tr: 0, br: 0, bl: 3}, 16777215, 100);
            }
            else if (__reg5 == "menuBorder") 
            {
                var __reg15 = this.getStyle("themeColor");
                this.drawRoundRect(4, 4, __reg3 - 2, __reg4 - 3, 0, [6184542, 6184542], 10, 0, "radial");
                this.drawRoundRect(4, 4, __reg3 - 1, __reg4 - 2, 0, 6184542, 10);
                this.drawRoundRect(0, 0, __reg3 + 1, __reg4, 0, [0, 14342874], 100, 250, "linear");
                this.drawRoundRect(0, 0, __reg3 + 1, __reg4, 0, __reg15, 50);
                this.drawRoundRect(2, 2, __reg3 - 3, __reg4 - 4, 0, 16777215, 100);
            }
            else if (__reg5 != "comboNonEdit") 
            {
                this.beginFill(__reg7);
                this.drawRect(0, 0, __reg3, __reg4);
                this.drawRect(1, 1, __reg3 - 1, __reg4 - 1);
                this.endFill();
                this._color = this.borderColorName;
            }
        }
        if (__reg8 != undefined) 
        {
            this.beginFill(__reg8);
            this.drawRect(__reg9, __reg9, this.__get__width() - __reg9, this.__get__height() - __reg9);
            this.endFill();
        }
    }

    function draw3dBorder(c1, c2, c3, c4, c5, c6)
    {
        var __reg3 = this.__get__width();
        var __reg2 = this.__get__height();
        this.beginFill(c1);
        this.drawRect(0, 0, __reg3, __reg2);
        this.drawRect(1, 0, __reg3 - 1, __reg2);
        this.endFill();
        this.beginFill(c2);
        this.drawRect(1, 0, __reg3 - 1, 1);
        this.endFill();
        this.beginFill(c3);
        this.drawRect(1, __reg2 - 1, __reg3 - 1, __reg2);
        this.endFill();
        this.beginFill(c4);
        this.drawRect(1, 1, __reg3 - 1, 2);
        this.endFill();
        this.beginFill(c5);
        this.drawRect(1, __reg2 - 2, __reg3 - 1, __reg2 - 1);
        this.endFill();
        this.beginFill(c6);
        this.drawRect(1, 2, __reg3 - 1, __reg2 - 2);
        this.drawRect(2, 2, __reg3 - 2, __reg2 - 2);
        this.endFill();
    }

    static function classConstruct()
    {
        mx.core.ext.UIObjectExtensions.Extensions();
        _global.styles.rectBorderClass = mx.skins.halo.RectBorder;
        _global.skinRegistry.RectBorder = true;
        return true;
    }

}

