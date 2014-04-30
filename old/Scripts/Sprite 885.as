//Sprite 885
//  InitClip
dynamic class mx.skins.halo.ButtonSkin extends mx.skins.RectBorder
{
    static var symbolName: String = "ButtonSkin";
    static var symbolOwner = mx.skins.halo.ButtonSkin;
    var className: String = "ButtonSkin";
    var backgroundColorName: String = "buttonColor";
    static var classConstructed = mx.skins.halo.ButtonSkin.classConstruct();
    static var UIObjectExtensionsDependency = mx.core.ext.UIObjectExtensions;
    var _parent;
    var clear;
    var drawRoundRect;
    var getStyle;

    function ButtonSkin()
    {
        super();
    }

    function init()
    {
        super.init();
    }

    function size()
    {
        this.drawHaloRect(this.__get__width(), this.__get__height());
    }

    function drawHaloRect(w, h)
    {
        var __reg6 = this.getStyle("borderStyle");
        var __reg4 = this.getStyle("themeColor");
        var __reg5 = this._parent.emphasized;
        this.clear();
        if ((__reg0 = __reg6) === "falseup") 
        {
            if (__reg5) 
            {
                this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, 9542041, 100);
                this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, __reg4, 75);
                this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, [3355443, 16777215], 85, 0, "radial");
                this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, [0, 14342874], 100, 0, "radial");
                this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, __reg4, 75);
                this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 3, w - 6, h - 6, 2, 16777215, 100);
                this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 4, w - 6, h - 7, 2, 16316664, 100);
            }
            else 
            {
                this.drawRoundRect(0, 0, w, h, 5, 9542041, 100);
                this.drawRoundRect(1, 1, w - 2, h - 2, 4, [13291985, 16250871], 100, 0, "radial");
                this.drawRoundRect(2, 2, w - 4, h - 4, 3, [9542041, 13818586], 100, 0, "radial");
                this.drawRoundRect(3, 3, w - 6, h - 6, 2, 16777215, 100);
                this.drawRoundRect(3, 4, w - 6, h - 7, 2, 16316664, 100);
            }
            return;
        }
        else if (__reg0 === "falsedown") 
        {
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, 9542041, 100);
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, [3355443, 16579836], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, __reg4, 50);
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, [0, 14342874], 100, 0, "radial");
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, __reg4, 40);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 3, w - 6, h - 6, 2, 16777215, 100);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 4, w - 6, h - 7, 2, __reg4, 20);
            return;
        }
        else if (__reg0 === "falserollover") 
        {
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, 9542041, 100);
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, __reg4, 50);
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, [3355443, 16777215], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, [0, 14342874], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, __reg4, 50);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 3, w - 6, h - 6, 2, 16777215, 100);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 4, w - 6, h - 7, 2, 16316664, 100);
            return;
        }
        else if (__reg0 === "falsedisabled") 
        {
            this.drawRoundRect(0, 0, w, h, 5, 13159628, 100);
            this.drawRoundRect(1, 1, w - 2, h - 2, 4, 15921906, 100);
            this.drawRoundRect(2, 2, w - 4, h - 4, 3, 13949401, 100);
            this.drawRoundRect(3, 3, w - 6, h - 6, 2, 15921906, 100);
            return;
        }
        else if (__reg0 === "trueup") 
        {
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, 10066329, 100);
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, [3355443, 16579836], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, __reg4, 50);
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, [0, 14342874], 100, 0, "radial");
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, __reg4, 40);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 3, w - 6, h - 6, 2, 16777215, 100);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 4, w - 6, h - 7, 2, 16250871, 100);
            return;
        }
        else if (__reg0 === "truedown") 
        {
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, 10066329, 100);
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, [3355443, 16579836], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, __reg4, 50);
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, [0, 14342874], 100, 0, "radial");
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, __reg4, 40);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 3, w - 6, h - 6, 2, 16777215, 100);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 4, w - 6, h - 7, 2, __reg4, 20);
            return;
        }
        else if (__reg0 === "truerollover") 
        {
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, 9542041, 100);
            this.drawRoundRect(this.__get__x(), this.__get__y(), w, h, 5, __reg4, 50);
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, [3355443, 16777215], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 1, this.__get__y() + 1, w - 2, h - 2, 4, __reg4, 40);
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, [0, 14342874], 100, 0, "radial");
            this.drawRoundRect(this.__get__x() + 2, this.__get__y() + 2, w - 4, h - 4, 3, __reg4, 40);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 3, w - 6, h - 6, 2, 16777215, 100);
            this.drawRoundRect(this.__get__x() + 3, this.__get__y() + 4, w - 6, h - 7, 2, 16316664, 100);
            return;
        }
        else if (__reg0 !== "truedisabled") 
        {
            return;
        }
        this.drawRoundRect(0, 0, w, h, 5, 13159628, 100);
        this.drawRoundRect(1, 1, w - 2, h - 2, 4, 15921906, 100);
        this.drawRoundRect(2, 2, w - 4, h - 4, 3, 13949401, 100);
        this.drawRoundRect(3, 3, w - 6, h - 6, 2, 15921906, 100);
    }

    static function classConstruct()
    {
        mx.core.ext.UIObjectExtensions.Extensions();
        _global.skinRegistry.ButtonSkin = true;
        return true;
    }

}

