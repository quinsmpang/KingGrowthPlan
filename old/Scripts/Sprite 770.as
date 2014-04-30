//Sprite 770
//  InitClip
dynamic class mx.controls.UIScrollBar extends mx.controls.scrollClasses.ScrollBar
{
    static var symbolName: String = "UIScrollBar";
    static var symbolOwner = mx.controls.UIScrollBar;
    var className: String = "UIScrollBar";
    var clipParameters = {_targetInstanceName: 1, horizontal: 1};
    static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.UIScrollBar.prototype.clipParameters);
    static var version: String = "2.0.2.127";
    var __height;
    var __width;
    var _parent;
    var _rotation;
    var _xscale;
    var dispatchEvent;
    var hPosition;
    var hScroller;
    var hscroll;
    var initializing;
    var isScrolling;
    var onChanged;
    var onScroller;
    var scroll;
    var scrollPosition;
    var setScrollProperties;
    var synchScroll;
    var textField;
    var vPosition;
    var vScroller;
    var wasHorizontal;

    function UIScrollBar()
    {
        super();
    }

    function init(Void)
    {
        super.init();
        this.textField.owner = this;
        this.__set__horizontal(this.wasHorizontal);
        if (this.__get__horizontal()) 
        {
            this.textField == undefined ? super.setSize(this.__width, this.__height) : super.setSize(this.textField._width, 16);
        }
        else 
        {
            this.textField == undefined ? super.setSize(this.__width, this.__height) : super.setSize(16, this.textField._height);
        }
        if (this.__get__horizontal()) 
        {
            var __reg3 = this.__width;
            this.__height = this.__width;
            this.width = __reg3;
            this.__width = 16;
        }
        this.textField.onScroller = function ()
        {
            this.hPosition = this.hscroll;
            this.vPosition = this.scroll - 1;
        }
        ;
        if (this.__get___targetInstanceName() != undefined) 
        {
            this.setScrollTarget(this.__get___targetInstanceName());
            this.__get___targetInstanceName().addListener(this);
        }
    }

    function get _targetInstanceName()
    {
        return this.textField;
    }

    function get height()
    {
        if (this.wasHorizontal) 
        {
            return this.__width;
        }
        return this.__height;
    }

    function get width()
    {
        if (this.wasHorizontal) 
        {
            return this.__height;
        }
        return this.__width;
    }

    function size(Void)
    {
        super.size();
        this.onTextChanged();
    }

    function draw()
    {
        super.draw();
    }

    function set _targetInstanceName(t)
    {
        if (t == undefined) 
        {
            this.textField.removeListener(this);
            delete this.textField[this.__get__horizontal() ? "hScroller" : "vScroller"];
            if (this.textField.hScroller != undefined && this.textField.vScroller != undefined) 
            {
                this.textField.unwatch("text");
                this.textField.unwatch("htmltext");
            }
        }
        var __reg3 = this._parent[t];
        this.textField = this._parent[t];
        this.onTextChanged();
    }

    function setSize(w, h)
    {
        if (this.__get__horizontal()) 
        {
            super.setSize(h, w);
            return;
        }
        super.setSize(w, h);
    }

    function onTextChanged(Void)
    {
        if (this.textField != undefined) 
        {
            clearInterval(this.synchScroll);
            if (this.__get__horizontal()) 
            {
                var __reg2 = this.textField.hscroll;
                this.setScrollProperties(this.textField._width, 0, this.textField.maxhscroll);
                this.__set__scrollPosition(Math.min(__reg2, this.textField.maxhscroll));
                return;
            }
            __reg2 = this.textField.scroll;
            var __reg3 = this.textField.bottomScroll - this.textField.scroll;
            this.setScrollProperties(__reg3, 1, this.textField.maxscroll);
            this.__set__scrollPosition(Math.min(__reg2, this.textField.maxscroll));
        }
    }

    function get horizontal()
    {
        return this.wasHorizontal;
    }

    function set horizontal(v)
    {
        this.wasHorizontal = v;
        if (0 != v & 0 != this.initializing) 
        {
            if (this._rotation == 90) 
            {
                return;
            }
            this._xscale = -100;
            this._rotation = -90;
        }
        if (!this.initializing) 
        {
            if (v) 
            {
                if (this._rotation == 0) 
                {
                    this._rotation = -90;
                    this._xscale = -100;
                }
            }
            else if (this._rotation == -90) 
            {
                this._rotation = 0;
                this._xscale = 100;
            }
        }
    }

    function callback(prop, oldval, newval)
    {
        clearInterval(this.hScroller.synchScroll);
        clearInterval(this.vScroller.synchScroll);
        this.hScroller.synchScroll = setInterval(this.hScroller, "onTextChanged", 50);
        this.vScroller.synchScroll = setInterval(this.vScroller, "onTextChanged", 50);
        return newval;
    }

    function setScrollTarget(tF)
    {
        if (tF == undefined) 
        {
            this.textField.removeListener(this);
            delete this.textField[this.__get__horizontal() ? "hScroller" : "vScroller"];
            if (this.textField.hScroller != undefined && this.textField.vScroller != undefined) 
            {
                this.textField.unwatch("text");
                this.textField.unwatch("htmltext");
            }
        }
        this.textField = undefined;
        if (tF instanceof TextField) 
        {
            this.textField = tF;
            if (this.__get__horizontal()) 
            {
                this.textField.hScroller = this;
                this.textField.hScroller.lineScrollSize = 5;
            }
            else 
            {
                this.textField.vScroller = this;
                this.textField.vScroller.lineScrollSize = 1;
            }
            this.onTextChanged();
            this.onChanged = function (Void)
            {
                this.onTextChanged();
            }
            ;
            this.onScroller = function (Void)
            {
                if (this.isScrolling) 
                {
                    return;
                }
                if (!this.horizontal) 
                {
                    this.scrollPosition = this.textField.scroll;
                    return;
                }
                this.scrollPosition = this.textField.hscroll;
            }
            ;
            this.textField.addListener(this);
            this.textField.watch("text", this.callback);
            this.textField.watch("htmlText", this.callback);
        }
    }

    function scrollHandler(Void)
    {
        if (this.__get__horizontal()) 
        {
            var __reg2 = this.textField.background;
            this.textField.hscroll = this.scrollPosition;
            this.textField.background = __reg2;
            return;
        }
        this.textField.scroll = this.scrollPosition;
    }

    function setEnabled(enable)
    {
        super.setEnabled(enable);
        if (enable) 
        {
            this.textField.addListener(this);
            return;
        }
        this.textField.removeListener();
    }

    function dispatchScrollEvent(detail)
    {
        this.dispatchEvent({type: "scroll"});
    }

}

