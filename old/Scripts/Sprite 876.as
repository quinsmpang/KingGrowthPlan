//Sprite 876
//  InitClip
dynamic class mx.managers.DepthManager
{
    static var reservedDepth: Number = 1048575;
    static var highestDepth: Number = 1048574;
    static var lowestDepth: Number = -16383;
    static var numberOfAuthortimeLayers: Number = 383;
    static var kCursor: Number = 101;
    static var kTooltip: Number = 102;
    static var kTop: Number = 201;
    static var kBottom: Number = 202;
    static var kTopmost: Number = 203;
    static var kNotopmost: Number = 204;
    static var holder = _root.createEmptyMovieClip("reserved", mx.managers.DepthManager.reservedDepth);
    static var __depthManager = new mx.managers.DepthManager();
    var _childCounter;
    var _parent;
    var _topmost;
    var createClassObject;
    var createObject;
    var getDepth;
    var swapDepths;

    function DepthManager()
    {
        MovieClip.prototype.createClassChildAtDepth = this.createClassChildAtDepth;
        MovieClip.prototype.createChildAtDepth = this.createChildAtDepth;
        MovieClip.prototype.setDepthTo = this.setDepthTo;
        MovieClip.prototype.setDepthAbove = this.setDepthAbove;
        MovieClip.prototype.setDepthBelow = this.setDepthBelow;
        MovieClip.prototype.findNextAvailableDepth = this.findNextAvailableDepth;
        MovieClip.prototype.shuffleDepths = this.shuffleDepths;
        MovieClip.prototype.getDepthByFlag = this.getDepthByFlag;
        MovieClip.prototype.buildDepthTable = this.buildDepthTable;
        _global.ASSetPropFlags(MovieClip.prototype, "createClassChildAtDepth", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "createChildAtDepth", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "setDepthTo", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "setDepthAbove", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "setDepthBelow", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "findNextAvailableDepth", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "shuffleDepths", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "getDepthByFlag", 1);
        _global.ASSetPropFlags(MovieClip.prototype, "buildDepthTable", 1);
    }

    static function sortFunction(a, b)
    {
        if (a.getDepth() > b.getDepth()) 
        {
            return 1;
        }
        return -1;
    }

    static function test(depth)
    {
        if (depth == mx.managers.DepthManager.reservedDepth) 
        {
            return false;
        }
        return true;
    }

    static function createClassObjectAtDepth(className, depthSpace, initObj)
    {
        var __reg1 = undefined;
        if ((__reg0 = depthSpace) === mx.managers.DepthManager.kCursor) 
        {
            __reg1 = mx.managers.DepthManager.holder.createClassChildAtDepth(className, mx.managers.DepthManager.kTopmost, initObj);
        }
        else if (__reg0 === mx.managers.DepthManager.kTooltip) 
        {
            __reg1 = mx.managers.DepthManager.holder.createClassChildAtDepth(className, mx.managers.DepthManager.kTop, initObj);
        }
        return __reg1;
    }

    static function createObjectAtDepth(linkageName, depthSpace, initObj)
    {
        var __reg1 = undefined;
        if ((__reg0 = depthSpace) === mx.managers.DepthManager.kCursor) 
        {
            __reg1 = mx.managers.DepthManager.holder.createChildAtDepth(linkageName, mx.managers.DepthManager.kTopmost, initObj);
        }
        else if (__reg0 === mx.managers.DepthManager.kTooltip) 
        {
            __reg1 = mx.managers.DepthManager.holder.createChildAtDepth(linkageName, mx.managers.DepthManager.kTop, initObj);
        }
        return __reg1;
    }

    function createClassChildAtDepth(className, depthFlag, initObj)
    {
        if (this._childCounter == undefined) 
        {
            this._childCounter = 0;
        }
        var __reg3 = this.buildDepthTable();
        var __reg2 = this.getDepthByFlag(depthFlag, __reg3);
        var __reg6 = "down";
        if (depthFlag == mx.managers.DepthManager.kBottom) 
        {
            __reg6 = "up";
        }
        var __reg5 = undefined;
        if (__reg3[__reg2] != undefined) 
        {
            __reg5 = __reg2;
            __reg2 = this.findNextAvailableDepth(__reg2, __reg3, __reg6);
        }
        var __reg4 = this.createClassObject(className, "depthChild" + this._childCounter++, __reg2, initObj);
        if (__reg5 != undefined) 
        {
            __reg3[__reg2] = __reg4;
            this.shuffleDepths(__reg4, __reg5, __reg3, __reg6);
        }
        if (depthFlag == mx.managers.DepthManager.kTopmost) 
        {
            __reg4._topmost = true;
        }
        return __reg4;
    }

    function createChildAtDepth(linkageName, depthFlag, initObj)
    {
        if (this._childCounter == undefined) 
        {
            this._childCounter = 0;
        }
        var __reg3 = this.buildDepthTable();
        var __reg2 = this.getDepthByFlag(depthFlag, __reg3);
        var __reg6 = "down";
        if (depthFlag == mx.managers.DepthManager.kBottom) 
        {
            __reg6 = "up";
        }
        var __reg5 = undefined;
        if (__reg3[__reg2] != undefined) 
        {
            __reg5 = __reg2;
            __reg2 = this.findNextAvailableDepth(__reg2, __reg3, __reg6);
        }
        var __reg4 = this.createObject(linkageName, "depthChild" + this._childCounter++, __reg2, initObj);
        if (__reg5 != undefined) 
        {
            __reg3[__reg2] = __reg4;
            this.shuffleDepths(__reg4, __reg5, __reg3, __reg6);
        }
        if (depthFlag == mx.managers.DepthManager.kTopmost) 
        {
            __reg4._topmost = true;
        }
        return __reg4;
    }

    function setDepthTo(depthFlag)
    {
        var __reg2 = this._parent.buildDepthTable();
        var __reg3 = this._parent.getDepthByFlag(depthFlag, __reg2);
        if (__reg2[__reg3] == undefined) 
        {
            this.swapDepths(__reg3);
        }
        else 
        {
            this.shuffleDepths(this, __reg3, __reg2, undefined);
        }
        if (depthFlag == mx.managers.DepthManager.kTopmost) 
        {
            this._topmost = true;
            return;
        }
        delete this._topmost;
    }

    function setDepthAbove(targetInstance)
    {
        if (targetInstance._parent == this._parent) 
        {
            var __reg2 = targetInstance.getDepth() + 1;
            var __reg3 = this._parent.buildDepthTable();
            if (__reg3[__reg2] != undefined && this.getDepth() < __reg2) 
            {
                __reg2 = __reg2 - 1;
            }
            if (__reg2 > mx.managers.DepthManager.highestDepth) 
            {
                __reg2 = mx.managers.DepthManager.highestDepth;
            }
            if (__reg2 == mx.managers.DepthManager.highestDepth) 
            {
                this._parent.shuffleDepths(this, __reg2, __reg3, "down");
                return;
            }
            if (__reg3[__reg2] != undefined) 
            {
                this._parent.shuffleDepths(this, __reg2, __reg3, undefined);
                return;
            }
            this.swapDepths(__reg2);
        }
    }

    function setDepthBelow(targetInstance)
    {
        if (targetInstance._parent == this._parent) 
        {
            var __reg6 = targetInstance.getDepth() - 1;
            var __reg3 = this._parent.buildDepthTable();
            if (__reg3[__reg6] != undefined && this.getDepth() > __reg6) 
            {
                __reg6 = __reg6 + 1;
            }
            var __reg4 = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
            var __reg5 = undefined;
            for (__reg5 in __reg3) 
            {
                var __reg2 = __reg3[__reg5];
                if (__reg2._parent != undefined) 
                {
                    __reg4 = Math.min(__reg4, __reg2.getDepth());
                }
            }
            if (__reg6 < __reg4) 
            {
                __reg6 = __reg4;
            }
            if (__reg6 == __reg4) 
            {
                this._parent.shuffleDepths(this, __reg6, __reg3, "up");
                return;
            }
            if (__reg3[__reg6] != undefined) 
            {
                this._parent.shuffleDepths(this, __reg6, __reg3, undefined);
                return;
            }
            this.swapDepths(__reg6);
        }
    }

    function findNextAvailableDepth(targetDepth, depthTable, direction)
    {
        var __reg5 = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
        if (targetDepth < __reg5) 
        {
            targetDepth = __reg5;
        }
        if (depthTable[targetDepth] == undefined) 
        {
            return targetDepth;
        }
        var __reg2 = targetDepth;
        var __reg1 = targetDepth;
        if (direction == "down") 
        {
            while (depthTable[__reg1] != undefined) 
            {
                --__reg1;
            }
            return __reg1;
        }
        while (depthTable[__reg2] != undefined) 
        {
            ++__reg2;
        }
        return __reg2;
    }

    function shuffleDepths(subject, targetDepth, depthTable, direction)
    {
        var __reg9 = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
        var __reg8 = __reg9;
        var __reg5 = undefined;
        for (__reg5 in depthTable) 
        {
            var __reg7 = depthTable[__reg5];
            if (__reg7._parent != undefined) 
            {
                __reg9 = Math.min(__reg9, __reg7.getDepth());
            }
        }
        if (direction == undefined) 
        {
            if (subject.getDepth() > targetDepth) 
            {
                direction = "up";
            }
            else 
            {
                direction = "down";
            }
        }
        var __reg1 = new Array();
        for (__reg5 in depthTable) 
        {
            __reg7 = depthTable[__reg5];
            if (__reg7._parent != undefined) 
            {
                __reg1.push(__reg7);
            }
        }
        __reg1.sort(mx.managers.DepthManager.sortFunction);
        if (direction == "up") 
        {
            var __reg3 = undefined;
            var __reg11 = undefined;
            while (__reg1.length > 0) 
            {
                __reg3 = __reg1.pop();
                if (__reg3 == subject) 
                {
                    break;
                }
            }
            while (__reg1.length > 0) 
            {
                __reg11 = subject.getDepth();
                __reg3 = __reg1.pop();
                var __reg4 = __reg3.getDepth();
                if (__reg11 > __reg4 + 1) 
                {
                    if (__reg4 >= 0) 
                    {
                        subject.swapDepths(__reg4 + 1);
                    }
                    else if (__reg11 > __reg8 && __reg4 < __reg8) 
                    {
                        subject.swapDepths(__reg8);
                    }
                }
                subject.swapDepths(__reg3);
                if (__reg4 == targetDepth) 
                {
                    break;
                }
            }
            return;
        }
        if (direction == "down") 
        {
            __reg3 = undefined;
            while (__reg1.length > 0) 
            {
                __reg3 = __reg1.shift();
                if (__reg3 == subject) 
                {
                    break;
                }
            }
            for (;;) 
            {
                if (__reg1.length <= 0) 
                {
                    return;
                }
                __reg11 = __reg3.getDepth();
                __reg3 = __reg1.shift();
                __reg4 = __reg3.getDepth();
                if (__reg11 < __reg4 - 1 && __reg4 > 0) 
                {
                    subject.swapDepths(__reg4 - 1);
                }
                subject.swapDepths(__reg3);
                if (__reg4 == targetDepth) 
                {
                    return;
                }
            }
        }
    }

    function getDepthByFlag(depthFlag, depthTable)
    {
        var __reg2 = 0;
        if (depthFlag == mx.managers.DepthManager.kTop || depthFlag == mx.managers.DepthManager.kNotopmost) 
        {
            var __reg5 = 0;
            var __reg7 = false;
            __reg8 = undefined;
            for (__reg8 in depthTable) 
            {
                __reg9 = depthTable[__reg8];
                __reg3 = typeof __reg9;
                if (__reg3 == "movieclip" || (__reg3 == "object" && __reg9.__getTextFormat != undefined)) 
                {
                    if (__reg9.getDepth() <= mx.managers.DepthManager.highestDepth) 
                    {
                        if (__reg9._topmost) 
                        {
                            if (__reg7) 
                            {
                                __reg5 = Math.min(__reg5, __reg9.getDepth());
                            }
                            else 
                            {
                                __reg5 = __reg9.getDepth();
                                __reg7 = true;
                            }
                        }
                        else 
                        {
                            __reg2 = Math.max(__reg2, __reg9.getDepth());
                        }
                    }
                }
            }
            __reg2 = __reg2 + 20;
            if (__reg7) 
            {
                if (__reg2 >= __reg5) 
                {
                    __reg2 = __reg5 - 1;
                }
            }
        }
        else if (depthFlag == mx.managers.DepthManager.kBottom) 
        {
            for (__reg8 in depthTable) 
            {
                __reg9 = depthTable[__reg8];
                __reg3 = typeof __reg9;
                if (__reg3 == "movieclip" || (__reg3 == "object" && __reg9.__getTextFormat != undefined)) 
                {
                    if (__reg9.getDepth() <= mx.managers.DepthManager.highestDepth) 
                    {
                        __reg2 = Math.min(__reg2, __reg9.getDepth());
                    }
                }
            }
            __reg2 = __reg2 - 20;
        }
        else if (depthFlag == mx.managers.DepthManager.kTopmost) 
        {
            for (var __reg8 in depthTable) 
            {
                var __reg9 = depthTable[__reg8];
                var __reg3 = typeof __reg9;
                if (__reg3 == "movieclip" || (__reg3 == "object" && __reg9.__getTextFormat != undefined)) 
                {
                    if (__reg9.getDepth() <= mx.managers.DepthManager.highestDepth) 
                    {
                        __reg2 = Math.max(__reg2, __reg9.getDepth());
                    }
                }
            }
            __reg2 = __reg2 + 100;
        }
        if (__reg2 >= mx.managers.DepthManager.highestDepth) 
        {
            __reg2 = mx.managers.DepthManager.highestDepth;
        }
        var __reg6 = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
        for (__reg9 in depthTable) 
        {
            var __reg4 = depthTable[__reg9];
            if (__reg4._parent != undefined) 
            {
                __reg6 = Math.min(__reg6, __reg4.getDepth());
            }
        }
        if (__reg2 <= __reg6) 
        {
            __reg2 = __reg6;
        }
        return __reg2;
    }

    function buildDepthTable(Void)
    {
        var __reg5 = new Array();
        var __reg4 = undefined;
        for (__reg4 in this) 
        {
            var __reg2 = this[__reg4];
            var __reg3 = typeof __reg2;
            if (__reg3 == "movieclip" || (__reg3 == "object" && __reg2.__getTextFormat != undefined)) 
            {
                if (__reg2._parent == this) 
                {
                    __reg5[__reg2.getDepth()] = __reg2;
                }
            }
        }
        return __reg5;
    }

}

