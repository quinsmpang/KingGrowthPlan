//Sprite 870
//  InitClip
dynamic class mx.controls.Button extends mx.controls.SimpleButton
{
    static var symbolName: String = "Button";
    static var symbolOwner = mx.controls.Button;
    var className: String = "Button";
    static var version: String = "2.0.2.127";
    var btnOffset: Number = 0;
    var _color: String = "buttonColor";
    var __label: String = "default value";
    var __labelPlacement: String = "right";
    var falseUpSkin: String = "ButtonSkin";
    var falseDownSkin: String = "ButtonSkin";
    var falseOverSkin: String = "ButtonSkin";
    var falseDisabledSkin: String = "ButtonSkin";
    var trueUpSkin: String = "ButtonSkin";
    var trueDownSkin: String = "ButtonSkin";
    var trueOverSkin: String = "ButtonSkin";
    var trueDisabledSkin: String = "ButtonSkin";
    var falseUpIcon: String = "";
    var falseDownIcon: String = "";
    var falseOverIcon: String = "";
    var falseDisabledIcon: String = "";
    var trueUpIcon: String = "";
    var trueDownIcon: String = "";
    var trueOverIcon: String = "";
    var trueDisabledIcon: String = "";
    var clipParameters = {labelPlacement: 1, icon: 1, toggle: 1, selected: 1, label: 1};
    static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.Button.prototype.clipParameters, mx.controls.SimpleButton.prototype.clipParameters);
    var centerContent: Boolean = true;
    var borderW: Number = 1;
    var __height;
    var __width;
    var _iconLinkageName;
    var createEmptyObject;
    var createLabel;
    var enabled;
    var getState;
    var hitArea_mc;
    var iconName;
    var idNames;
    var initIcon;
    var initializing;
    var invalidate;
    var labelPath;
    var phase;
    var refresh;
    var removeIcons;
    var setState;

    function Button()
    {
        super();
    }

    function init(Void)
    {
        super.init();
    }

    function draw()
    {
        if (this.initializing) 
        {
            this.labelPath.visible = true;
        }
        super.draw();
        if (this.initIcon != undefined) 
        {
            this._setIcon(this.initIcon);
        }
        delete this.initIcon;
    }

    function onRelease(Void)
    {
        super.onRelease();
    }

    function createChildren(Void)
    {
        super.createChildren();
    }

    function setSkin(tag, linkageName, initobj)
    {
        return super.setSkin(tag, linkageName, initobj);
    }

    function viewSkin(varName)
    {
        var __reg3 = this.getState() ? "true" : "false";
        __reg3 = __reg3 + (this.enabled ? this.phase : "disabled");
        super.viewSkin(varName, {styleName: this, borderStyle: __reg3});
    }

    function invalidateStyle(c)
    {
        this.labelPath.invalidateStyle(c);
        super.invalidateStyle(c);
    }

    function setColor(c)
    {
        var __reg2 = 0;
        for (;;) 
        {
            if (__reg2 >= 8) 
            {
                return;
            }
            this[this.idNames[__reg2]].redraw(true);
            ++__reg2;
        }
    }

    function setEnabled(enable)
    {
        this.labelPath.enabled = enable;
        super.setEnabled(enable);
    }

    function calcSize(tag, ref)
    {
        if (this.__width == undefined || this.__height == undefined) 
        {
            return undefined;
        }
        if (tag < 7) 
        {
            ref.setSize(this.__width, this.__height, true);
        }
    }

    function size(Void)
    {
        this.setState(this.getState());
        this.setHitArea(this.__width, this.__height);
        var __reg3 = 0;
        while (__reg3 < 8) 
        {
            var __reg4 = this.idNames[__reg3];
            if (typeof this[__reg4] == "movieclip") 
            {
                this[__reg4].setSize(this.__width, this.__height, true);
            }
            ++__reg3;
        }
        super.size();
    }

    function set labelPlacement(val)
    {
        this.__labelPlacement = val;
        this.invalidate();
    }

    function get labelPlacement()
    {
        return this.__labelPlacement;
    }

    function getLabelPlacement(Void)
    {
        return this.__labelPlacement;
    }

    function setLabelPlacement(val)
    {
        this.__labelPlacement = val;
        this.invalidate();
    }

    function getBtnOffset(Void)
    {
        if (this.getState()) 
        {
            __reg2 = this.btnOffset;
        }
        else if (this.phase == "down") 
        {
            __reg2 = this.btnOffset;
        }
        else 
        {
            var __reg2 = 0;
        }
        return __reg2;
    }

    function setView(offset)
    {
        var __reg16 = offset ? this.btnOffset : 0;
        var __reg12 = this.getLabelPlacement();
        var __reg7 = 0;
        var __reg6 = 0;
        var __reg9 = 0;
        var __reg8 = 0;
        var __reg5 = 0;
        var __reg4 = 0;
        var __reg3 = this.labelPath;
        var __reg2 = this.iconName;
        var __reg15 = __reg3.textWidth;
        var __reg14 = __reg3.textHeight;
        var __reg10 = this.__width - this.borderW - this.borderW;
        var __reg11 = this.__height - this.borderW - this.borderW;
        if (__reg2 != undefined) 
        {
            __reg7 = __reg2._width;
            __reg6 = __reg2._height;
        }
        if (__reg12 == "left" || __reg12 == "right") 
        {
            if (__reg3 != undefined) 
            {
                __reg3._width = __reg9 = Math.min(__reg10 - __reg7, __reg15 + 5);
                __reg3._height = __reg8 = Math.min(__reg11, __reg14 + 5);
            }
            if (__reg12 == "right") 
            {
                __reg5 = __reg7;
                if (this.centerContent) 
                {
                    __reg5 = __reg5 + (__reg10 - __reg9 - __reg7) / 2;
                }
                __reg2._x = __reg5 - __reg7;
            }
            else 
            {
                __reg5 = __reg10 - __reg9 - __reg7;
                if (this.centerContent) 
                {
                    __reg5 = __reg5 / 2;
                }
                __reg2._x = __reg5 + __reg9;
            }
            __reg2._y = __reg4 = 0;
            if (this.centerContent) 
            {
                __reg2._y = (__reg11 - __reg6) / 2;
                __reg4 = (__reg11 - __reg8) / 2;
            }
            if (!this.centerContent) 
            {
                __reg2._y = __reg2._y + Math.max(0, (__reg8 - __reg6) / 2);
            }
        }
        else 
        {
            if (__reg3 != undefined) 
            {
                __reg3._width = __reg9 = Math.min(__reg10, __reg15 + 5);
                __reg3._height = __reg8 = Math.min(__reg11 - __reg6, __reg14 + 5);
            }
            __reg5 = (__reg10 - __reg9) / 2;
            __reg2._x = (__reg10 - __reg7) / 2;
            if (__reg12 == "top") 
            {
                __reg4 = __reg11 - __reg8 - __reg6;
                if (this.centerContent) 
                {
                    __reg4 = __reg4 / 2;
                }
                __reg2._y = __reg4 + __reg8;
            }
            else 
            {
                __reg4 = __reg6;
                if (this.centerContent) 
                {
                    __reg4 = __reg4 + (__reg11 - __reg8 - __reg6) / 2;
                }
                __reg2._y = __reg4 - __reg6;
            }
        }
        var __reg13 = this.borderW + __reg16;
        __reg3._x = __reg5 + __reg13;
        __reg3._y = __reg4 + __reg13;
        __reg2._x = __reg2._x + __reg13;
        __reg2._y = __reg2._y + __reg13;
    }

    function set label(lbl)
    {
        this.setLabel(lbl);
    }

    function setLabel(label)
    {
        if (label == "") 
        {
            this.labelPath.removeTextField();
            this.refresh();
            return undefined;
        }
        if (this.labelPath == undefined) 
        {
            var __reg2 = this.createLabel("labelPath", 200, label);
            __reg2._width = __reg2.textWidth + 5;
            __reg2._height = __reg2.textHeight + 5;
            if (this.initializing) 
            {
                __reg2.visible = false;
            }
            return;
        }
        delete this.labelPath.__text;
        this.labelPath.text = label;
        this.refresh();
    }

    function getLabel(Void)
    {
        return this.labelPath.__text == undefined ? this.labelPath.text : this.labelPath.__text;
    }

    function get label()
    {
        return this.getLabel();
    }

    function _getIcon(Void)
    {
        return this._iconLinkageName;
    }

    function get icon()
    {
        if (this.initializing) 
        {
            return this.initIcon;
        }
        return this._iconLinkageName;
    }

    function _setIcon(linkage)
    {
        if (this.initializing) 
        {
            if (linkage == "") 
            {
                return undefined;
            }
            this.initIcon = linkage;
            return;
        }
        if (linkage == "") 
        {
            this.removeIcons();
            return undefined;
        }
        super.changeIcon(0, linkage);
        super.changeIcon(1, linkage);
        super.changeIcon(3, linkage);
        super.changeIcon(4, linkage);
        super.changeIcon(5, linkage);
        this._iconLinkageName = linkage;
        this.refresh();
    }

    function set icon(linkage)
    {
        this._setIcon(linkage);
    }

    function setHitArea(w, h)
    {
        if (this.hitArea_mc == undefined) 
        {
            this.createEmptyObject("hitArea_mc", 100);
        }
        var __reg2 = this.hitArea_mc;
        __reg2.clear();
        __reg2.beginFill(16711680);
        __reg2.drawRect(0, 0, w, h);
        __reg2.endFill();
        __reg2.setVisible(false);
    }

}

