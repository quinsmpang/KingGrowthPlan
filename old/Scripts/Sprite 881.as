//Sprite 881
//  InitClip
dynamic class mx.styles.CSSSetStyle
{
    static var classConstructed = mx.styles.CSSSetStyle.classConstruct();
    static var CSSStyleDeclarationDependency = mx.styles.CSSStyleDeclaration;
    var _color;
    var invalidateStyle;
    var setColor;
    var styleName;
    var stylecache;

    function CSSSetStyle()
    {
    }

    function _setStyle(styleProp, newValue)
    {
        this[styleProp] = newValue;
        if (mx.styles.StyleManager.TextStyleMap[styleProp] != undefined) 
        {
            if (styleProp == "color") 
            {
                if (isNaN(newValue)) 
                {
                    newValue = mx.styles.StyleManager.getColorName(newValue);
                    this[styleProp] = newValue;
                    if (newValue == undefined) 
                    {
                        return undefined;
                    }
                }
            }
            _level0.changeTextStyleInChildren(styleProp);
            return undefined;
        }
        if (mx.styles.StyleManager.isColorStyle(styleProp)) 
        {
            if (isNaN(newValue)) 
            {
                newValue = mx.styles.StyleManager.getColorName(newValue);
                this[styleProp] = newValue;
                if (newValue == undefined) 
                {
                    return undefined;
                }
            }
            if (styleProp == "themeColor") 
            {
                var __reg7 = mx.styles.StyleManager.colorNames.haloBlue;
                var __reg6 = mx.styles.StyleManager.colorNames.haloGreen;
                var __reg8 = mx.styles.StyleManager.colorNames.haloOrange;
                var __reg4 = {};
                __reg4[__reg7] = 12188666;
                __reg4[__reg6] = 13500353;
                __reg4[__reg8] = 16766319;
                var __reg5 = {};
                __reg5[__reg7] = 13958653;
                __reg5[__reg6] = 14942166;
                __reg5[__reg8] = 16772787;
                var __reg9 = __reg4[newValue];
                var __reg10 = __reg5[newValue];
                if (__reg9 == undefined) 
                {
                    __reg9 = newValue;
                }
                if (__reg10 == undefined) 
                {
                    __reg10 = newValue;
                }
                this.setStyle("selectionColor", __reg9);
                this.setStyle("rollOverColor", __reg10);
            }
            _level0.changeColorStyleInChildren(this.styleName, styleProp, newValue);
            return;
        }
        if (styleProp == "backgroundColor" && isNaN(newValue)) 
        {
            newValue = mx.styles.StyleManager.getColorName(newValue);
            this[styleProp] = newValue;
            if (newValue == undefined) 
            {
                return undefined;
            }
        }
        _level0.notifyStyleChangeInChildren(this.styleName, styleProp, newValue);
    }

    function changeTextStyleInChildren(styleProp)
    {
        var __reg4 = getTimer();
        var __reg5 = undefined;
        for (__reg5 in this) 
        {
            var __reg2 = this[__reg5];
            if (__reg2._parent == this) 
            {
                if (__reg2.searchKey != __reg4) 
                {
                    if (__reg2.stylecache != undefined) 
                    {
                        delete __reg2.stylecache.tf;
                        delete __reg2.stylecache[styleProp];
                    }
                    __reg2.invalidateStyle(styleProp);
                    __reg2.changeTextStyleInChildren(styleProp);
                    __reg2.searchKey = __reg4;
                }
            }
        }
    }

    function changeColorStyleInChildren(sheetName, colorStyle, newValue)
    {
        var __reg6 = getTimer();
        var __reg7 = undefined;
        for (__reg7 in this) 
        {
            var __reg2 = this[__reg7];
            if (__reg2._parent == this) 
            {
                if (__reg2.searchKey != __reg6) 
                {
                    if (__reg2.getStyleName() == sheetName || sheetName == undefined || sheetName == "_global") 
                    {
                        if (__reg2.stylecache != undefined) 
                        {
                            delete __reg2.stylecache[colorStyle];
                        }
                        if (typeof __reg2._color == "string") 
                        {
                            if (__reg2._color == colorStyle) 
                            {
                                var __reg4 = __reg2.getStyle(colorStyle);
                                if (colorStyle == "color") 
                                {
                                    if (this.stylecache.tf.color != undefined) 
                                    {
                                        this.stylecache.tf.color = __reg4;
                                    }
                                }
                                __reg2.setColor(__reg4);
                            }
                        }
                        else if (__reg2._color[colorStyle] != undefined) 
                        {
                            if (typeof __reg2 == "movieclip") 
                            {
                                __reg2.invalidateStyle(colorStyle);
                            }
                            else 
                            {
                                __reg2._parent.invalidateStyle();
                            }
                        }
                    }
                    __reg2.changeColorStyleInChildren(sheetName, colorStyle, newValue);
                    __reg2.searchKey = __reg6;
                }
            }
        }
    }

    function notifyStyleChangeInChildren(sheetName, styleProp, newValue)
    {
        var __reg5 = getTimer();
        var __reg6 = undefined;
        for (__reg6 in this) 
        {
            var __reg2 = this[__reg6];
            if (__reg2._parent == this) 
            {
                if (__reg2.searchKey != __reg5) 
                {
                    if (__reg2.styleName == sheetName || (__reg2.styleName != undefined && typeof __reg2.styleName == "movieclip") || sheetName == undefined) 
                    {
                        if (__reg2.stylecache != undefined) 
                        {
                            delete (__reg2.stylecache[styleProp]);
                            delete (__reg2.stylecache.tf);
                        }
                        delete (__reg2.enabledColor);
                        __reg2.invalidateStyle(styleProp);
                    }
                    __reg2.notifyStyleChangeInChildren(sheetName, styleProp, newValue);
                    __reg2.searchKey = __reg5;
                }
            }
        }
    }

    function setStyle(styleProp, newValue)
    {
        if (this.stylecache != undefined) 
        {
            delete (this.stylecache[styleProp]);
            delete (this.stylecache.tf);
        }
        this[styleProp] = newValue;
        if (mx.styles.StyleManager.isColorStyle(styleProp)) 
        {
            if (isNaN(newValue)) 
            {
                newValue = mx.styles.StyleManager.getColorName(newValue);
                this[styleProp] = newValue;
                if (newValue == undefined) 
                {
                    return undefined;
                }
            }
            if (styleProp == "themeColor") 
            {
                var __reg10 = mx.styles.StyleManager.colorNames.haloBlue;
                var __reg9 = mx.styles.StyleManager.colorNames.haloGreen;
                var __reg11 = mx.styles.StyleManager.colorNames.haloOrange;
                var __reg6 = {};
                __reg6[__reg10] = 12188666;
                __reg6[__reg9] = 13500353;
                __reg6[__reg11] = 16766319;
                var __reg7 = {};
                __reg7[__reg10] = 13958653;
                __reg7[__reg9] = 14942166;
                __reg7[__reg11] = 16772787;
                var __reg12 = __reg6[newValue];
                var __reg13 = __reg7[newValue];
                if (__reg12 == undefined) 
                {
                    __reg12 = newValue;
                }
                if (__reg13 == undefined) 
                {
                    __reg13 = newValue;
                }
                this.setStyle("selectionColor", __reg12);
                this.setStyle("rollOverColor", __reg13);
            }
            if (typeof this._color == "string") 
            {
                if (this._color == styleProp) 
                {
                    if (styleProp == "color") 
                    {
                        if (this.stylecache.tf.color != undefined) 
                        {
                            this.stylecache.tf.color = newValue;
                        }
                    }
                    this.setColor(newValue);
                }
            }
            else if (this._color[styleProp] != undefined) 
            {
                this.invalidateStyle(styleProp);
            }
            this.changeColorStyleInChildren(undefined, styleProp, newValue);
        }
        else 
        {
            if (styleProp == "backgroundColor" && isNaN(newValue)) 
            {
                newValue = mx.styles.StyleManager.getColorName(newValue);
                this[styleProp] = newValue;
                if (newValue == undefined) 
                {
                    return undefined;
                }
            }
            this.invalidateStyle(styleProp);
        }
        if (mx.styles.StyleManager.isInheritingStyle(styleProp) || styleProp == "styleName") 
        {
            var __reg8 = undefined;
            var __reg5 = newValue;
            if (styleProp == "styleName") 
            {
                __reg8 = typeof newValue == "string" ? _global.styles[newValue] : __reg5;
                __reg5 = __reg8.themeColor;
                if (__reg5 != undefined) 
                {
                    __reg8.rollOverColor = __reg8.selectionColor = __reg5;
                }
            }
            this.notifyStyleChangeInChildren(undefined, styleProp, newValue);
        }
    }

    static function enableRunTimeCSS()
    {
    }

    static function classConstruct()
    {
        var __reg2 = MovieClip.prototype;
        var __reg3 = mx.styles.CSSSetStyle.prototype;
        mx.styles.CSSStyleDeclaration.prototype.setStyle = __reg3._setStyle;
        __reg2.changeTextStyleInChildren = __reg3.changeTextStyleInChildren;
        __reg2.changeColorStyleInChildren = __reg3.changeColorStyleInChildren;
        __reg2.notifyStyleChangeInChildren = __reg3.notifyStyleChangeInChildren;
        __reg2.setStyle = __reg3.setStyle;
        _global.ASSetPropFlags(__reg2, "changeTextStyleInChildren", 1);
        _global.ASSetPropFlags(__reg2, "changeColorStyleInChildren", 1);
        _global.ASSetPropFlags(__reg2, "notifyStyleChangeInChildren", 1);
        _global.ASSetPropFlags(__reg2, "setStyle", 1);
        var __reg4 = TextField.prototype;
        __reg4.setStyle = __reg2.setStyle;
        __reg4.changeTextStyleInChildren = __reg3.changeTextStyleInChildren;
        return true;
    }

}

