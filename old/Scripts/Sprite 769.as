//Sprite 769
//  InitClip
dynamic class mx.controls.scrollClasses.ScrollBar extends mx.core.UIComponent
{
    static var symbolOwner = mx.core.UIComponent;
    var className: String = "ScrollBar";
    var minPos: Number = 0;
    var maxPos: Number = 0;
    var pageSize: Number = 0;
    var largeScroll: Number = 0;
    var smallScroll: Number = 1;
    var _scrollPosition: Number = 0;
    var scrollTrackName: String = "ScrollTrack";
    var scrollTrackOverName: String = "";
    var scrollTrackDownName: String = "";
    var upArrowName: String = "BtnUpArrow";
    var upArrowUpName: String = "ScrollUpArrowUp";
    var upArrowOverName: String = "ScrollUpArrowOver";
    var upArrowDownName: String = "ScrollUpArrowDown";
    var downArrowName: String = "BtnDownArrow";
    var downArrowUpName: String = "ScrollDownArrowUp";
    var downArrowOverName: String = "ScrollDownArrowOver";
    var downArrowDownName: String = "ScrollDownArrowDown";
    var thumbTopName: String = "ScrollThumbTopUp";
    var thumbMiddleName: String = "ScrollThumbMiddleUp";
    var thumbBottomName: String = "ScrollThumbBottomUp";
    var thumbGripName: String = "ScrollThumbGripUp";
    static var skinIDTrack: Number = 0;
    static var skinIDTrackOver: Number = 1;
    static var skinIDTrackDown: Number = 2;
    static var skinIDUpArrow: Number = 3;
    static var skinIDDownArrow: Number = 4;
    static var skinIDThumb: Number = 5;
    var idNames = new Array("scrollTrack_mc", "scrollTrackOver_mc", "scrollTrackDown_mc", "upArrow_mc", "downArrow_mc");
    var clipParameters = {minPos: 1, maxPos: 1, pageSize: 1, scrollPosition: 1, lineScrollSize: 1, pageScrollSize: 1, visible: 1, enabled: 1};
    static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.scrollClasses.ScrollBar.prototype.clipParameters, mx.core.UIComponent.prototype.clipParameters);
    var initializing: Boolean = true;
    var __height;
    var _height;
    var _minHeight;
    var _minWidth;
    var _parent;
    var _ymouse;
    var boundingBox_mc;
    var createClassObject;
    var createObject;
    var dispatchEvent;
    var downArrow_mc;
    var enabled;
    var focusEnabled;
    var getStyle;
    var isScrolling;
    var maxMode;
    var minMode;
    var minusMode;
    var plusMode;
    var scrollThumb_mc;
    var scrollTrack_mc;
    var scrolling;
    var setSkin;
    var tabEnabled;
    var upArrow_mc;

    function ScrollBar()
    {
        super();
    }

    function get scrollPosition()
    {
        return this._scrollPosition;
    }

    function set scrollPosition(pos)
    {
        this._scrollPosition = pos;
        if (this.isScrolling != true) 
        {
            pos = Math.min(pos, this.maxPos);
            pos = Math.max(pos, this.minPos);
            var __reg3 = (pos - this.minPos) * (this.scrollTrack_mc.height - this.scrollThumb_mc._height) / (this.maxPos - this.minPos) + this.scrollTrack_mc.top;
            this.scrollThumb_mc.move(0, __reg3);
        }
    }

    function get pageScrollSize()
    {
        return this.largeScroll;
    }

    function set pageScrollSize(lScroll)
    {
        this.largeScroll = lScroll;
    }

    function set lineScrollSize(sScroll)
    {
        this.smallScroll = sScroll;
    }

    function get lineScrollSize()
    {
        return this.smallScroll;
    }

    function get virtualHeight()
    {
        return this.__height;
    }

    function init(Void)
    {
        super.init();
        this._scrollPosition = 0;
        this.tabEnabled = false;
        this.focusEnabled = false;
        this.boundingBox_mc._visible = false;
        this.boundingBox_mc._width = this.boundingBox_mc._height = 0;
    }

    function createChildren(Void)
    {
        if (this.scrollTrack_mc == undefined) 
        {
            this.setSkin(mx.controls.scrollClasses.ScrollBar.skinIDTrack, this.scrollTrackName);
        }
        this.scrollTrack_mc.visible = false;
        var __reg3 = new Object();
        __reg3.enabled = false;
        __reg3.preset = mx.controls.SimpleButton.falseDisabled;
        __reg3.initProperties = 0;
        __reg3.autoRepeat = true;
        __reg3.tabEnabled = false;
        var __reg2 = undefined;
        if (this.upArrow_mc == undefined) 
        {
            __reg2 = this.createButton(this.upArrowName, "upArrow_mc", mx.controls.scrollClasses.ScrollBar.skinIDUpArrow, __reg3);
        }
        __reg2.buttonDownHandler = this.onUpArrow;
        __reg2.clickHandler = this.onScrollChanged;
        this._minHeight = __reg2.height;
        this._minWidth = __reg2.width;
        if (this.downArrow_mc == undefined) 
        {
            __reg2 = this.createButton(this.downArrowName, "downArrow_mc", mx.controls.scrollClasses.ScrollBar.skinIDDownArrow, __reg3);
        }
        __reg2.buttonDownHandler = this.onDownArrow;
        __reg2.clickHandler = this.onScrollChanged;
        this._minHeight = this._minHeight + __reg2.height;
    }

    function createButton(linkageName, id, skinID, o)
    {
        if (skinID == mx.controls.scrollClasses.ScrollBar.skinIDUpArrow) 
        {
            o.falseUpSkin = this.upArrowUpName;
            o.falseDownSkin = this.upArrowDownName;
            o.falseOverSkin = this.upArrowOverName;
        }
        else 
        {
            o.falseUpSkin = this.downArrowUpName;
            o.falseDownSkin = this.downArrowDownName;
            o.falseOverSkin = this.downArrowOverName;
        }
        var __reg3 = this.createObject(linkageName, id, skinID, o);
        this[id].visible = false;
        this[id].useHandCursor = false;
        return __reg3;
    }

    function createThumb(Void)
    {
        var __reg2 = new Object();
        __reg2.validateNow = true;
        __reg2.tabEnabled = false;
        __reg2.leftSkin = this.thumbTopName;
        __reg2.middleSkin = this.thumbMiddleName;
        __reg2.rightSkin = this.thumbBottomName;
        __reg2.gripSkin = this.thumbGripName;
        this.createClassObject(mx.controls.scrollClasses.ScrollThumb, "scrollThumb_mc", mx.controls.scrollClasses.ScrollBar.skinIDThumb, __reg2);
    }

    function setScrollProperties(pSize, mnPos, mxPos, ls)
    {
        var __reg4 = undefined;
        var __reg2 = this.scrollTrack_mc;
        this.pageSize = pSize;
        this.largeScroll = ls != undefined && ls > 0 ? ls : pSize;
        this.minPos = Math.max(mnPos, 0);
        this.maxPos = Math.max(mxPos, 0);
        this._scrollPosition = Math.max(this.minPos, this._scrollPosition);
        this._scrollPosition = Math.min(this.maxPos, this._scrollPosition);
        if (this.maxPos - this.minPos > 0 && this.enabled) 
        {
            var __reg5 = this._scrollPosition;
            if (!this.initializing) 
            {
                this.upArrow_mc.enabled = true;
                this.downArrow_mc.enabled = true;
            }
            __reg2.onPress = __reg2.onDragOver = this.startTrackScroller;
            __reg2.onRelease = this.releaseScrolling;
            __reg2.onDragOut = __reg2.stopScrolling = this.stopScrolling;
            __reg2.onReleaseOutside = this.releaseScrolling;
            __reg2.useHandCursor = false;
            if (this.scrollThumb_mc == undefined) 
            {
                this.createThumb();
            }
            var __reg3 = this.scrollThumb_mc;
            if (this.scrollTrackOverName.length > 0) 
            {
                __reg2.onRollOver = this.trackOver;
                __reg2.onRollOut = this.trackOut;
            }
            __reg4 = this.pageSize / (this.maxPos - this.minPos + this.pageSize) * __reg2.height;
            if (__reg4 < __reg3.minHeight) 
            {
                if (__reg2.height < __reg3.minHeight) 
                {
                    __reg3.__set__visible(false);
                }
                else 
                {
                    __reg4 = __reg3.minHeight;
                    __reg3.__set__visible(true);
                    __reg3.setSize(this._minWidth, __reg3.minHeight + 0);
                }
            }
            else 
            {
                __reg3.__set__visible(true);
                __reg3.setSize(this._minWidth, __reg4);
            }
            __reg3.setRange(this.upArrow_mc.__get__height() + 0, this.__get__virtualHeight() - this.downArrow_mc.__get__height() - __reg3.__get__height(), this.minPos, this.maxPos);
            __reg5 = Math.min(__reg5, this.maxPos);
            this.__set__scrollPosition(Math.max(__reg5, this.minPos));
        }
        else 
        {
            this.scrollThumb_mc.__set__visible(false);
            if (!this.initializing) 
            {
                this.upArrow_mc.enabled = false;
                this.downArrow_mc.enabled = false;
            }
            delete __reg2.onPress;
            delete __reg2.onDragOver;
            delete __reg2.onRelease;
            delete (__reg2.onDragOut);
            delete __reg2.onRollOver;
            delete (__reg2.onRollOut);
            delete (__reg2.onReleaseOutside);
        }
        if (this.initializing) 
        {
            this.scrollThumb_mc.__set__visible(false);
        }
    }

    function setEnabled(enabledFlag)
    {
        super.setEnabled(enabledFlag);
        this.setScrollProperties(this.pageSize, this.minPos, this.maxPos, this.largeScroll);
    }

    function draw(Void)
    {
        if (this.initializing) 
        {
            this.initializing = false;
            this.scrollTrack_mc.visible = true;
            this.upArrow_mc.__set__visible(true);
            this.downArrow_mc.__set__visible(true);
        }
        this.size();
    }

    function size(Void)
    {
        if (this._height != 1) 
        {
            if (this.upArrow_mc != undefined) 
            {
                var __reg3 = this.upArrow_mc.__get__height();
                var __reg2 = this.downArrow_mc.__get__height();
                this.upArrow_mc.move(0, 0);
                var __reg4 = this.scrollTrack_mc;
                __reg4._y = __reg3;
                __reg4._height = this.__get__virtualHeight() - __reg3 - __reg2;
                this.downArrow_mc.move(0, this.__get__virtualHeight() - __reg2);
                this.setScrollProperties(this.pageSize, this.minPos, this.maxPos, this.largeScroll);
            }
        }
    }

    function dispatchScrollEvent(detail)
    {
        this.dispatchEvent({type: "scroll", detail: detail});
    }

    function isScrollBarKey(k)
    {
        if (k == 36) 
        {
            if (this.__get__scrollPosition() != 0) 
            {
                this.__set__scrollPosition(0);
                this.dispatchScrollEvent(this.minMode);
            }
            return true;
        }
        else if (k == 35) 
        {
            if (this.__get__scrollPosition() < this.maxPos) 
            {
                this.__set__scrollPosition(this.maxPos);
                this.dispatchScrollEvent(this.maxMode);
            }
            return true;
        }
        return false;
    }

    function scrollIt(inc, mode)
    {
        var __reg3 = this.smallScroll;
        if (inc != "Line") 
        {
            __reg3 = this.largeScroll == 0 ? this.pageSize : this.largeScroll;
        }
        var __reg2 = this._scrollPosition + mode * __reg3;
        if (__reg2 > this.maxPos) 
        {
            __reg2 = this.maxPos;
        }
        else if (__reg2 < this.minPos) 
        {
            __reg2 = this.minPos;
        }
        if (this.__get__scrollPosition() != __reg2) 
        {
            this.__set__scrollPosition(__reg2);
            var __reg4 = mode >= 0 ? this.plusMode : this.minusMode;
            this.dispatchScrollEvent(inc + __reg4);
        }
    }

    function startTrackScroller(Void)
    {
        this._parent.pressFocus();
        if (this._parent.scrollTrackDownName.length > 0) 
        {
            if (this._parent.scrollTrackDown_mc == undefined) 
            {
                this._parent.setSkin(mx.controls.scrollClasses.ScrollBar.skinIDTrackDown, this.scrollTrackDownName);
            }
            else 
            {
                this._parent.scrollTrackDown_mc.visible = true;
            }
        }
        this._parent.trackScroller();
        this._parent.scrolling = setInterval(this._parent, "scrollInterval", this.getStyle("repeatDelay"), "Page", -1);
    }

    function scrollInterval(inc, mode)
    {
        clearInterval(this.scrolling);
        if (inc == "Page") 
        {
            this.trackScroller();
        }
        else 
        {
            this.scrollIt(inc, mode);
        }
        this.scrolling = setInterval(this, "scrollInterval", this.getStyle("repeatInterval"), inc, mode);
    }

    function trackScroller(Void)
    {
        if (this.scrollThumb_mc._y + this.scrollThumb_mc.__get__height() < this._ymouse) 
        {
            this.scrollIt("Page", 1);
            return;
        }
        if (this.scrollThumb_mc._y > this._ymouse) 
        {
            this.scrollIt("Page", -1);
        }
    }

    function dispatchScrollChangedEvent(Void)
    {
        this.dispatchEvent({type: "scrollChanged"});
    }

    function stopScrolling(Void)
    {
        clearInterval(this._parent.scrolling);
        this._parent.scrollTrackDown_mc.visible = false;
    }

    function releaseScrolling(Void)
    {
        this._parent.releaseFocus();
        this.stopScrolling();
        this._parent.dispatchScrollChangedEvent();
    }

    function trackOver(Void)
    {
        if (this._parent.scrollTrackOverName.length > 0) 
        {
            if (this._parent.scrollTrackOver_mc == undefined) 
            {
                this._parent.setSkin(mx.controls.scrollClasses.ScrollBar.skinIDTrackOver, this.scrollTrackOverName);
                return;
            }
            this._parent.scrollTrackOver_mc.visible = true;
        }
    }

    function trackOut(Void)
    {
        this._parent.scrollTrackOver_mc.visible = false;
    }

    function onUpArrow(Void)
    {
        this._parent.scrollIt("Line", -1);
    }

    function onDownArrow(Void)
    {
        this._parent.scrollIt("Line", 1);
    }

    function onScrollChanged(Void)
    {
        this._parent.dispatchScrollChangedEvent();
    }

}

