.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;,
        Landroid/widget/SimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Landroid/icu/util/Calendar;

.field private mCellWidth:I

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method static synthetic -get0(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SimpleMonthView;I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/SimpleMonthView;II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 72
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 73
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 74
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 79
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 111
    iput v2, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 117
    iput v2, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 120
    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 132
    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 135
    const/16 v1, 0x1f

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 142
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 143
    iput v2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 163
    const v1, 0x1050153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 164
    const v1, 0x1050154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 165
    const v1, 0x1050155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 167
    const v1, 0x1050156

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 170
    new-instance v1, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v1, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 171
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 172
    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 174
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 175
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 177
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 179
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 180
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 182
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 158
    return-void
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 210
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 211
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 210
    invoke-virtual {v4, v7, v5, v6, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 213
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 215
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    .line 218
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 222
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_1

    .line 223
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 224
    .local v0, "enabledColor":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    .end local v0    # "enabledColor":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    .line 660
    .local v18, "p":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    move/from16 v25, v0

    add-int v13, v24, v25

    .line 661
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v21, v0

    .line 662
    .local v21, "rowHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 665
    .local v9, "colWidth":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->ascent()F

    move-result v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->descent()F

    move-result v25

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v12, v24, v25

    .line 666
    .local v12, "halfLineHeight":F
    div-int/lit8 v24, v21, 0x2

    add-int v20, v13, v24

    .line 668
    .local v20, "rowCenter":I
    const/4 v10, 0x1

    .local v10, "day":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v6

    .local v6, "col":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v10, v0, :cond_b

    .line 669
    mul-int v24, v9, v6

    div-int/lit8 v25, v9, 0x2

    add-int v7, v24, v25

    .line 671
    .local v7, "colCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v24, v0

    sub-int v8, v24, v7

    .line 677
    .local v8, "colCenterRtl":I
    :goto_1
    const/16 v22, 0x0

    .line 679
    .local v22, "stateMask":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v15

    .line 680
    .local v15, "isDayEnabled":Z
    if-eqz v15, :cond_0

    .line 681
    const/16 v22, 0x8

    .line 684
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v10, :cond_5

    const/4 v14, 0x1

    .line 685
    .local v14, "isDayActivated":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v10, :cond_6

    const/16 v16, 0x1

    .line 686
    .local v16, "isDayHighlighted":Z
    :goto_3
    if-eqz v14, :cond_8

    .line 687
    or-int/lit8 v22, v22, 0x20

    .line 690
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .line 692
    .local v19, "paint":Landroid/graphics/Paint;
    :goto_4
    int-to-float v0, v8

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 703
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mToday:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v10, :cond_9

    const/16 v17, 0x1

    .line 705
    .local v17, "isDayToday":Z
    :goto_6
    if-eqz v17, :cond_2

    if-eqz v14, :cond_a

    .line 708
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/util/StateSet;->get(I)[I

    move-result-object v23

    .line 709
    .local v23, "stateSet":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    .line 711
    .end local v23    # "stateSet":[I
    .local v11, "dayTextColor":I
    :goto_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move-object/from16 v24, v0

    int-to-long v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v24

    int-to-float v0, v8

    move/from16 v25, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 715
    add-int/lit8 v6, v6, 0x1

    .line 717
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v6, v0, :cond_3

    .line 718
    const/4 v6, 0x0

    .line 719
    add-int v20, v20, v21

    .line 668
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 674
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayHighlighted":Z
    .end local v17    # "isDayToday":Z
    .end local v22    # "stateMask":I
    :cond_4
    move v8, v7

    .restart local v8    # "colCenterRtl":I
    goto/16 :goto_1

    .line 684
    .restart local v15    # "isDayEnabled":Z
    .restart local v22    # "stateMask":I
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "isDayActivated":Z
    goto/16 :goto_2

    .line 685
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "isDayHighlighted":Z
    goto/16 :goto_3

    .line 691
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .restart local v19    # "paint":Landroid/graphics/Paint;
    goto/16 :goto_4

    .line 693
    .end local v19    # "paint":Landroid/graphics/Paint;
    :cond_8
    if-eqz v16, :cond_1

    .line 694
    or-int/lit8 v22, v22, 0x10

    .line 696
    if-eqz v15, :cond_1

    .line 698
    int-to-float v0, v8

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    .line 698
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 703
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 706
    .restart local v17    # "isDayToday":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getColor()I

    move-result v11

    .restart local v11    # "dayTextColor":I
    goto/16 :goto_7

    .line 658
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v11    # "dayTextColor":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayEnabled":Z
    .end local v16    # "isDayHighlighted":Z
    .end local v17    # "isDayToday":Z
    .end local v22    # "stateMask":I
    :cond_b
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 632
    iget-object v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 633
    .local v7, "p":Landroid/text/TextPaint;
    iget v5, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 634
    .local v5, "headerHeight":I
    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 635
    .local v9, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 638
    .local v3, "colWidth":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v10, v11

    .line 639
    .local v4, "halfLineHeight":F
    div-int/lit8 v10, v9, 0x2

    add-int v8, v5, v10

    .line 641
    .local v8, "rowCenter":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    const/4 v10, 0x7

    if-ge v0, v10, :cond_1

    .line 642
    mul-int v10, v3, v0

    div-int/lit8 v11, v3, 0x2

    add-int v1, v10, v11

    .line 644
    .local v1, "colCenter":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 645
    iget v10, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v2, v10, v1

    .line 650
    .local v2, "colCenterRtl":I
    :goto_1
    iget-object v10, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v6, v10, v0

    .line 651
    .local v6, "label":Ljava/lang/String;
    int-to-float v10, v2

    int-to-float v11, v8

    sub-float/2addr v11, v4

    invoke-virtual {p1, v6, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    .end local v2    # "colCenterRtl":I
    .end local v6    # "label":Ljava/lang/String;
    :cond_0
    move v2, v1

    .restart local v2    # "colCenterRtl":I
    goto :goto_1

    .line 631
    .end local v1    # "colCenter":I
    .end local v2    # "colCenterRtl":I
    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 618
    iget v3, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 621
    .local v1, "x":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float v0, v3, v4

    .line 622
    .local v0, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float v2, v3, v5

    .line 624
    .local v2, "y":F
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 617
    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 580
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v0, v1, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 584
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 585
    return-void

    .line 587
    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 588
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 589
    return-void

    .line 591
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 579
    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 5
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    const/4 v2, 0x3

    return v2

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v0, v2, v3

    .line 550
    .local v0, "centerX":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 551
    .local v1, "columnFromLeft":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    rsub-int/lit8 v2, v1, 0x7

    add-int/lit8 v1, v2, -0x1

    .end local v1    # "columnFromLeft":I
    :cond_1
    return v1
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 12
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x0

    .line 517
    if-nez p1, :cond_0

    .line 518
    const/4 v9, 0x3

    return v9

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 522
    .local v0, "centerY":I
    iget-object v5, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 523
    .local v5, "p":Landroid/text/TextPaint;
    iget v9, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v11, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v9, v11

    .line 524
    .local v2, "headerHeight":I
    iget v8, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 527
    .local v8, "rowHeight":I
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v1, v9, v11

    .line 528
    .local v1, "halfLineHeight":F
    div-int/lit8 v9, v8, 0x2

    add-int v7, v2, v9

    .line 530
    .local v7, "rowCenter":I
    int-to-float v9, v0

    int-to-float v11, v7

    sub-float/2addr v11, v1

    sub-float/2addr v9, v11

    float-to-int v0, v9

    .line 531
    int-to-float v9, v0

    int-to-float v11, v8

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 532
    .local v6, "row":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    iget v11, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int v3, v9, v11

    .line 533
    .local v3, "maxDay":I
    div-int/lit8 v11, v3, 0x7

    rem-int/lit8 v9, v3, 0x7

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    sub-int v4, v11, v9

    .line 535
    .local v4, "maxRows":I
    invoke-static {v6, v10, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 536
    return v6

    .end local v4    # "maxRows":I
    :cond_1
    move v9, v10

    .line 533
    goto :goto_0
.end method

.method private findDayOffset()I
    .locals 3

    .prologue
    .line 925
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int v0, v1, v2

    .line 926
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    if-ge v1, v2, :cond_0

    .line 927
    add-int/lit8 v1, v0, 0x7

    return v1

    .line 929
    :cond_0
    return v0
.end method

.method private getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 979
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 980
    const/4 v8, 0x0

    return v8

    .line 983
    :cond_0
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    add-int v3, v8, v9

    .line 986
    .local v3, "index":I
    rem-int/lit8 v0, v3, 0x7

    .line 987
    .local v0, "col":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 989
    .local v1, "colWidth":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v9, v1

    sub-int v4, v8, v9

    .line 996
    .local v4, "left":I
    :goto_0
    div-int/lit8 v5, v3, 0x7

    .line 997
    .local v5, "row":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 998
    .local v6, "rowHeight":I
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    .line 999
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v2

    mul-int v9, v5, v6

    add-int v7, v8, v9

    .line 1001
    .local v7, "top":I
    add-int v8, v4, v1

    add-int v9, v7, v6

    invoke-virtual {p2, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1003
    const/4 v8, 0x1

    return v8

    .line 992
    .end local v2    # "headerHeight":I
    .end local v4    # "left":I
    .end local v5    # "row":I
    .end local v6    # "rowHeight":I
    .end local v7    # "top":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    mul-int v9, v0, v1

    add-int v4, v8, v9

    .restart local v4    # "left":I
    goto :goto_0
.end method

.method private getDayAtLocation(II)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, -0x1

    .line 942
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int v4, p1, v8

    .line 943
    .local v4, "paddedX":I
    if-ltz v4, :cond_0

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v4, v8, :cond_1

    .line 944
    :cond_0
    return v10

    .line 947
    :cond_1
    iget v8, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int v2, v8, v9

    .line 948
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int v6, p2, v8

    .line 949
    .local v6, "paddedY":I
    if-lt v6, v2, :cond_2

    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v6, v8, :cond_3

    .line 950
    :cond_2
    return v10

    .line 955
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 956
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int v5, v8, v4

    .line 961
    .local v5, "paddedXRtl":I
    :goto_0
    sub-int v8, v6, v2

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int v7, v8, v9

    .line 962
    .local v7, "row":I
    mul-int/lit8 v8, v5, 0x7

    iget v9, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int v0, v8, v9

    .line 963
    .local v0, "col":I
    mul-int/lit8 v8, v7, 0x7

    add-int v3, v0, v8

    .line 964
    .local v3, "index":I
    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int v1, v8, v9

    .line 965
    .local v1, "day":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 966
    return v10

    .line 958
    .end local v0    # "col":I
    .end local v1    # "day":I
    .end local v3    # "index":I
    .end local v5    # "paddedXRtl":I
    .end local v7    # "row":I
    :cond_4
    move v5, v4

    .restart local v5    # "paddedXRtl":I
    goto :goto_0

    .line 969
    .restart local v0    # "col":I
    .restart local v1    # "day":I
    .restart local v3    # "index":I
    .restart local v7    # "row":I
    :cond_5
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 833
    packed-switch p0, :pswitch_data_0

    .line 850
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :pswitch_0
    const/16 v0, 0x1f

    return v0

    .line 846
    :pswitch_1
    const/16 v0, 0x1e

    return v0

    .line 848
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 264
    const v6, 0x10405bb

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "monthTypeface":Ljava/lang/String;
    const v6, 0x10405bc

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v6, 0x10405bd

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "dayTypeface":Ljava/lang/String;
    const v6, 0x105014f

    .line 268
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 271
    .local v4, "monthTextSize":I
    const v6, 0x1050150

    .line 270
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 273
    .local v0, "dayOfWeekTextSize":I
    const v6, 0x1050151

    .line 272
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 275
    .local v2, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 278
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 279
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 284
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 285
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 288
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 291
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 300
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 2
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x0

    .line 725
    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x0

    .line 595
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 596
    .local v0, "offset":I
    add-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isLastDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 601
    .local v0, "offset":I
    add-int v2, v0, p1

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isValidDayOfMonth(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    if-lt p1, v0, :cond_0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 3
    .param p0, "day"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 733
    if-lt p0, v0, :cond_0

    const/4 v2, 0x7

    if-gt p0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 2
    .param p0, "month"    # I

    .prologue
    const/4 v0, 0x0

    .line 737
    if-ltz p0, :cond_0

    const/16 v1, 0xb

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private moveOneDay(Z)Z
    .locals 3
    .param p1, "positive"    # Z

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "focusChanged":Z
    if-eqz p1, :cond_1

    .line 461
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v2, :cond_0

    .line 462
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 463
    const/4 v0, 0x1

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 467
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 468
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDayClicked(I)Z
    .locals 4
    .param p1, "day"    # I

    .prologue
    const/4 v3, 0x1

    .line 1013
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_0

    .line 1018
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1019
    .local v0, "date":Landroid/icu/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1020
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    .line 1024
    .end local v0    # "date":Landroid/icu/util/Calendar;
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1025
    return v3

    .line 1014
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private sameDay(ILandroid/icu/util/Calendar;)Z
    .locals 4
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/icu/util/Calendar;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 855
    iget v2, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 856
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 855
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 856
    goto :goto_0

    :cond_1
    move v0, v1

    .line 855
    goto :goto_0
.end method

.method private updateDayOfWeekLabels()V
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-object v1, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .line 196
    .local v1, "tinyWeekdayNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 197
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v1, v3

    aput-object v3, v2, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string/jumbo v3, "MMMMy"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 188
    .local v1, "formatter":Landroid/icu/text/SimpleDateFormat;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 189
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 557
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 558
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    .line 556
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getMonthHeight()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 607
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 608
    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 610
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 611
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 612
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 614
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 605
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 477
    if-eqz p1, :cond_0

    .line 481
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v3

    .line 482
    .local v3, "offset":I
    sparse-switch p2, :sswitch_data_0

    .line 507
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 510
    .end local v3    # "offset":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 476
    return-void

    .line 484
    .restart local v3    # "offset":I
    :sswitch_0
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v4

    .line 485
    .local v4, "row":I
    if-nez v4, :cond_1

    :goto_1
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    :cond_1
    mul-int/lit8 v5, v4, 0x7

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 489
    .end local v4    # "row":I
    :sswitch_1
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 490
    .restart local v4    # "row":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v6, v4, 0x7

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 494
    .end local v4    # "row":I
    :sswitch_2
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v0

    .line 495
    .local v0, "col":I
    sub-int v6, v0, v3

    add-int/lit8 v1, v6, 0x1

    .line 496
    .local v1, "day":I
    if-ge v1, v5, :cond_2

    add-int/lit8 v1, v1, 0x7

    .end local v1    # "day":I
    :cond_2
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 500
    .end local v0    # "col":I
    :sswitch_3
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v0

    .line 501
    .restart local v0    # "col":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v5, v3

    div-int/lit8 v2, v5, 0x7

    .line 502
    .local v2, "maxWeeks":I
    sub-int v5, v0, v3

    mul-int/lit8 v6, v2, 0x7

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x1

    .line 503
    .restart local v1    # "day":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-le v1, v5, :cond_3

    add-int/lit8 v1, v1, -0x7

    .end local v1    # "day":I
    :cond_3
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    goto :goto_0

    .line 482
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_0

    .line 568
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 569
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 572
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 565
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 449
    .end local v1    # "focusChanged":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 451
    return v5

    .line 392
    .restart local v1    # "focusChanged":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v1

    .local v1, "focusChanged":Z
    goto :goto_0

    .line 397
    .local v1, "focusChanged":Z
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v1

    .local v1, "focusChanged":Z
    goto :goto_0

    .local v1, "focusChanged":Z
    :cond_1
    move v4, v5

    goto :goto_1

    .line 402
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 404
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v6, 0x7

    if-le v4, v6, :cond_0

    .line 405
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v4, v4, -0x7

    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 406
    const/4 v1, 0x1

    goto :goto_0

    .line 411
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 413
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v6, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/lit8 v6, v6, -0x7

    if-gt v4, v6, :cond_0

    .line 414
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 415
    const/4 v1, 0x1

    goto :goto_0

    .line 421
    :sswitch_4
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 422
    iget v4, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v4}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 423
    return v5

    .line 427
    :sswitch_5
    const/4 v0, 0x0

    .line 428
    .local v0, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 429
    const/4 v0, 0x2

    .line 433
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 436
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v2, p0

    .line 438
    .local v2, "nextFocus":Landroid/view/View;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_4

    if-eq v2, p0, :cond_4

    .line 440
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v3, :cond_3

    .line 441
    :cond_4
    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 443
    return v5

    .line 430
    .end local v2    # "nextFocus":Landroid/view/View;
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_5
    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 431
    const/4 v0, 0x1

    goto :goto_2

    .line 453
    .end local v0    # "focusChangeDirection":I
    .end local v1    # "focusChanged":Z
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3d -> :sswitch_5
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 881
    return-void

    .line 885
    :cond_0
    sub-int v17, p4, p2

    .line 886
    .local v17, "w":I
    sub-int v3, p5, p3

    .line 887
    .local v3, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    .line 888
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 889
    .local v15, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    .line 890
    .local v14, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 891
    .local v12, "paddingBottom":I
    sub-int v10, v17, v14

    .line 892
    .local v10, "paddedRight":I
    sub-int v8, v3, v12

    .line 893
    .local v8, "paddedBottom":I
    sub-int v11, v10, v13

    .line 894
    .local v11, "paddedWidth":I
    sub-int v9, v8, v15

    .line 895
    .local v9, "paddedHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v11, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v9, v0, :cond_2

    .line 896
    :cond_1
    return-void

    .line 899
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 900
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 904
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v6, v18, v12

    .line 905
    .local v6, "measuredPaddedHeight":I
    int-to-float v0, v9

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 906
    .local v16, "scaleH":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v7, v0

    .line 907
    .local v7, "monthHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    move/from16 v18, v0

    div-int/lit8 v2, v18, 0x7

    .line 908
    .local v2, "cellWidth":I
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 910
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 911
    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 915
    div-int/lit8 v18, v2, 0x2

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int v5, v18, v19

    .line 916
    .local v5, "maxSelectorWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v4, v18, v12

    .line 917
    .local v4, "maxSelectorHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    move/from16 v18, v0

    .line 918
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 917
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 879
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 861
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v4, v4, 0x6

    .line 862
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 861
    add-int/2addr v4, v5

    .line 862
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 861
    add-int/2addr v4, v5

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 861
    add-int/2addr v4, v5

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 861
    add-int v0, v4, v5

    .line 864
    .local v0, "preferredHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v4, v4, 0x7

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    .line 864
    add-int/2addr v4, v5

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    .line 864
    add-int v1, v4, v5

    .line 866
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .line 867
    .local v3, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .line 868
    .local v2, "resolvedHeight":I
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 860
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 873
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 875
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 872
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 349
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v4, v5

    .line 351
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 352
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return v8

    .line 355
    :pswitch_0
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    .line 356
    .local v2, "touchedItem":I
    iput-boolean v8, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 357
    iget v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v5, v2, :cond_1

    .line 358
    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 359
    iput v2, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 362
    :cond_1
    if-nez v0, :cond_0

    if-gez v2, :cond_0

    .line 364
    return v6

    .line 369
    .end local v2    # "touchedItem":I
    :pswitch_1
    invoke-direct {p0, v3, v4}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v1

    .line 370
    .local v1, "clickedDay":I
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 374
    .end local v1    # "clickedDay":I
    :pswitch_2
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 375
    iput-boolean v6, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 331
    const/16 v1, 0x18

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 330
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 332
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 329
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 247
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 246
    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 310
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 311
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 309
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 322
    const/16 v1, 0x28

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 323
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 320
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 252
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 253
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 254
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 251
    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 316
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 315
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    .prologue
    .line 761
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 767
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 770
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 760
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0
.end method

.method setMonthParams(IIIIII)V
    .locals 7
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .prologue
    const/4 v6, 0x1

    .line 792
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 794
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 797
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 799
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 800
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 801
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Landroid/icu/util/Calendar;->set(II)V

    .line 802
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 804
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 805
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 811
    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    .line 812
    .local v2, "today":Landroid/icu/util/Calendar;
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 813
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v3, v4}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 814
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_3

    .line 815
    add-int/lit8 v0, v1, 0x1

    .line 816
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 817
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 814
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    .end local v0    # "day":I
    .end local v1    # "i":I
    .end local v2    # "today":Landroid/icu/util/Calendar;
    :cond_2
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 821
    .restart local v1    # "i":I
    .restart local v2    # "today":Landroid/icu/util/Calendar;
    :cond_3
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p5, v6, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 822
    iget v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 824
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 825
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 828
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 829
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 791
    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 241
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 240
    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 304
    sget-object v1, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 305
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 303
    return-void
.end method

.method public setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .prologue
    .line 337
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 336
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 747
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 750
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 746
    return-void
.end method
