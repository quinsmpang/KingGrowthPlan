//Sprite 767
//  InitClip
dynamic class mx.core.UIObject extends MovieClip
{
    static var symbolName: String = "UIObject";
    static var symbolOwner = mx.core.UIObject;
    static var version: String = "2.0.2.127";
    static var textColorList = {color: 1, disabledColor: 1};
    var invalidateFlag: Boolean = false;
    var lineWidth: Number = 1;
    var lineColor: Number = 0;
    var tabEnabled: Boolean = false;
    var clipParameters = {visible: 1, minHeight: 1, minWidth: 1, maxHeight: 1, maxWidth: 1, preferredHeight: 1, preferredWidth: 1};
    var __height;
    var __width;
    var _endInit;
    var _height;
    var _minHeight;
    var _minWidth;
    var _name;
    var _parent;
    var _tf;
    var _visible;
    var _width;
    var _x;
    var _xscale;
    var _y;
    var _yscale;
    var attachMovie;
    var buildDepthTable;
    var childrenCreated;
    var className;
    var color;
    var createAccessibilityImplementation;
    var createTextField;
    var dispatchEvent;
    var embedFonts;
    var enabled;
    var findNextAvailableDepth;
    var fontFamily;
    var fontSize;
    var fontStyle;
    var fontWeight;
    var hasOwnProperty;
    var idNames;
    var ignoreClassStyleDeclaration;
    var initProperties;
    var lineTo;
    var marginLeft;
    var marginRight;
    var methodTable;
    var moveTo;
    var onEnterFrame;
    var styleName;
    var stylecache;
    var textAlign;
    var textDecoration;
    var textIndent;
    var tfList;
    var validateNow;

    function UIObject()
    {
        super();
        this.constructObject();
    }

    function get width()
    {
        return this._width;
    }

    function get height()
    {
        return this._height;
    }

    function get left()
    {
        return this._x;
    }

    function get x()
    {
        return this._x;
    }

    function get top()
    {
        return this._y;
    }

    function get y()
    {
        return this._y;
    }

    function get right()
    {
        return this._parent.width - (this._x + this.__get__width());
    }

    function get bottom()
    {
        return this._parent.height - (this._y + this.__get__height());
    }

    function getMinHeight(Void)
    {
        return this._minHeight;
    }

    function setMinHeight(h)
    {
        this._minHeight = h;
    }

    function get minHeight()
    {
        return this.getMinHeight();
    }

    function set minHeight(h)
    {
        this.setMinHeight(h);
    }

    function getMinWidth(Void)
    {
        return this._minWidth;
    }

    function setMinWidth(w)
    {
        this._minWidth = w;
    }

    function get minWidth()
    {
        return this.getMinWidth();
    }

    function set minWidth(w)
    {
        this.setMinWidth(w);
    }

    function setVisible(x, noEvent)
    {
        if (x != this._visible) 
        {
            this._visible = x;
            if (noEvent != true) 
            {
                this.dispatchEvent({type: x ? "reveal" : "hide"});
            }
        }
    }

    function get visible()
    {
        return this._visible;
    }

    function set visible(x)
    {
        this.setVisible(x, false);
    }

    function get scaleX()
    {
        return this._xscale;
    }

    function set scaleX(x)
    {
        this._xscale = x;
    }

    function get scaleY()
    {
        return this._yscale;
    }

    function set scaleY(y)
    {
        this._yscale = y;
    }

    function doLater(obj, fn)
    {
        if (this.methodTable == undefined) 
        {
            this.methodTable = new Array();
        }
        this.methodTable.push({obj: obj, fn: fn});
        this.onEnterFrame = this.doLaterDispatcher;
    }

    function doLaterDispatcher(Void)
    {
        delete this.onEnterFrame;
        if (this.invalidateFlag) 
        {
            this.redraw();
        }
        var __reg3 = this.methodTable;
        this.methodTable = new Array();
        if (__reg3.length > 0) 
        {
            var __reg2 = undefined;
            for (;;) 
            {
                if ((__reg2 = __reg3.shift()) == undefined) 
                {
                    return;
                }
                __reg2.obj[__reg2.fn]();
            }
        }
    }

    function cancelAllDoLaters(Void)
    {
        delete this.onEnterFrame;
        this.methodTable = new Array();
    }

    function invalidate(Void)
    {
        this.invalidateFlag = true;
        this.onEnterFrame = this.doLaterDispatcher;
    }

    function invalidateStyle(Void)
    {
        this.invalidate();
    }

    function redraw(bAlways)
    {
        if (this.invalidateFlag || bAlways) 
        {
            this.invalidateFlag = false;
            var __reg2 = undefined;
            for (__reg2 in this.tfList) 
            {
                this.tfList[__reg2].draw();
            }
            this.draw();
            this.dispatchEvent({type: "draw"});
        }
    }

    function draw(Void)
    {
    }

    function move(x, y, noEvent)
    {
        var __reg3 = this._x;
        var __reg2 = this._y;
        this._x = x;
        this._y = y;
        if (noEvent != true) 
        {
            this.dispatchEvent({type: "move", oldX: __reg3, oldY: __reg2});
        }
    }

    function setSize(w, h, noEvent)
    {
        var __reg2 = this.__width;
        var __reg3 = this.__height;
        this.__width = w;
        this.__height = h;
        this.size();
        if (noEvent != true) 
        {
            this.dispatchEvent({type: "resize", oldWidth: __reg2, oldHeight: __reg3});
        }
    }

    function size(Void)
    {
        this._width = this.__width;
        this._height = this.__height;
    }

    function drawRect(x1, y1, x2, y2)
    {
        this.moveTo(x1, y1);
        this.lineTo(x2, y1);
        this.lineTo(x2, y2);
        this.lineTo(x1, y2);
        this.lineTo(x1, y1);
    }

    function createLabel(name, depth, text)
    {
        this.createTextField(name, depth, 0, 0, 0, 0);
        var __reg2 = this[name];
        __reg2._color = mx.core.UIObject.textColorList;
        __reg2._visible = false;
        __reg2.__text = text;
        if (this.tfList == undefined) 
        {
            this.tfList = new Object();
        }
        this.tfList[name] = __reg2;
        __reg2.invalidateStyle();
        this.invalidate();
        __reg2.styleName = this;
        return __reg2;
    }

    function createObject(linkageName, id, depth, initobj)
    {
        return this.attachMovie(linkageName, id, depth, initobj);
    }

    function createClassObject(className, id, depth, initobj)
    {
        var __reg3 = className.symbolName == undefined;
        if (__reg3) 
        {
            Object.registerClass(className.symbolOwner.symbolName, className);
        }
        var __reg4 = this.createObject(className.symbolOwner.symbolName, id, depth, initobj);
        if (__reg3) 
        {
            Object.registerClass(className.symbolOwner.symbolName, className.symbolOwner);
        }
        return __reg4;
    }

    function createEmptyObject(id, depth)
    {
        return this.createClassObject(mx.core.UIObject, id, depth);
    }

    function destroyObject(id)
    {
        var __reg2 = this[id];
        if (__reg2.getDepth() < 0) 
        {
            var __reg4 = this.buildDepthTable();
            var __reg5 = this.findNextAvailableDepth(0, __reg4, "up");
            var __reg3 = __reg5;
            __reg2.swapDepths(__reg3);
        }
        __reg2.removeMovieClip();
        delete this[id];
    }

    function getSkinIDName(tag)
    {
        return this.idNames[tag];
    }

    function setSkin(tag, linkageName, initObj)
    {
        if (_global.skinRegistry[linkageName] == undefined) 
        {
            mx.skins.SkinElement.registerElement(linkageName, mx.skins.SkinElement);
        }
        return this.createObject(linkageName, this.getSkinIDName(tag), tag, initObj);
    }

    function createSkin(tag)
    {
        var __reg2 = this.getSkinIDName(tag);
        this.createEmptyObject(__reg2, tag);
        return this[__reg2];
    }

    function createChildren(Void)
    {
    }

    function _createChildren(Void)
    {
        this.createChildren();
        this.childrenCreated = true;
    }

    function constructObject(Void)
    {
        if (this._name != undefined) 
        {
            this.init();
            this._createChildren();
            this.createAccessibilityImplementation();
            this._endInit();
            if (this.validateNow) 
            {
                this.redraw(true);
                return;
            }
            this.invalidate();
        }
    }

    function initFromClipParameters(Void)
    {
        var __reg4 = false;
        var __reg2 = undefined;
        for (__reg2 in this.clipParameters) 
        {
            if (this.hasOwnProperty(__reg2)) 
            {
                __reg4 = true;
                this["def_" + __reg2] = this[__reg2];
                delete (this[__reg2]);
            }
        }
        if (__reg4) 
        {
            for (__reg2 in this.clipParameters) 
            {
                var __reg3 = this["def_" + __reg2];
                if (__reg3 != undefined) 
                {
                    this[__reg2] = __reg3;
                }
            }
        }
    }

    function init(Void)
    {
        this.__width = this._width;
        this.__height = this._height;
        if (this.initProperties == undefined) 
        {
            this.initFromClipParameters();
        }
        else 
        {
            this.initProperties();
        }
        if (_global.cascadingStyles == true) 
        {
            this.stylecache = new Object();
        }
    }

    function getClassStyleDeclaration(Void)
    {
        var __reg4 = this;
        var __reg3 = this.className;
        for (;;) 
        {
            if (__reg3 == undefined) 
            {
                return;
            }
            if (this.ignoreClassStyleDeclaration[__reg3] == undefined) 
            {
                if (_global.styles[__reg3] != undefined) 
                {
                    return _global.styles[__reg3];
                }
            }
            __reg4 = __reg4.__proto__;
            __reg3 = __reg4.className;
        }
    }

    function setColor(color)
    {
    }

    function __getTextFormat(tf, bAll)
    {
        var __reg8 = this.stylecache.tf;
        if (__reg8 != undefined) 
        {
            var __reg3 = undefined;
            for (__reg3 in mx.styles.StyleManager.TextFormatStyleProps) 
            {
                if (bAll || mx.styles.StyleManager.TextFormatStyleProps[__reg3]) 
                {
                    if (tf[__reg3] == undefined) 
                    {
                        tf[__reg3] = __reg8[__reg3];
                    }
                }
            }
            return false;
        }
        var __reg6 = false;
        for (__reg3 in mx.styles.StyleManager.TextFormatStyleProps) 
        {
            if (bAll || mx.styles.StyleManager.TextFormatStyleProps[__reg3]) 
            {
                if (tf[__reg3] == undefined) 
                {
                    var __reg5 = this._tf[__reg3];
                    if (__reg5 == undefined) 
                    {
                        if (__reg3 == "font" && this.fontFamily != undefined) 
                        {
                            tf[__reg3] = this.fontFamily;
                        }
                        else if (__reg3 == "size" && this.fontSize != undefined) 
                        {
                            tf[__reg3] = this.fontSize;
                        }
                        else if (__reg3 == "color" && this.color != undefined) 
                        {
                            tf[__reg3] = this.color;
                        }
                        else if (__reg3 == "leftMargin" && this.marginLeft != undefined) 
                        {
                            tf[__reg3] = this.marginLeft;
                        }
                        else if (__reg3 == "rightMargin" && this.marginRight != undefined) 
                        {
                            tf[__reg3] = this.marginRight;
                        }
                        else if (__reg3 == "italic" && this.fontStyle != undefined) 
                        {
                            tf[__reg3] = this.fontStyle == __reg3;
                        }
                        else if (__reg3 == "bold" && this.fontWeight != undefined) 
                        {
                            tf[__reg3] = this.fontWeight == __reg3;
                        }
                        else if (__reg3 == "align" && this.textAlign != undefined) 
                        {
                            tf[__reg3] = this.textAlign;
                        }
                        else if (__reg3 == "indent" && this.textIndent != undefined) 
                        {
                            tf[__reg3] = this.textIndent;
                        }
                        else if (__reg3 == "underline" && this.textDecoration != undefined) 
                        {
                            tf[__reg3] = this.textDecoration == __reg3;
                        }
                        else if (__reg3 == "embedFonts" && this.embedFonts != undefined) 
                        {
                            tf[__reg3] = this.embedFonts;
                        }
                        else 
                        {
                            __reg6 = true;
                        }
                    }
                    else 
                    {
                        tf[__reg3] = __reg5;
                    }
                }
            }
        }
        if (__reg6) 
        {
            var __reg9 = this.styleName;
            if (__reg9 != undefined) 
            {
                if (typeof __reg9 == "string") 
                {
                    if (_global.styles[__reg9] != undefined) 
                    {
                        __reg6 = _global.styles[__reg9].__getTextFormat(tf, true, this);
                    }
                }
                else 
                {
                    __reg6 = __reg9.__getTextFormat(tf, true, this);
                }
            }
        }
        if (__reg6) 
        {
            var __reg10 = this.getClassStyleDeclaration();
            if (__reg10 != undefined) 
            {
                __reg6 = __reg10.__getTextFormat(tf, true, this);
            }
        }
        if (__reg6) 
        {
            if (_global.cascadingStyles) 
            {
                if (this._parent != undefined) 
                {
                    __reg6 = this._parent.__getTextFormat(tf, false);
                }
            }
        }
        if (__reg6) 
        {
            __reg6 = _global.style.__getTextFormat(tf, true, this);
        }
        return __reg6;
    }

    function _getTextFormat(Void)
    {
        var __reg2 = this.stylecache.tf;
        if (__reg2 != undefined) 
        {
            return __reg2;
        }
        __reg2 = new TextFormat();
        this.__getTextFormat(__reg2, true);
        this.stylecache.tf = __reg2;
        if (this.enabled == false) 
        {
            var __reg3 = this.getStyle("disabledColor");
            __reg2.color = __reg3;
        }
        return __reg2;
    }

    function getStyleName(Void)
    {
        var __reg2 = this.styleName;
        if (__reg2 != undefined) 
        {
            if (typeof __reg2 == "string") 
            {
                return __reg2;
            }
            else 
            {
                return __reg2.getStyleName();
            }
        }
        if (this._parent != undefined) 
        {
            return this._parent.getStyleName();
        }
        return undefined;
    }

    function getStyle(styleProp)
    {
        var __reg3 = undefined;
        ++_global.getStyleCounter;
        if (this[styleProp] != undefined) 
        {
            return this[styleProp];
        }
        var __reg6 = this.styleName;
        if (__reg6 != undefined) 
        {
            if (typeof __reg6 == "string") 
            {
                var __reg7 = _global.styles[__reg6];
                __reg3 = __reg7.getStyle(styleProp);
            }
            else 
            {
                __reg3 = __reg6.getStyle(styleProp);
            }
        }
        if (__reg3 != undefined) 
        {
            return __reg3;
        }
        __reg7 = this.getClassStyleDeclaration();
        if (__reg7 != undefined) 
        {
            __reg3 = __reg7[styleProp];
        }
        if (__reg3 != undefined) 
        {
            return __reg3;
        }
        if (_global.cascadingStyles) 
        {
            if (mx.styles.StyleManager.isInheritingStyle(styleProp) || mx.styles.StyleManager.isColorStyle(styleProp)) 
            {
                var __reg5 = this.stylecache;
                if (__reg5 != undefined) 
                {
                    if (__reg5[styleProp] != undefined) 
                    {
                        return __reg5[styleProp];
                    }
                }
                if (this._parent == undefined) 
                {
                    __reg3 = _global.style[styleProp];
                }
                else 
                {
                    __reg3 = this._parent.getStyle(styleProp);
                }
                if (__reg5 != undefined) 
                {
                    __reg5[styleProp] = __reg3;
                }
                return __reg3;
            }
        }
        if (__reg3 == undefined) 
        {
            __reg3 = _global.style[styleProp];
        }
        return __reg3;
    }

    static function mergeClipParameters(o, p)
    {
        for (var __reg3 in p) 
        {
            o[__reg3] = p[__reg3];
        }
        return true;
    }

}

