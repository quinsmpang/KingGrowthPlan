//Sprite 868
//  InitClip
dynamic class mx.controls.SimpleButton extends mx.core.UIComponent
{
    static var symbolName: String = "SimpleButton";
    static var symbolOwner = mx.controls.SimpleButton;
    static var version: String = "2.0.2.127";
    var className: String = "SimpleButton";
    var style3dInset: Number = 4;
    var btnOffset: Number = 1;
    var __toggle: Boolean = false;
    var __state: Boolean = false;
    var __emphasized: Boolean = false;
    var __emphatic: Boolean = false;
    static var falseUp: Number = 0;
    static var falseDown: Number = 1;
    static var falseOver: Number = 2;
    static var falseDisabled: Number = 3;
    static var trueUp: Number = 4;
    static var trueDown: Number = 5;
    static var trueOver: Number = 6;
    static var trueDisabled: Number = 7;
    var falseUpSkin: String = "SimpleButtonUp";
    var falseDownSkin: String = "SimpleButtonIn";
    var falseOverSkin: String = "";
    var falseDisabledSkin: String = "SimpleButtonUp";
    var trueUpSkin: String = "SimpleButtonIn";
    var trueDownSkin: String = "";
    var trueOverSkin: String = "";
    var trueDisabledSkin: String = "SimpleButtonIn";
    var falseUpIcon: String = "";
    var falseDownIcon: String = "";
    var falseOverIcon: String = "";
    var falseDisabledIcon: String = "";
    var trueUpIcon: String = "";
    var trueDownIcon: String = "";
    var trueOverIcon: String = "";
    var trueDisabledIcon: String = "";
    var phase: String = "up";
    var fui: String = "falseUpIcon";
    var fus: String = "falseUpSkin";
    var fdi: String = "falseDownIcon";
    var fds: String = "falseDownSkin";
    var frs: String = "falseOverSkin";
    var fri: String = "falseOverIcon";
    var dfi: String = "falseDisabledIcon";
    var dfs: String = "falseDisabledSkin";
    var tui: String = "trueUpIcon";
    var tus: String = "trueUpSkin";
    var tdi: String = "trueDownIcon";
    var tds: String = "trueDownSkin";
    var trs: String = "trueOverSkin";
    var tri: String = "trueOverIcon";
    var dts: String = "trueDisabledSkin";
    var dti: String = "trueDisabledIcon";
    var rolloverSkin = mx.controls.SimpleButton.prototype.frs;
    var rolloverIcon = mx.controls.SimpleButton.prototype.fri;
    var upSkin = mx.controls.SimpleButton.prototype.fus;
    var downSkin = mx.controls.SimpleButton.prototype.fds;
    var disabledSkin = mx.controls.SimpleButton.prototype.dfs;
    var upIcon = mx.controls.SimpleButton.prototype.fui;
    var downIcon = mx.controls.SimpleButton.prototype.fdi;
    var disabledIcon = mx.controls.SimpleButton.prototype.dfi;
    var initializing: Boolean = true;
    var idNames = ["fus", "fds", "frs", "dfs", "tus", "tds", "trs", "dts", "fui", "fdi", "fri", "dfi", "tui", "tdi", "tri", "dti"];
    var stateNames = ["falseUp", "falseDown", "falseOver", "falseDisabled", "trueUp", "trueDown", "trueOver", "trueDisabled"];
    var refNames = ["upSkin", "downSkin", "rolloverSkin", "disabledSkin"];
    var tagMap = {falseUpSkin: 0, falseDownSkin: 1, falseOverSkin: 2, falseDisabledSkin: 3, trueUpSkin: 4, trueDownSkin: 5, trueOverSkin: 6, trueDisabledSkin: 7, falseUpIcon: 0, falseDownIcon: 1, falseOverIcon: 2, falseDisabledIcon: 3, trueUpIcon: 4, trueDownIcon: 5, trueOverIcon: 6, trueDisabledIcon: 7};
    var __emphaticStyleName;
    var __height;
    var __width;
    var _height;
    var _width;
    var autoRepeat;
    var boundingBox_mc;
    var createLabel;
    var destroyObject;
    var dispatchEvent;
    var enabled;
    var getStyle;
    var iconName;
    var interval;
    var invalidate;
    var invalidateStyle;
    var linkLength;
    var preset;
    var pressFocus;
    var releaseFocus;
    var skinName;
    var styleName;
    var useHandCursor;

    function SimpleButton()
    {
        super();
    }

    function init(Void)
    {
        super.init();
        if (this.preset == undefined) 
        {
            this.boundingBox_mc._visible = false;
            this.boundingBox_mc._width = this.boundingBox_mc._height = 0;
        }
        this.useHandCursor = false;
    }

    function createChildren(Void)
    {
        if (this.preset != undefined) 
        {
            var __reg2 = this[this.idNames[this.preset]];
            this[this.refNames[this.preset]] = __reg2;
            this.skinName = __reg2;
            if (this.falseOverSkin.length == 0) 
            {
                this.rolloverSkin = this.fus;
            }
            if (this.falseOverIcon.length == 0) 
            {
                this.rolloverIcon = this.fui;
            }
            this.initializing = false;
            return;
        }
        if (this.__state == true) 
        {
            this.setStateVar(true);
            return;
        }
        if (this.falseOverSkin.length == 0) 
        {
            this.rolloverSkin = this.fus;
        }
        if (this.falseOverIcon.length == 0) 
        {
            this.rolloverIcon = this.fui;
        }
    }

    function setIcon(tag, linkageName)
    {
        return this.setSkin(tag + 8, linkageName);
    }

    function changeIcon(tag, linkageName)
    {
        this.linkLength = linkageName.length;
        var __reg2 = this.stateNames[tag] + "Icon";
        this[__reg2] = linkageName;
        this[this.idNames[tag + 8]] = __reg2;
        this.setStateVar(this.getState());
    }

    function changeSkin(tag, linkageName)
    {
        var __reg2 = this.stateNames[tag] + "Skin";
        this[__reg2] = linkageName;
        this[this.idNames[tag]] = __reg2;
        this.setStateVar(this.getState());
    }

    function viewIcon(varName)
    {
        var __reg4 = varName + "Icon";
        var __reg3 = this[__reg4];
        if (typeof __reg3 == "string") 
        {
            var __reg5 = __reg3;
            if (this.__emphasized) 
            {
                if (this[__reg3 + "Emphasized"].length > 0) 
                {
                    __reg3 = __reg3 + "Emphasized";
                }
            }
            if (this[__reg3].length == 0) 
            {
                return undefined;
            }
            __reg3 = this.setIcon(this.tagMap[__reg5], this[__reg3]);
            if (__reg3 == undefined && _global.isLivePreview) 
            {
                __reg3 = this.setIcon(0, "ButtonIcon");
            }
            this[__reg4] = __reg3;
        }
        this.iconName._visible = false;
        this.iconName = __reg3;
        this.iconName._visible = true;
    }

    function removeIcons()
    {
        var __reg3 = 0;
        while (__reg3 < 2) 
        {
            var __reg2 = 8;
            while (__reg2 < 16) 
            {
                this.destroyObject(this.idNames[__reg2]);
                this[this.stateNames[__reg2 - 8] + "Icon"] = "";
                ++__reg2;
            }
            ++__reg3;
        }
        this.refresh();
    }

    function setSkin(tag, linkageName, initobj)
    {
        var __reg3 = super.setSkin(tag, linkageName, initobj == undefined ? {styleName: this} : initobj);
        this.calcSize(tag, __reg3);
        return __reg3;
    }

    function calcSize(Void)
    {
        this.__width = this._width;
        this.__height = this._height;
    }

    function viewSkin(varName, initObj)
    {
        var __reg3 = varName + "Skin";
        var __reg2 = this[__reg3];
        if (typeof __reg2 == "string") 
        {
            var __reg4 = __reg2;
            if (this.__emphasized) 
            {
                if (this[__reg2 + "Emphasized"].length > 0) 
                {
                    __reg2 = __reg2 + "Emphasized";
                }
            }
            if (this[__reg2].length == 0) 
            {
                return undefined;
            }
            __reg2 = this.setSkin(this.tagMap[__reg4], this[__reg2], initObj == undefined ? {styleName: this} : initObj);
            this[__reg3] = __reg2;
        }
        this.skinName._visible = false;
        this.skinName = __reg2;
        this.skinName._visible = true;
    }

    function showEmphasized(e)
    {
        if (e && !this.__emphatic) 
        {
            if (mx.controls.SimpleButton.emphasizedStyleDeclaration != undefined) 
            {
                this.__emphaticStyleName = this.styleName;
                this.styleName = mx.controls.SimpleButton.emphasizedStyleDeclaration;
            }
            this.__emphatic = true;
            return;
        }
        if (this.__emphatic) 
        {
            this.styleName = this.__emphaticStyleName;
        }
        this.__emphatic = false;
    }

    function refresh(Void)
    {
        var __reg2 = this.getState();
        if (this.enabled == false) 
        {
            this.viewIcon("disabled");
            this.viewSkin("disabled");
        }
        else 
        {
            this.viewSkin(this.phase);
            this.viewIcon(this.phase);
        }
        this.setView(this.phase == "down");
        this.iconName.enabled = this.enabled;
    }

    function setView(offset)
    {
        if (this.iconName != undefined) 
        {
            var __reg2 = offset ? this.btnOffset : 0;
            this.iconName._x = (this.__width - this.iconName._width) / 2 + __reg2;
            this.iconName._y = (this.__height - this.iconName._height) / 2 + __reg2;
        }
    }

    function setStateVar(state)
    {
        if (state) 
        {
            if (this.trueOverSkin.length == 0) 
            {
                this.rolloverSkin = this.tus;
            }
            else 
            {
                this.rolloverSkin = this.trs;
            }
            if (this.trueOverIcon.length == 0) 
            {
                this.rolloverIcon = this.tui;
            }
            else 
            {
                this.rolloverIcon = this.tri;
            }
            this.upSkin = this.tus;
            this.downSkin = this.tds;
            this.disabledSkin = this.dts;
            this.upIcon = this.tui;
            this.downIcon = this.tdi;
            this.disabledIcon = this.dti;
        }
        else 
        {
            if (this.falseOverSkin.length == 0) 
            {
                this.rolloverSkin = this.fus;
            }
            else 
            {
                this.rolloverSkin = this.frs;
            }
            if (this.falseOverIcon.length == 0) 
            {
                this.rolloverIcon = this.fui;
            }
            else 
            {
                this.rolloverIcon = this.fri;
            }
            this.upSkin = this.fus;
            this.downSkin = this.fds;
            this.disabledSkin = this.dfs;
            this.upIcon = this.fui;
            this.downIcon = this.fdi;
            this.disabledIcon = this.dfi;
        }
        this.__state = state;
    }

    function setState(state)
    {
        if (state != this.__state) 
        {
            this.setStateVar(state);
            this.invalidate();
        }
    }

    function size(Void)
    {
        this.refresh();
    }

    function draw(Void)
    {
        if (this.initializing) 
        {
            this.initializing = false;
            this.skinName.visible = true;
            this.iconName.visible = true;
        }
        this.size();
    }

    function getState(Void)
    {
        return this.__state;
    }

    function setToggle(val)
    {
        this.__toggle = val;
        if (this.__toggle == false) 
        {
            this.setState(false);
        }
    }

    function getToggle(Void)
    {
        return this.__toggle;
    }

    function set toggle(val)
    {
        this.setToggle(val);
    }

    function get toggle()
    {
        return this.getToggle();
    }

    function set value(val)
    {
        this.setSelected(val);
    }

    function get value()
    {
        return this.getSelected();
    }

    function set selected(val)
    {
        this.setSelected(val);
    }

    function get selected()
    {
        return this.getSelected();
    }

    function setSelected(val)
    {
        if (this.__toggle) 
        {
            this.setState(val);
            return;
        }
        this.setState(this.initializing ? val : this.__state);
    }

    function getSelected()
    {
        return this.__state;
    }

    function setEnabled(val)
    {
        if (this.enabled != val) 
        {
            super.setEnabled(val);
            this.invalidate();
        }
    }

    function onPress(Void)
    {
        this.pressFocus();
        this.phase = "down";
        this.refresh();
        this.dispatchEvent({type: "buttonDown"});
        if (this.autoRepeat) 
        {
            this.interval = setInterval(this, "onPressDelay", this.getStyle("repeatDelay"));
        }
    }

    function onPressDelay(Void)
    {
        this.dispatchEvent({type: "buttonDown"});
        if (this.autoRepeat) 
        {
            clearInterval(this.interval);
            this.interval = setInterval(this, "onPressRepeat", this.getStyle("repeatInterval"));
        }
    }

    function onPressRepeat(Void)
    {
        this.dispatchEvent({type: "buttonDown"});
        updateAfterEvent();
    }

    function onRelease(Void)
    {
        this.releaseFocus();
        this.phase = "rollover";
        if (this.interval != undefined) 
        {
            clearInterval(this.interval);
            delete this.interval;
        }
        if (this.getToggle()) 
        {
            this.setState(!this.getState());
        }
        else 
        {
            this.refresh();
        }
        this.dispatchEvent({type: "click"});
    }

    function onDragOut(Void)
    {
        this.phase = "up";
        this.refresh();
        this.dispatchEvent({type: "buttonDragOut"});
    }

    function onDragOver(Void)
    {
        if (this.phase != "up") 
        {
            this.onPress();
            return undefined;
        }
        this.phase = "down";
        this.refresh();
    }

    function onReleaseOutside(Void)
    {
        this.releaseFocus();
        this.phase = "up";
        if (this.interval != undefined) 
        {
            clearInterval(this.interval);
            delete this.interval;
        }
    }

    function onRollOver(Void)
    {
        this.phase = "rollover";
        this.refresh();
    }

    function onRollOut(Void)
    {
        this.phase = "up";
        this.refresh();
    }

    function getLabel(Void)
    {
        return this.fui.text;
    }

    function setLabel(val)
    {
        if (typeof this.fui == "string") 
        {
            this.createLabel("fui", 8, val);
            this.fui.styleName = this;
        }
        else 
        {
            this.fui.text = val;
        }
        var __reg4 = this.fui._getTextFormat();
        var __reg2 = __reg4.getTextExtent2(val);
        this.fui._width = __reg2.width + 5;
        this.fui._height = __reg2.height + 5;
        this.iconName = this.fui;
        this.setView(this.__state);
    }

    function get emphasized()
    {
        return this.__emphasized;
    }

    function set emphasized(val)
    {
        this.__emphasized = val;
        var __reg2 = 0;
        while (__reg2 < 8) 
        {
            this[this.idNames[__reg2]] = this.stateNames[__reg2] + "Skin";
            if (typeof this[this.idNames[__reg2 + 8]] == "movieclip") 
            {
                this[this.idNames[__reg2 + 8]] = this.stateNames[__reg2] + "Icon";
            }
            ++__reg2;
        }
        this.showEmphasized(this.__emphasized);
        this.setStateVar(this.__state);
        this.invalidateStyle();
    }

    function keyDown(e)
    {
        if (e.code == 32) 
        {
            this.onPress();
        }
    }

    function keyUp(e)
    {
        if (e.code == 32) 
        {
            this.onRelease();
        }
    }

    function onKillFocus(newFocus)
    {
        super.onKillFocus();
        if (this.phase != "up") 
        {
            this.phase = "up";
            this.refresh();
        }
    }

}

