//Sprite 878
//  InitClip
dynamic class mx.managers.FocusManager extends mx.core.UIComponent
{
    static var symbolName: String = "FocusManager";
    static var symbolOwner = mx.managers.FocusManager;
    static var version: String = "2.0.2.127";
    var className: String = "FocusManager";
    var bNeedFocus: Boolean = false;
    var bDrawFocus: Boolean = false;
    var defaultPushButtonEnabled: Boolean = true;
    var activated: Boolean = true;
    static var initialized: Boolean = false;
    static var UIObjectExtensionsDependency = mx.core.ext.UIObjectExtensions;
    var __defaultPushButton;
    var _alpha;
    var _firstNode;
    var _firstObj;
    var _foundList;
    var _height;
    var _lastNode;
    var _lastObj;
    var _lastTarget;
    var _lastx;
    var _needPrev;
    var _nextIsNext;
    var _nextNode;
    var _nextObj;
    var _parent;
    var _prevNode;
    var _prevObj;
    var _searchKey;
    var _visible;
    var _width;
    var _x;
    var _y;
    var cancelAllDoLaters;
    var defPushButton;
    var doLater;
    var findFocusFromObject;
    var form;
    var lastFocus;
    var lastMouse;
    var lastSelFocus;
    var lastTabFocus;
    var move;
    var tabCapture;
    var tabEnabled;
    var watch;

    function FocusManager()
    {
        super();
    }

    function get defaultPushButton()
    {
        return this.__defaultPushButton;
    }

    function set defaultPushButton(x)
    {
        if (x != this.__defaultPushButton) 
        {
            this.__defaultPushButton.__set__emphasized(false);
            this.__defaultPushButton = x;
            this.defPushButton = x;
            x.__set__emphasized(true);
        }
    }

    function getMaxTabIndex(o)
    {
        var __reg3 = 0;
        var __reg6 = undefined;
        for (__reg6 in o) 
        {
            var __reg2 = o[__reg6];
            if (__reg2._parent == o) 
            {
                if (__reg2.tabIndex != undefined) 
                {
                    if (__reg2.tabIndex > __reg3) 
                    {
                        __reg3 = __reg2.tabIndex;
                    }
                }
                if (__reg2.tabChildren == true) 
                {
                    var __reg4 = this.getMaxTabIndex(__reg2);
                    if (__reg4 > __reg3) 
                    {
                        __reg3 = __reg4;
                    }
                }
            }
        }
        return __reg3;
    }

    function getNextTabIndex(Void)
    {
        return this.getMaxTabIndex(this.form) + 1;
    }

    function get nextTabIndex()
    {
        return this.getNextTabIndex();
    }

    function relocate(Void)
    {
        var __reg2 = mx.managers.SystemManager.__get__screen();
        this.move(__reg2.x - 1, __reg2.y - 1);
    }

    function init(Void)
    {
        super.init();
        this.tabEnabled = false;
        this._width = this._height = 1;
        this._x = this._y = -1;
        this._alpha = 0;
        this._parent.focusManager = this;
        this._parent.tabChildren = true;
        this._parent.tabEnabled = false;
        this.form = this._parent;
        this._parent.addEventListener("hide", this);
        this._parent.addEventListener("reveal", this);
        mx.managers.SystemManager.init();
        mx.managers.SystemManager.addFocusManager(this.form);
        this.tabCapture.tabIndex = 0;
        this.watch("enabled", this.enabledChanged);
        Selection.addListener(this);
        this.lastMouse = new Object();
        _global.ASSetPropFlags(this._parent, "focusManager", 1);
        _global.ASSetPropFlags(this._parent, "tabChildren", 1);
        _global.ASSetPropFlags(this._parent, "tabEnabled", 1);
    }

    function enabledChanged(id, oldValue, newValue)
    {
        this._visible = newValue;
        return newValue;
    }

    function activate(Void)
    {
        Key.addListener(this);
        this.activated = this._visible = true;
        if (this.lastFocus != undefined) 
        {
            this.bNeedFocus = true;
            if (mx.managers.SystemManager.isMouseDown) 
            {
                return;
            }
            this.doLater(this, "restoreFocus");
        }
    }

    function deactivate(Void)
    {
        Key.removeListener(this);
        this.activated = this._visible = false;
        var __reg2 = this.getSelectionFocus();
        var __reg3 = this.getActualFocus(__reg2);
        if (this.isOurFocus(__reg3)) 
        {
            this.lastSelFocus = __reg2;
            this.lastFocus = __reg3;
        }
        this.cancelAllDoLaters();
    }

    function isOurFocus(o)
    {
        if (o.focusManager == this) 
        {
            return true;
        }
        while (o != undefined) 
        {
            if (o.focusManager != undefined) 
            {
                return false;
            }
            if (o._parent == this._parent) 
            {
                return true;
            }
            o = o._parent;
        }
        return false;
    }

    function onSetFocus(o, n)
    {
        if (n == null) 
        {
            if (this.activated) 
            {
                this.bNeedFocus = true;
            }
            return;
        }
        var __reg2 = this.getFocus();
        if (this.isOurFocus(__reg2)) 
        {
            this.bNeedFocus = false;
            this.lastFocus = __reg2;
            this.lastSelFocus = n;
        }
    }

    function restoreFocus(Void)
    {
        var __reg2 = this.lastSelFocus.hscroll;
        if (__reg2 != undefined) 
        {
            var __reg5 = this.lastSelFocus.scroll;
            var __reg4 = this.lastSelFocus.background;
        }
        this.lastFocus.setFocus();
        var __reg3 = Selection;
        Selection.setSelection(__reg3.lastBeginIndex, __reg3.lastEndIndex);
        if (__reg2 != undefined) 
        {
            this.lastSelFocus.scroll = __reg5;
            this.lastSelFocus.hscroll = __reg2;
            this.lastSelFocus.background = __reg4;
        }
    }

    function onUnload(Void)
    {
        mx.managers.SystemManager.removeFocusManager(this.form);
    }

    function setFocus(o)
    {
        if (o == null) 
        {
            Selection.setFocus(null);
            return;
        }
        if (o.setFocus == undefined) 
        {
            Selection.setFocus(o);
            return;
        }
        o.setFocus();
    }

    function getActualFocus(o)
    {
        var __reg1 = o._parent;
        while (__reg1 != undefined) 
        {
            if (__reg1.focusTextField != undefined) 
            {
                while (__reg1.focusTextField != undefined) 
                {
                    o = __reg1;
                    __reg1 = __reg1._parent;
                    if (__reg1 == undefined) 
                    {
                        return undefined;
                    }
                    if (__reg1.focusTextField == undefined) 
                    {
                        return o;
                    }
                }
            }
            if (__reg1.tabEnabled != true) 
            {
                return o;
            }
            o = __reg1;
            __reg1 = o._parent;
        }
        return undefined;
    }

    function getSelectionFocus()
    {
        var m = Selection.getFocus();
        var o = eval(m);
        return o;
    }

    function getFocus(Void)
    {
        var __reg2 = this.getSelectionFocus();
        return this.getActualFocus(__reg2);
    }

    function walkTree(p, index, groupName, dir, lookup, firstChild)
    {
        var __reg5 = true;
        var __reg11 = undefined;
        for (__reg11 in p) 
        {
            var __reg2 = p[__reg11];
            if (__reg2._parent == p && __reg2.enabled != false && __reg2._visible != false && __reg2.tabEnabled == true || (__reg2.tabEnabled != false && (__reg2.onPress != undefined || __reg2.onRelease != undefined || __reg2.onReleaseOutside != undefined || __reg2.onDragOut != undefined || __reg2.onDragOver != undefined || __reg2.onRollOver != undefined || __reg2.onRollOut != undefined || __reg2 instanceof TextField))) 
            {
                if (__reg2._searchKey == this._searchKey) 
                {
                    continue;
                }
                __reg2._searchKey = this._searchKey;
                if (__reg2 == this._lastTarget) 
                {
                    this._prevNode = this._lastx;
                    this._needPrev = false;
                    this._nextIsNext = true;
                }
                else 
                {
                    if ((__reg2.groupName != undefined || groupName != undefined) && __reg2.groupName == groupName) 
                    {
                        continue;
                    }
                    if (__reg2 instanceof TextField && __reg2.selectable == false) 
                    {
                        continue;
                    }
                    if (__reg5 || (__reg2.groupName != undefined && __reg2.groupName == this._firstNode.groupName && __reg2.selected == true)) 
                    {
                        if (firstChild) 
                        {
                            this._firstNode = __reg2;
                            firstChild = false;
                        }
                    }
                    if (this._nextIsNext == true) 
                    {
                        if ((__reg2.groupName != undefined && __reg2.groupName == this._nextNode.groupName && __reg2.selected == true) || (this._nextNode == undefined && (__reg2.groupName == undefined || (__reg2.groupName != undefined && __reg2.groupName != groupName)))) 
                        {
                            this._nextNode = __reg2;
                        }
                    }
                    if (__reg2.groupName == undefined || groupName != __reg2.groupName) 
                    {
                        if (!(this._lastx.groupName != undefined && __reg2.groupName == this._lastx.groupName && this._lastx.selected == true)) 
                        {
                            this._lastx = __reg2;
                        }
                    }
                }
                if (__reg2.tabIndex != undefined) 
                {
                    if (__reg2.tabIndex == index) 
                    {
                        if (this._foundList[__reg2._name] == undefined) 
                        {
                            if (this._needPrev) 
                            {
                                this._prevObj = __reg2;
                                this._needPrev = false;
                            }
                            this._nextObj = __reg2;
                        }
                    }
                    if (dir && __reg2.tabIndex > index) 
                    {
                        if (this._nextObj == undefined || (this._nextObj.tabIndex > __reg2.tabIndex && (__reg2.groupName == undefined || this._nextObj.groupName == undefined || __reg2.groupName != this._nextObj.groupName)) || this._nextObj.groupName != undefined && this._nextObj.groupName == __reg2.groupName && this._nextObj.selected != true && __reg2.selected == true || this._nextObj.tabIndex > __reg2.tabIndex) 
                        {
                            this._nextObj = __reg2;
                        }
                    }
                    else if (!dir && __reg2.tabIndex < index) 
                    {
                        if (this._prevObj == undefined || (this._prevObj.tabIndex < __reg2.tabIndex && (__reg2.groupName == undefined || this._prevObj.groupName == undefined || __reg2.groupName != this._prevObj.groupName)) || this._prevObj.groupName != undefined && this._prevObj.groupName == __reg2.groupName && this._prevObj.selected != true && __reg2.selected == true || this._prevObj.tabIndex < __reg2.tabIndex) 
                        {
                            this._prevObj = __reg2;
                        }
                    }
                    if (this._firstObj == undefined || (__reg2.tabIndex < this._firstObj.tabIndex && (__reg2.groupName == undefined || this._firstObj.groupName == undefined || __reg2.groupName != this._firstObj.groupName)) || this._firstObj.groupName != undefined && this._firstObj.groupName == __reg2.groupName && this._firstObj.selected != true && __reg2.selected == true || __reg2.tabIndex < this._firstObj.tabIndex) 
                    {
                        this._firstObj = __reg2;
                    }
                    if (this._lastObj == undefined || (__reg2.tabIndex > this._lastObj.tabIndex && (__reg2.groupName == undefined || this._lastObj.groupName == undefined || __reg2.groupName != this._lastObj.groupName)) || this._lastObj.groupName != undefined && this._lastObj.groupName == __reg2.groupName && this._lastObj.selected != true && __reg2.selected == true || __reg2.tabIndex > this._lastObj.tabIndex) 
                    {
                        this._lastObj = __reg2;
                    }
                }
                if (__reg2.tabChildren) 
                {
                    this.getTabCandidateFromChildren(__reg2, index, groupName, dir, __reg5 && firstChild);
                }
                __reg5 = false;
            }
            else if (__reg2._parent == p && __reg2.tabChildren == true && __reg2._visible != false) 
            {
                if (__reg2 == this._lastTarget) 
                {
                    if (__reg2._searchKey == this._searchKey) 
                    {
                        continue;
                    }
                    __reg2._searchKey = this._searchKey;
                    if (this._prevNode == undefined) 
                    {
                        var __reg3 = this._lastx;
                        var __reg7 = false;
                        while (__reg3 != undefined) 
                        {
                            if (__reg3 == __reg2) 
                            {
                                __reg7 = true;
                                break;
                            }
                            __reg3 = __reg3._parent;
                        }
                        if (__reg7 == false) 
                        {
                            this._prevNode = this._lastx;
                        }
                    }
                    this._needPrev = false;
                    if (this._nextNode == undefined) 
                    {
                        this._nextIsNext = true;
                    }
                }
                else if (!(__reg2.focusManager != undefined && __reg2.focusManager._parent == __reg2)) 
                {
                    if (__reg2._searchKey == this._searchKey) 
                    {
                        continue;
                    }
                    __reg2._searchKey = this._searchKey;
                    this.getTabCandidateFromChildren(__reg2, index, groupName, dir, __reg5 && firstChild);
                }
                __reg5 = false;
            }
        }
        this._lastNode = this._lastx;
        if (lookup) 
        {
            if (p._parent != undefined) 
            {
                if (p != this._parent) 
                {
                    if (this._prevNode == undefined && dir) 
                    {
                        this._needPrev = true;
                    }
                    else if (this._nextNode == undefined && !dir) 
                    {
                        this._nextIsNext = false;
                    }
                    this._lastTarget = this._lastTarget._parent;
                    this.getTabCandidate(p._parent, index, groupName, dir, true);
                }
            }
        }
    }

    function getTabCandidate(o, index, groupName, dir, firstChild)
    {
        var __reg2 = undefined;
        var __reg3 = true;
        if (o == this._parent) 
        {
            __reg2 = o;
            __reg3 = false;
        }
        else 
        {
            __reg2 = o._parent;
            if (__reg2 == undefined) 
            {
                __reg2 = o;
                __reg3 = false;
            }
        }
        this.walkTree(__reg2, index, groupName, dir, __reg3, firstChild);
    }

    function getTabCandidateFromChildren(o, index, groupName, dir, firstChild)
    {
        this.walkTree(o, index, groupName, dir, false, firstChild);
    }

    function getFocusManagerFromObject(o)
    {
        while (o != undefined) 
        {
            if (o.focusManager != undefined) 
            {
                return o.focusManager;
            }
            o = o._parent;
        }
        return undefined;
    }

    function tabHandler(Void)
    {
        this.bDrawFocus = true;
        var __reg5 = this.getSelectionFocus();
        var __reg4 = this.getActualFocus(__reg5);
        if (__reg4 != __reg5) 
        {
            __reg5 = __reg4;
        }
        if (this.getFocusManagerFromObject(__reg5) != this) 
        {
            __reg5 == undefined;
        }
        if (__reg5 == undefined) 
        {
            __reg5 = this.form;
        }
        else if (__reg5.tabIndex != undefined) 
        {
            if (this._foundList != undefined || this._foundList.tabIndex != __reg5.tabIndex) 
            {
                this._foundList = new Object();
                this._foundList.tabIndex = __reg5.tabIndex;
            }
            this._foundList[__reg5._name] = __reg5;
        }
        var __reg3 = Key.isDown(16) != true;
        this._searchKey = getTimer();
        this._needPrev = true;
        this._nextIsNext = false;
        this._lastx = undefined;
        this._firstNode = undefined;
        this._lastNode = undefined;
        this._nextNode = undefined;
        this._prevNode = undefined;
        this._firstObj = undefined;
        this._lastObj = undefined;
        this._nextObj = undefined;
        this._prevObj = undefined;
        this._lastTarget = __reg5;
        var __reg6 = __reg5;
        this.getTabCandidate(__reg6, __reg5.tabIndex == undefined ? 0 : __reg5.tabIndex, __reg5.groupName, __reg3, true);
        var __reg2 = undefined;
        if (__reg3) 
        {
            if (this._nextObj == undefined) 
            {
                __reg2 = this._firstObj;
            }
            else 
            {
                __reg2 = this._nextObj;
            }
        }
        else if (this._prevObj == undefined) 
        {
            __reg2 = this._lastObj;
        }
        else 
        {
            __reg2 = this._prevObj;
        }
        if (__reg2.tabIndex == __reg5.tabIndex) 
        {
            if (this._foundList == undefined) 
            {
                this._foundList = new Object();
                this._foundList.tabIndex = __reg2.tabIndex;
            }
            this._foundList[__reg2._name] = __reg2;
        }
        else 
        {
            this._foundList = new Object();
            this._foundList.tabIndex = __reg2.tabIndex;
            this._foundList[__reg2._name] = __reg2;
        }
        if (__reg2 == undefined) 
        {
            if (__reg3 == false) 
            {
                if (this._nextNode == undefined) 
                {
                    __reg2 = this._firstNode;
                }
                else 
                {
                    __reg2 = this._nextNode;
                }
            }
            else if (this._prevNode == undefined || __reg5 == this.form) 
            {
                __reg2 = this._lastNode;
            }
            else 
            {
                __reg2 = this._prevNode;
            }
        }
        if (__reg2 != undefined) 
        {
            this.lastTabFocus = __reg2;
            this.setFocus(__reg2);
            if (__reg2.emphasized != undefined) 
            {
                if (this.defPushButton != undefined) 
                {
                    __reg5 = this.defPushButton;
                    this.defPushButton = __reg2;
                    __reg5.emphasized = false;
                    __reg2.emphasized = true;
                }
                return;
            }
            if (this.defPushButton != undefined && this.defPushButton != this.__defaultPushButton) 
            {
                __reg5 = this.defPushButton;
                this.defPushButton = this.__defaultPushButton;
                __reg5.emphasized = false;
                this.__defaultPushButton.__set__emphasized(true);
            }
        }
    }

    function onKeyDown(Void)
    {
        mx.managers.SystemManager.idleFrames = 0;
        if (this.defaultPushButtonEnabled) 
        {
            if (Key.getCode() == 13) 
            {
                if (this.__get__defaultPushButton() != undefined) 
                {
                    this.doLater(this, "sendDefaultPushButtonEvent");
                }
            }
        }
    }

    function sendDefaultPushButtonEvent(Void)
    {
        this.defPushButton.dispatchEvent({type: "click"});
    }

    function getMousedComponentFromChildren(x, y, o)
    {
        for (var __reg7 in o) 
        {
            var __reg2 = o[__reg7];
            if (__reg2._visible && __reg2.enabled && __reg2._parent == o && __reg2._searchKey != this._searchKey) 
            {
                __reg2._searchKey = this._searchKey;
                if (__reg2.hitTest(x, y, true)) 
                {
                    if (__reg2.onPress != undefined || __reg2.onRelease != undefined) 
                    {
                        do 
                        {
                        }
                        while (undefined != null);
                        return __reg2;
                    }
                    var __reg3 = this.getMousedComponentFromChildren(x, y, __reg2);
                    if (__reg3 != undefined) 
                    {
                        do 
                        {
                        }
                        while (undefined != null);
                        return __reg3;
                    }
                    do 
                    {
                    }
                    while (undefined != null);
                    return __reg2;
                }
            }
        }
        return undefined;
    }

    function mouseActivate(Void)
    {
        if (this.bNeedFocus) 
        {
            this._searchKey = getTimer();
            var __reg2 = this.getMousedComponentFromChildren(this.lastMouse.x, this.lastMouse.y, this.form);
            if (__reg2 instanceof mx.core.UIComponent) 
            {
                return undefined;
            }
            __reg2 = this.findFocusFromObject(__reg2);
            if (__reg2 != this.lastFocus) 
            {
                if (__reg2 == undefined) 
                {
                    this.doLater(this, "restoreFocus");
                    return undefined;
                }
                var __reg3 = __reg2.hscroll;
                if (__reg3 != undefined) 
                {
                    var __reg6 = __reg2.scroll;
                    var __reg5 = __reg2.background;
                }
                this.setFocus(__reg2);
                var __reg4 = Selection;
                Selection.setSelection(__reg4.lastBeginIndex, __reg4.lastEndIndex);
                if (__reg3 != undefined) 
                {
                    __reg2.scroll = __reg6;
                    __reg2.hscroll = __reg3;
                    __reg2.background = __reg5;
                }
            }
        }
    }

    function _onMouseDown(Void)
    {
        this.bDrawFocus = false;
        if (this.lastFocus != undefined) 
        {
            this.lastFocus.drawFocus(false);
        }
        mx.managers.SystemManager.idleFrames = 0;
        var __reg3 = Selection;
        __reg3.lastBeginIndex = Selection.getBeginIndex();
        __reg3.lastEndIndex = Selection.getEndIndex();
        this.lastMouse.x = _root._xmouse;
        this.lastMouse.y = _root._ymouse;
        _root.localToGlobal(this.lastMouse);
    }

    function onMouseUp(Void)
    {
        if (this._visible) 
        {
            this.doLater(this, "mouseActivate");
        }
    }

    function handleEvent(e)
    {
        if (e.type == "reveal") 
        {
            mx.managers.SystemManager.activate(this.form);
            return;
        }
        mx.managers.SystemManager.deactivate(this.form);
    }

    static function enableFocusManagement()
    {
        if (mx.managers.FocusManager.initialized) 
        {
            return;
        }
        mx.managers.FocusManager.initialized = true;
        Object.registerClass("FocusManager", mx.managers.FocusManager);
        if (_root.focusManager == undefined) 
        {
            _root.createClassObject(mx.managers.FocusManager, "focusManager", mx.managers.DepthManager.highestDepth--);
        }
    }

}

