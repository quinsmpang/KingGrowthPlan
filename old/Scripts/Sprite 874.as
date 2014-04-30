//Sprite 874
//  InitClip
dynamic class mx.core.ext.UIObjectExtensions
{
    static var bExtended: Boolean = false;
    static var UIObjectExtended = mx.core.ext.UIObjectExtensions.Extensions();
    static var UIObjectDependency = mx.core.UIObject;
    static var SkinElementDependency = mx.skins.SkinElement;
    static var CSSTextStylesDependency = mx.styles.CSSTextStyles;
    static var UIEventDispatcherDependency = mx.events.UIEventDispatcher;
    var __enabled;
    var __getTextFormat;
    var __text;
    var _getTextFormat;
    var _visible;
    var align;
    var draw;
    var embedFonts;
    var enabledColor;
    var getStyle;
    var getTextFormat;
    var getValue;
    var invalidateFlag;
    var invalidateStyle;
    var setNewTextFormat;
    var setTextFormat;
    var setValue;
    var stylecache;
    var text;
    var textColor;
    var textHeight;
    var textWidth;

    function UIObjectExtensions()
    {
    }

    static function addGeometry(tf, ui)
    {
        tf.addProperty("width", ui.__get__width, null);
        tf.addProperty("height", ui.__get__height, null);
        tf.addProperty("left", ui.__get__left, null);
        tf.addProperty("x", ui.__get__x, null);
        tf.addProperty("top", ui.__get__top, null);
        tf.addProperty("y", ui.__get__y, null);
        tf.addProperty("right", ui.__get__right, null);
        tf.addProperty("bottom", ui.__get__bottom, null);
        tf.addProperty("visible", ui.__get__visible, ui.__set__visible);
    }

    static function Extensions()
    {
        if (mx.core.ext.UIObjectExtensions.bExtended == true) 
        {
            return true;
        }
        mx.core.ext.UIObjectExtensions.bExtended = true;
        var __reg6 = mx.core.UIObject.prototype;
        var __reg9 = mx.skins.SkinElement.prototype;
        mx.core.ext.UIObjectExtensions.addGeometry(__reg9, __reg6);
        mx.events.UIEventDispatcher.initialize(__reg6);
        var __reg13 = mx.skins.ColoredSkinElement;
        mx.styles.CSSTextStyles.addTextStyles(__reg6);
        var __reg5 = MovieClip.prototype;
        __reg5.getTopLevel = __reg6.getTopLevel;
        __reg5.createLabel = __reg6.createLabel;
        __reg5.createObject = __reg6.createObject;
        __reg5.createClassObject = __reg6.createClassObject;
        __reg5.createEmptyObject = __reg6.createEmptyObject;
        __reg5.destroyObject = __reg6.destroyObject;
        _global.ASSetPropFlags(__reg5, "getTopLevel", 1);
        _global.ASSetPropFlags(__reg5, "createLabel", 1);
        _global.ASSetPropFlags(__reg5, "createObject", 1);
        _global.ASSetPropFlags(__reg5, "createClassObject", 1);
        _global.ASSetPropFlags(__reg5, "createEmptyObject", 1);
        _global.ASSetPropFlags(__reg5, "destroyObject", 1);
        __reg5.__getTextFormat = __reg6.__getTextFormat;
        __reg5._getTextFormat = __reg6._getTextFormat;
        __reg5.getStyleName = __reg6.getStyleName;
        __reg5.getStyle = __reg6.getStyle;
        _global.ASSetPropFlags(__reg5, "__getTextFormat", 1);
        _global.ASSetPropFlags(__reg5, "_getTextFormat", 1);
        _global.ASSetPropFlags(__reg5, "getStyleName", 1);
        _global.ASSetPropFlags(__reg5, "getStyle", 1);
        var __reg7 = TextField.prototype;
        mx.core.ext.UIObjectExtensions.addGeometry(__reg7, __reg6);
        __reg7.addProperty("enabled", function ()
        {
            return this.__enabled;
        }
        , function (x)
        {
            this.__enabled = x;
            this.invalidateStyle();
        }
        );
        __reg7.move = __reg9.move;
        __reg7.setSize = __reg9.setSize;
        __reg7.invalidateStyle = function ()
        {
            this.invalidateFlag = true;
        }
        ;
        __reg7.draw = function ()
        {
            if (this.invalidateFlag) 
            {
                this.invalidateFlag = false;
                var __reg2 = this._getTextFormat();
                this.setTextFormat(__reg2);
                this.setNewTextFormat(__reg2);
                this.embedFonts = __reg2.embedFonts == true;
                if (this.__text != undefined) 
                {
                    if (this.text == "") 
                    {
                        this.text = this.__text;
                    }
                    delete this.__text;
                }
                this._visible = true;
            }
        }
        ;
        __reg7.setColor = function (color)
        {
            this.textColor = color;
        }
        ;
        __reg7.getStyle = __reg5.getStyle;
        __reg7.__getTextFormat = __reg6.__getTextFormat;
        __reg7.setValue = function (v)
        {
            this.text = v;
        }
        ;
        __reg7.getValue = function ()
        {
            return this.text;
        }
        ;
        __reg7.addProperty("value", function ()
        {
            return this.getValue();
        }
        , function (v)
        {
            this.setValue(v);
        }
        );
        __reg7._getTextFormat = function ()
        {
            var __reg2 = this.stylecache.tf;
            if (__reg2 != undefined) 
            {
                return __reg2;
            }
            __reg2 = new TextFormat();
            this.__getTextFormat(__reg2);
            this.stylecache.tf = __reg2;
            if (this.__enabled == false) 
            {
                if (this.enabledColor == undefined) 
                {
                    var __reg4 = this.getTextFormat();
                    this.enabledColor = __reg4.color;
                }
                var __reg3 = this.getStyle("disabledColor");
                __reg2.color = __reg3;
            }
            else if (this.enabledColor != undefined) 
            {
                if (__reg2.color == undefined) 
                {
                    __reg2.color = this.enabledColor;
                }
            }
            return __reg2;
        }
        ;
        __reg7.getPreferredWidth = function ()
        {
            this.draw();
            return this.textWidth + 4;
        }
        ;
        __reg7.getPreferredHeight = function ()
        {
            this.draw();
            return this.textHeight + 4;
        }
        ;
        TextFormat.prototype.getTextExtent2 = function (s)
        {
            var __reg3 = _root._getTextExtent;
            if (__reg3 == undefined) 
            {
                _root.createTextField("_getTextExtent", -2, 0, 0, 1000, 100);
                __reg3 = _root._getTextExtent;
                __reg3._visible = false;
            }
            _root._getTextExtent.text = s;
            var __reg4 = this.align;
            this.align = "left";
            _root._getTextExtent.setTextFormat(this);
            this.align = __reg4;
            return {width: __reg3.textWidth, height: __reg3.textHeight};
        }
        ;
        if (_global.style == undefined) 
        {
            _global.style = new mx.styles.CSSStyleDeclaration();
            _global.cascadingStyles = true;
            _global.styles = new Object();
            _global.skinRegistry = new Object();
            if (_global._origWidth == undefined) 
            {
                _global.origWidth = Stage.width;
                _global.origHeight = Stage.height;
            }
        }
        var __reg4 = _root;
        while (__reg4._parent != undefined) 
        {
            __reg4 = __reg4._parent;
        }
        __reg4.addProperty("width", function ()
        {
            return Stage.width;
        }
        , null);
        __reg4.addProperty("height", function ()
        {
            return Stage.height;
        }
        , null);
        _global.ASSetPropFlags(__reg4, "width", 1);
        _global.ASSetPropFlags(__reg4, "height", 1);
        return true;
    }

}

