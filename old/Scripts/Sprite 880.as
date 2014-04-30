//Sprite 880
//  InitClip
dynamic class mx.managers.OverlappedWindows
{
    static var initialized: Boolean = false;
    static var SystemManagerDependency = mx.managers.SystemManager;

    function OverlappedWindows()
    {
    }

    static function checkIdle(Void)
    {
        if (mx.managers.SystemManager.idleFrames > 10) 
        {
            mx.managers.SystemManager.dispatchEvent({type: "idle"});
            return;
        }
        ++mx.managers.SystemManager.idleFrames;
    }

    static function __addEventListener(e, o, l)
    {
        if (e == "idle") 
        {
            if (mx.managers.SystemManager.interval == undefined) 
            {
                mx.managers.SystemManager.interval = setInterval(mx.managers.SystemManager.checkIdle, 100);
            }
        }
        mx.managers.SystemManager._xAddEventListener(e, o, l);
    }

    static function __removeEventListener(e, o, l)
    {
        if (e == "idle") 
        {
            if (mx.managers.SystemManager._xRemoveEventListener(e, o, l) == 0) 
            {
                clearInterval(mx.managers.SystemManager.interval);
            }
            return;
        }
        mx.managers.SystemManager._xRemoveEventListener(e, o, l);
    }

    static function onMouseDown(Void)
    {
        mx.managers.SystemManager.idleFrames = 0;
        mx.managers.SystemManager.isMouseDown = true;
        var __reg5 = _root;
        var __reg3 = undefined;
        var __reg8 = _root._xmouse;
        var __reg7 = _root._ymouse;
        if (mx.managers.SystemManager.form.modalWindow == undefined) 
        {
            if (mx.managers.SystemManager.forms.length > 1) 
            {
                var __reg6 = mx.managers.SystemManager.forms.length;
                var __reg4 = undefined;
                __reg4 = 0;
                while (__reg4 < __reg6) 
                {
                    var __reg2 = mx.managers.SystemManager.forms[__reg4];
                    if (__reg2._visible) 
                    {
                        if (__reg2.hitTest(__reg8, __reg7)) 
                        {
                            if (__reg3 == undefined) 
                            {
                                __reg3 = __reg2.getDepth();
                                __reg5 = __reg2;
                            }
                            else if (__reg3 < __reg2.getDepth()) 
                            {
                                __reg3 = __reg2.getDepth();
                                __reg5 = __reg2;
                            }
                        }
                    }
                    ++__reg4;
                }
                if (__reg5 != mx.managers.SystemManager.form) 
                {
                    mx.managers.SystemManager.activate(__reg5);
                }
            }
        }
        var __reg9 = mx.managers.SystemManager.form;
        __reg9.focusManager._onMouseDown();
    }

    static function onMouseMove(Void)
    {
        mx.managers.SystemManager.idleFrames = 0;
    }

    static function onMouseUp(Void)
    {
        mx.managers.SystemManager.isMouseDown = false;
        mx.managers.SystemManager.idleFrames = 0;
    }

    static function activate(f)
    {
        if (mx.managers.SystemManager.form != undefined) 
        {
            if (mx.managers.SystemManager.form != f && mx.managers.SystemManager.forms.length > 1) 
            {
                var __reg1 = mx.managers.SystemManager.form;
                __reg1.focusManager.deactivate();
            }
        }
        mx.managers.SystemManager.form = f;
        f.focusManager.activate();
    }

    static function deactivate(f)
    {
        if (mx.managers.SystemManager.form != undefined) 
        {
            if (mx.managers.SystemManager.form == f && mx.managers.SystemManager.forms.length > 1) 
            {
                var __reg5 = mx.managers.SystemManager.form;
                __reg5.focusManager.deactivate();
                var __reg3 = mx.managers.SystemManager.forms.length;
                var __reg1 = undefined;
                var __reg2 = undefined;
                __reg1 = 0;
                while (__reg1 < __reg3) 
                {
                    if (mx.managers.SystemManager.forms[__reg1] == f) 
                    {
                        __reg1 = __reg1 + 1;
                        while (__reg1 < __reg3) 
                        {
                            if (mx.managers.SystemManager.forms[__reg1]._visible == true) 
                            {
                                __reg2 = mx.managers.SystemManager.forms[__reg1];
                            }
                            ++__reg1;
                        }
                        mx.managers.SystemManager.form = __reg2;
                        break;
                    }
                    else if (mx.managers.SystemManager.forms[__reg1]._visible == true) 
                    {
                        __reg2 = mx.managers.SystemManager.forms[__reg1];
                    }
                    ++__reg1;
                }
                __reg5 = mx.managers.SystemManager.form;
                __reg5.focusManager.activate();
            }
        }
    }

    static function addFocusManager(f)
    {
        mx.managers.SystemManager.forms.push(f);
        mx.managers.SystemManager.activate(f);
    }

    static function removeFocusManager(f)
    {
        var __reg3 = mx.managers.SystemManager.forms.length;
        var __reg1 = undefined;
        __reg1 = 0;
        for (;;) 
        {
            if (__reg1 >= __reg3) 
            {
                return;
            }
            if (mx.managers.SystemManager.forms[__reg1] == f) 
            {
                if (mx.managers.SystemManager.form == f) 
                {
                    mx.managers.SystemManager.deactivate(f);
                }
                mx.managers.SystemManager.forms.splice(__reg1, 1);
                return undefined;
            }
            ++__reg1;
        }
    }

    static function enableOverlappedWindows()
    {
        if (mx.managers.OverlappedWindows.initialized) 
        {
            return;
        }
        mx.managers.OverlappedWindows.initialized = true;
        mx.managers.SystemManager.checkIdle = mx.managers.OverlappedWindows.checkIdle;
        mx.managers.SystemManager.__addEventListener = mx.managers.OverlappedWindows.__addEventListener;
        mx.managers.SystemManager.__removeEventListener = mx.managers.OverlappedWindows.__removeEventListener;
        mx.managers.SystemManager.onMouseDown = mx.managers.OverlappedWindows.onMouseDown;
        mx.managers.SystemManager.onMouseMove = mx.managers.OverlappedWindows.onMouseMove;
        mx.managers.SystemManager.onMouseUp = mx.managers.OverlappedWindows.onMouseUp;
        mx.managers.SystemManager.activate = mx.managers.OverlappedWindows.activate;
        mx.managers.SystemManager.deactivate = mx.managers.OverlappedWindows.deactivate;
        mx.managers.SystemManager.addFocusManager = mx.managers.OverlappedWindows.addFocusManager;
        mx.managers.SystemManager.removeFocusManager = mx.managers.OverlappedWindows.removeFocusManager;
    }

}

