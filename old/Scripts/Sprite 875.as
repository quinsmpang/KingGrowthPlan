//Sprite 875
//  InitClip
dynamic class mx.skins.halo.Defaults
{
    static var classConstructed = mx.skins.halo.Defaults.classConstruct();
    static var CSSStyleDeclarationDependency = mx.styles.CSSStyleDeclaration;
    static var UIObjectExtensionsDependency = mx.core.ext.UIObjectExtensions;
    static var UIObjectDependency = mx.core.UIObject;
    var beginFill;
    var beginGradientFill;
    var curveTo;
    var endFill;
    var lineTo;
    var moveTo;

    function Defaults()
    {
    }

    static function setThemeDefaults()
    {
        var __reg2 = _global.style;
        __reg2.themeColor = 8453965;
        __reg2.disabledColor = 8684164;
        __reg2.modalTransparency = 0;
        __reg2.filled = true;
        __reg2.stroked = true;
        __reg2.strokeWidth = 1;
        __reg2.strokeColor = 0;
        __reg2.fillColor = 16777215;
        __reg2.repeatInterval = 35;
        __reg2.repeatDelay = 500;
        __reg2.fontFamily = "_sans";
        __reg2.fontSize = 12;
        __reg2.selectionColor = 13500353;
        __reg2.rollOverColor = 14942166;
        __reg2.useRollOver = true;
        __reg2.backgroundDisabledColor = 14540253;
        __reg2.selectionDisabledColor = 14540253;
        __reg2.selectionDuration = 200;
        __reg2.openDuration = 250;
        __reg2.borderStyle = "inset";
        __reg2.color = 734012;
        __reg2.textSelectedColor = 24371;
        __reg2.textRollOverColor = 2831164;
        __reg2.textDisabledColor = 16777215;
        __reg2.vGridLines = true;
        __reg2.hGridLines = false;
        __reg2.vGridLineColor = 6710886;
        __reg2.hGridLineColor = 6710886;
        __reg2.headerColor = 15395562;
        __reg2.indentation = 17;
        __reg2.folderOpenIcon = "TreeFolderOpen";
        __reg2.folderClosedIcon = "TreeFolderClosed";
        __reg2.defaultLeafIcon = "TreeNodeIcon";
        __reg2.disclosureOpenIcon = "TreeDisclosureOpen";
        __reg2.disclosureClosedIcon = "TreeDisclosureClosed";
        __reg2.popupDuration = 150;
        __reg2.todayColor = 6710886;
        __reg2 = _global.styles.ScrollSelectList = new mx.styles.CSSStyleDeclaration();
        __reg2.backgroundColor = 16777215;
        __reg2.borderColor = 13290186;
        __reg2.borderStyle = "inset";
        __reg2 = _global.styles.ComboBox = new mx.styles.CSSStyleDeclaration();
        __reg2.borderStyle = "inset";
        __reg2 = _global.styles.NumericStepper = new mx.styles.CSSStyleDeclaration();
        __reg2.textAlign = "center";
        __reg2 = _global.styles.RectBorder = new mx.styles.CSSStyleDeclaration();
        __reg2.borderColor = 14015965;
        __reg2.buttonColor = 7305079;
        __reg2.shadowColor = 15658734;
        __reg2.highlightColor = 12897484;
        __reg2.shadowCapColor = 14015965;
        __reg2.borderCapColor = 9542041;
        var __reg4 = new Object();
        __reg4.borderColor = 16711680;
        __reg4.buttonColor = 16711680;
        __reg4.shadowColor = 16711680;
        __reg4.highlightColor = 16711680;
        __reg4.shadowCapColor = 16711680;
        __reg4.borderCapColor = 16711680;
        mx.core.UIComponent.prototype.origBorderStyles = __reg4;
        var __reg3 = undefined;
        __reg3 = _global.styles.TextInput = new mx.styles.CSSStyleDeclaration();
        __reg3.backgroundColor = 16777215;
        __reg3.borderStyle = "inset";
        _global.styles.TextArea = _global.styles.TextInput;
        __reg3 = _global.styles.Window = new mx.styles.CSSStyleDeclaration();
        __reg3.borderStyle = "default";
        __reg3 = _global.styles.windowStyles = new mx.styles.CSSStyleDeclaration();
        __reg3.fontWeight = "bold";
        __reg3 = _global.styles.dataGridStyles = new mx.styles.CSSStyleDeclaration();
        __reg3.fontWeight = "bold";
        __reg3 = _global.styles.Alert = new mx.styles.CSSStyleDeclaration();
        __reg3.borderStyle = "alert";
        __reg3 = _global.styles.ScrollView = new mx.styles.CSSStyleDeclaration();
        __reg3.borderStyle = "inset";
        __reg3 = _global.styles.View = new mx.styles.CSSStyleDeclaration();
        __reg3.borderStyle = "none";
        __reg3 = _global.styles.ProgressBar = new mx.styles.CSSStyleDeclaration();
        __reg3.color = 11187123;
        __reg3.fontWeight = "bold";
        __reg3 = _global.styles.AccordionHeader = new mx.styles.CSSStyleDeclaration();
        __reg3.fontWeight = "bold";
        __reg3.fontSize = "11";
        __reg3 = _global.styles.Accordion = new mx.styles.CSSStyleDeclaration();
        __reg3.borderStyle = "solid";
        __reg3.backgroundColor = 16777215;
        __reg3.borderColor = 9081738;
        __reg3.headerHeight = 22;
        __reg3.marginLeft = __reg3.marginRight = __reg3.marginTop = __reg3.marginBottom = -1;
        __reg3.verticalGap = -1;
        __reg3 = _global.styles.DateChooser = new mx.styles.CSSStyleDeclaration();
        __reg3.borderColor = 9542041;
        __reg3.headerColor = 16777215;
        __reg3 = _global.styles.CalendarLayout = new mx.styles.CSSStyleDeclaration();
        __reg3.fontSize = 10;
        __reg3.textAlign = "right";
        __reg3.color = 2831164;
        __reg3 = _global.styles.WeekDayStyle = new mx.styles.CSSStyleDeclaration();
        __reg3.fontWeight = "bold";
        __reg3.fontSize = 11;
        __reg3.textAlign = "center";
        __reg3.color = 2831164;
        __reg3 = _global.styles.TodayStyle = new mx.styles.CSSStyleDeclaration();
        __reg3.color = 16777215;
        __reg3 = _global.styles.HeaderDateText = new mx.styles.CSSStyleDeclaration();
        __reg3.fontSize = 12;
        __reg3.fontWeight = "bold";
        __reg3.textAlign = "center";
    }

    function drawRoundRect(x, y, w, h, r, c, alpha, rot, gradient, ratios)
    {
        if (typeof r == "object") 
        {
            __reg18 = r.br;
            __reg16 = r.bl;
            __reg15 = r.tl;
            __reg10 = r.tr;
        }
        else 
        {
            var __reg10;
            var __reg15;
            var __reg16;
            var __reg18 = __reg16 = __reg15 = __reg10 = r;
        }
        if (typeof c == "object") 
        {
            if (typeof alpha == "object") 
            {
                var __reg9 = alpha;
            }
            else 
            {
                __reg9 = [alpha, alpha];
            }
            if (ratios == undefined) 
            {
                ratios = [0, 255];
            }
            var __reg14 = h * 0.7;
            if (typeof rot == "object") 
            {
                var __reg11 = rot;
            }
            else 
            {
                __reg11 = {matrixType: "box", x: 0 - __reg14, y: __reg14, w: w * 2, h: h * 4, r: rot * 0.0174532925199};
            }
            if (gradient == "radial") 
            {
                this.beginGradientFill("radial", c, __reg9, ratios, __reg11);
            }
            else 
            {
                this.beginGradientFill("linear", c, __reg9, ratios, __reg11);
            }
        }
        else if (c != undefined) 
        {
            this.beginFill(c, alpha);
        }
        r = __reg18;
        var __reg13 = r - r * 0.707106781187;
        var __reg12 = r - r * 0.414213562373;
        this.moveTo(x + w, y + h - r);
        this.lineTo(x + w, y + h - r);
        this.curveTo(x + w, y + h - __reg12, x + w - __reg13, y + h - __reg13);
        this.curveTo(x + w - __reg12, y + h, x + w - r, y + h);
        r = __reg16;
        __reg13 = r - r * 0.707106781187;
        __reg12 = r - r * 0.414213562373;
        this.lineTo(x + r, y + h);
        this.curveTo(x + __reg12, y + h, x + __reg13, y + h - __reg13);
        this.curveTo(x, y + h - __reg12, x, y + h - r);
        r = __reg15;
        __reg13 = r - r * 0.707106781187;
        __reg12 = r - r * 0.414213562373;
        this.lineTo(x, y + r);
        this.curveTo(x, y + __reg12, x + __reg13, y + __reg13);
        this.curveTo(x + __reg12, y, x + r, y);
        r = __reg10;
        __reg13 = r - r * 0.707106781187;
        __reg12 = r - r * 0.414213562373;
        this.lineTo(x + w - r, y);
        this.curveTo(x + w - __reg12, y, x + w - __reg13, y + __reg13);
        this.curveTo(x + w, y + __reg12, x + w, y + r);
        this.lineTo(x + w, y + h - r);
        if (c != undefined) 
        {
            this.endFill();
        }
    }

    static function classConstruct()
    {
        mx.core.ext.UIObjectExtensions.Extensions();
        mx.skins.halo.Defaults.setThemeDefaults();
        mx.core.UIObject.prototype.drawRoundRect = mx.skins.halo.Defaults.prototype.drawRoundRect;
        return true;
    }

}

