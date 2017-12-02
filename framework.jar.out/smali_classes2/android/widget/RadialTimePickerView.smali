.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$1;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final ANIM_DURATION_TOUCH:I = 0x3c

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static synthetic -get0(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/RadialTimePickerView;)F
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method static synthetic -get3(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return v0
.end method

.method static synthetic -get5(Landroid/widget/RadialTimePickerView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic -get6(Landroid/widget/RadialTimePickerView;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic -get8(Landroid/widget/RadialTimePickerView;)I
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/RadialTimePickerView;F)F
    .locals 0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/RadialTimePickerView;I)Z
    .locals 1
    .param p1, "hour"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p1, "hour"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p1, "minute"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(II)I
    .locals 1
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    .line 85
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 86
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    sput-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 87
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    sput-object v3, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 92
    const/16 v3, 0x169

    new-array v3, v3, [I

    sput-object v3, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 95
    new-array v3, v8, [F

    sput-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 96
    new-array v3, v8, [F

    sput-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 103
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 105
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 106
    .local v4, "increment":D
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 107
    .local v0, "angle":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 108
    sget-object v3, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    .line 109
    sget-object v3, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v3, v2

    .line 110
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v0, v6

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void

    .line 85
    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 86
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 87
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 319
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v5, Landroid/widget/RadialTimePickerView$1;

    const-string/jumbo v6, "hoursToMinutes"

    invoke-direct {v5, p0, v6}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    .line 114
    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 128
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 129
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 130
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 131
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 133
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Paint;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 134
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 135
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Paint;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 136
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 140
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/content/res/ColorStateList;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 141
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 142
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 144
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    const/16 v7, 0xc

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 145
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    const/16 v7, 0xc

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 147
    const/16 v5, 0xc

    new-array v5, v5, [F

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 148
    const/16 v5, 0xc

    new-array v5, v5, [F

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 150
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 154
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 194
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 958
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 330
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 333
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 334
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 335
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 337
    const-string/jumbo v5, "sans-serif"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 339
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 340
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 341
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 343
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 344
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 347
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 349
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 350
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 352
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 353
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 356
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 357
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 359
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 362
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x105013c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 363
    const v5, 0x105013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 364
    const v5, 0x105013f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 365
    const v5, 0x105013e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 367
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v6, 0x1050141

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 368
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v6, 0x1050141

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 369
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v6, 0x1050142

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 371
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v6, 0x1050140

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 372
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v6, 0x1050140

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 373
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v6, 0x10500cb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 375
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 376
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 377
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 378
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 381
    new-instance v5, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v5, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 382
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 385
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 388
    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 389
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 392
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 393
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 394
    .local v1, "currentHour":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 396
    .local v2, "currentMinute":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 397
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 399
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 327
    return-void
.end method

.method private animatePicker(ZJ)V
    .locals 6
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 700
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    int-to-float v0, v1

    .line 701
    .local v0, "target":F
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 703
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 705
    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 709
    :cond_0
    return-void

    .end local v0    # "target":F
    :cond_1
    move v1, v3

    .line 700
    goto :goto_0

    .line 712
    .restart local v0    # "target":F
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    aput v0, v4, v2

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 713
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 714
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 715
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 699
    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .prologue
    .line 879
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 880
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    .line 882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 883
    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 884
    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 848
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    int-to-float v1, v0

    .line 851
    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    .line 852
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v6, v6, v7

    .line 851
    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 855
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 856
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v8

    sub-int v9, v0, v2

    .line 857
    .local v9, "innerNumbersRadius":I
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v2, v0, v7

    int-to-float v3, v9

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v5, v0

    .line 858
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v8

    int-to-float v6, v0

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 857
    invoke-static/range {v2 .. v8}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 846
    .end local v9    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 864
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v7

    sub-int/2addr v0, v2

    int-to-float v1, v0

    .line 867
    .local v1, "numbersRadius":F
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, v7

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v3, v3

    .line 868
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v6, v6, v7

    .line 867
    invoke-static/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 862
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .prologue
    .line 781
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 782
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 780
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 719
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 718
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 723
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p3

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 724
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_0

    .line 727
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 728
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 729
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 730
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 734
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 735
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 736
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 737
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 722
    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    .prologue
    .line 743
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 744
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v1, 0x0

    aget-object v6, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v1, 0x0

    aget-object v7, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 745
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v9, p2

    move/from16 v12, p3

    .line 743
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 748
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    aget-object v4, v0, v1

    .line 750
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    .line 751
    if-eqz p3, :cond_3

    iget-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    :goto_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v9, p2

    move/from16 v12, p3

    .line 749
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 741
    :cond_1
    return-void

    .line 745
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 751
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 756
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p3

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 757
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_0

    .line 760
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 761
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 762
    invoke-direct {p0, p1, v0, v3}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 763
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 767
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 768
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 769
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 755
    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    .prologue
    .line 775
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 776
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    const/4 v1, 0x1

    aget-object v6, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    const/4 v1, 0x1

    aget-object v7, v0, v1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    .line 777
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    .line 775
    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 774
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    .prologue
    .line 791
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v4, :cond_2

    const/16 v18, 0x2

    .line 792
    .local v18, "hoursIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v19, v4, v18

    .line 793
    .local v19, "hoursInset":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, v18, 0x2

    aget v16, v4, v5

    .line 794
    .local v16, "hoursAngleDeg":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, v18, 0x2

    aget v4, v4, v5

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    int-to-float v0, v4

    move/from16 v17, v0

    .line 796
    .local v17, "hoursDotScale":F
    const/16 v23, 0x1

    .line 797
    .local v23, "minutesIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v5, 0x1

    aget v24, v4, v5

    .line 798
    .local v24, "minutesInset":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v5, 0x1

    aget v21, v4, v5

    .line 799
    .local v21, "minutesAngleDeg":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    int-to-float v0, v4

    move/from16 v22, v0

    .line 802
    .local v22, "minutesDotScale":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    move/from16 v31, v0

    .line 804
    .local v31, "selRadius":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-static {v5, v6, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    sub-float v30, v4, v5

    .line 806
    .local v30, "selLength":F
    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v4, v5, v6}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    .line 807
    .local v26, "selAngleRad":D
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v4, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v5, v0

    mul-float v5, v5, v30

    add-float v28, v4, v5

    .line 808
    .local v28, "selCenterX":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v5, v0

    mul-float v5, v5, v30

    sub-float v29, v4, v5

    .line 811
    .local v29, "selCenterY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v5, 0x0

    aget-object v25, v4, v5

    .line 812
    .local v25, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    move/from16 v0, v31

    int-to-float v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 816
    if-eqz p2, :cond_0

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 818
    move/from16 v0, v31

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, p2

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 822
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v15

    .line 823
    .local v15, "dotScale":F
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-lez v4, :cond_1

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v5, 0x1

    aget-object v14, v4, v5

    .line 825
    .local v14, "dotPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v15

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v4, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 831
    .end local v14    # "dotPaint":Landroid/graphics/Paint;
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    .line 832
    .local v32, "sin":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 833
    .local v12, "cos":D
    move/from16 v0, v31

    int-to-float v4, v0

    sub-float v20, v30, v4

    .line 834
    .local v20, "lineLength":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v0, v5

    move-wide/from16 v34, v0

    mul-double v34, v34, v32

    move-wide/from16 v0, v34

    double-to-int v5, v0

    add-int v10, v4, v5

    .line 835
    .local v10, "centerX":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v0, v5

    move-wide/from16 v34, v0

    mul-double v34, v34, v12

    move-wide/from16 v0, v34

    double-to-int v5, v0

    sub-int v11, v4, v5

    .line 836
    .local v11, "centerY":I
    move/from16 v0, v20

    float-to-double v4, v0

    mul-double v4, v4, v32

    double-to-int v4, v4

    add-int/2addr v4, v10

    int-to-float v7, v4

    .line 837
    .local v7, "linePointX":F
    move/from16 v0, v20

    float-to-double v4, v0

    mul-double/2addr v4, v12

    double-to-int v4, v4

    sub-int v4, v11, v4

    int-to-float v8, v4

    .line 840
    .local v8, "linePointY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v5, 0x2

    aget-object v9, v4, v5

    .line 841
    .local v9, "linePaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 842
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 843
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 789
    return-void

    .line 791
    .end local v7    # "linePointX":F
    .end local v8    # "linePointY":F
    .end local v9    # "linePaint":Landroid/graphics/Paint;
    .end local v10    # "centerX":I
    .end local v11    # "centerY":I
    .end local v12    # "cos":D
    .end local v15    # "dotScale":F
    .end local v16    # "hoursAngleDeg":I
    .end local v17    # "hoursDotScale":F
    .end local v18    # "hoursIndex":I
    .end local v19    # "hoursInset":I
    .end local v20    # "lineLength":F
    .end local v21    # "minutesAngleDeg":I
    .end local v22    # "minutesDotScale":F
    .end local v23    # "minutesIndex":I
    .end local v24    # "minutesInset":I
    .end local v25    # "paint":Landroid/graphics/Paint;
    .end local v26    # "selAngleRad":D
    .end local v28    # "selCenterX":F
    .end local v29    # "selCenterY":F
    .end local v30    # "selLength":F
    .end local v31    # "selRadius":I
    .end local v32    # "sin":D
    :cond_2
    const/16 v18, 0x0

    .restart local v18    # "hoursIndex":I
    goto/16 :goto_0

    .line 794
    .restart local v16    # "hoursAngleDeg":I
    .restart local v19    # "hoursInset":I
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 799
    .restart local v17    # "hoursDotScale":F
    .restart local v21    # "minutesAngleDeg":I
    .restart local v23    # "minutesIndex":I
    .restart local v24    # "minutesInset":I
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    .prologue
    .line 894
    move-object/from16 v0, p8

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 895
    move-object/from16 v0, p8

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 898
    move/from16 v0, p11

    int-to-float v9, v0

    const/high16 v10, 0x41f00000    # 30.0f

    div-float v5, v9, v10

    .line 899
    .local v5, "activatedIndex":F
    float-to-int v4, v5

    .line 900
    .local v4, "activatedFloor":I
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    rem-int/lit8 v3, v9, 0xc

    .line 902
    .local v3, "activatedCeil":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v9, 0xc

    if-ge v7, v9, :cond_5

    .line 903
    if-eq v4, v7, :cond_0

    if-ne v3, v7, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 904
    .local v2, "activated":Z
    :goto_1
    if-eqz p12, :cond_1

    if-eqz v2, :cond_2

    .line 909
    :cond_1
    if-eqz p10, :cond_4

    if-eqz v2, :cond_4

    const/16 v9, 0x20

    .line 908
    :goto_2
    or-int/lit8 v8, v9, 0x8

    .line 910
    .local v8, "stateMask":I
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 911
    .local v6, "color":I
    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 912
    move/from16 v0, p9

    invoke-direct {p0, v6, v0}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v9

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 914
    aget-object v9, p5, v7

    aget v10, p6, v7

    aget v11, p7, v7

    move-object/from16 v0, p8

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 902
    .end local v6    # "color":I
    .end local v8    # "stateMask":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 903
    .end local v2    # "activated":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "activated":Z
    goto :goto_1

    .line 909
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 893
    .end local v2    # "activated":Z
    :cond_5
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .prologue
    const/16 v1, 0xc

    .line 546
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    .line 547
    if-lt p1, v1, :cond_0

    .line 548
    add-int/lit8 p1, p1, -0xc

    .line 553
    :cond_0
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0

    .line 550
    :cond_1
    if-ne p1, v1, :cond_0

    .line 551
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 587
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .prologue
    .line 922
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v13, :cond_1

    .line 923
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 924
    .local v11, "innerBound":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 932
    .local v12, "outerBound":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v13, v13

    sub-float v13, p1, v13

    float-to-double v4, v13

    .line 933
    .local v4, "dX":D
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v13, v13

    sub-float v13, p2, v13

    float-to-double v6, v13

    .line 934
    .local v6, "dY":D
    mul-double v14, v4, v4

    mul-double v16, v6, v6

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 935
    .local v8, "distFromCenter":D
    int-to-double v14, v11

    cmpg-double v13, v8, v14

    if-ltz v13, :cond_0

    if-eqz p3, :cond_3

    int-to-double v14, v12

    cmpl-double v13, v8, v14

    if-lez v13, :cond_3

    .line 936
    :cond_0
    const/4 v13, -0x1

    return v13

    .line 926
    .end local v4    # "dX":D
    .end local v6    # "dY":D
    .end local v8    # "distFromCenter":D
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v13, :cond_2

    const/4 v10, 0x0

    .line 927
    .local v10, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v14, v14, v10

    sub-int v2, v13, v14

    .line 928
    .local v2, "center":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v11, v2, v13

    .line 929
    .restart local v11    # "innerBound":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int v12, v2, v13

    .restart local v12    # "outerBound":I
    goto :goto_0

    .line 926
    .end local v2    # "center":I
    .end local v10    # "index":I
    .end local v11    # "innerBound":I
    .end local v12    # "outerBound":I
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "index":I
    goto :goto_1

    .line 940
    .end local v10    # "index":I
    .restart local v4    # "dX":D
    .restart local v6    # "dY":D
    .restart local v8    # "distFromCenter":D
    .restart local v11    # "innerBound":I
    .restart local v12    # "outerBound":I
    :cond_3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    .line 941
    .local v3, "degrees":I
    if-gez v3, :cond_4

    .line 942
    add-int/lit16 v13, v3, 0x168

    return v13

    .line 944
    :cond_4
    return v3
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .prologue
    .line 524
    div-int/lit8 v1, p1, 0x1e

    rem-int/lit8 v0, v1, 0xc

    .line 525
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    .line 528
    if-nez p2, :cond_1

    if-nez v0, :cond_1

    .line 530
    const/16 v0, 0xc

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 533
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 535
    :cond_2
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 536
    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 3
    .param p1, "hour"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 560
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    const/16 v2, 0xc

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 949
    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v7, :cond_1

    .line 950
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    float-to-double v0, v7

    .line 951
    .local v0, "dX":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    float-to-double v2, v7

    .line 952
    .local v2, "dY":D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 953
    .local v4, "distFromCenter":D
    iget v7, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v7

    cmpg-double v7, v4, v8

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    .line 955
    .end local v0    # "dX":D
    .end local v2    # "dY":D
    .end local v4    # "distFromCenter":D
    :cond_1
    return v6
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 583
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 786
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 995
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v1

    .line 996
    .local v1, "isOnInnerCircle":Z
    invoke-direct {p0, p1, p2, v7}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 997
    .local v0, "degrees":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 998
    return v7

    .line 1002
    :cond_0
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v8, 0x3c

    invoke-direct {p0, v6, v8, v9}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1008
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v6, :cond_7

    .line 1009
    invoke-static {v0, v7}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v6

    rem-int/lit16 v3, v6, 0x168

    .line 1010
    .local v3, "snapDegrees":I
    iget-boolean v6, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v6, v1, :cond_5

    .line 1011
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v6, v6, v7

    if-eq v6, v3, :cond_6

    const/4 v5, 0x1

    .line 1012
    .local v5, "valueChanged":Z
    :goto_0
    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1013
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v7

    .line 1014
    const/4 v4, 0x0

    .line 1015
    .local v4, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    .line 1024
    .local v2, "newValue":I
    :goto_1
    if-nez v5, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_9

    .line 1026
    :cond_1
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v6, :cond_2

    .line 1027
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v6, v4, v2, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1031
    :cond_2
    if-nez v5, :cond_3

    if-eqz p3, :cond_4

    .line 1032
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1033
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1035
    :cond_4
    return v10

    .line 1010
    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_5
    const/4 v5, 0x1

    .restart local v5    # "valueChanged":Z
    goto :goto_0

    .line 1011
    .end local v5    # "valueChanged":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "valueChanged":Z
    goto :goto_0

    .line 1017
    .end local v3    # "snapDegrees":I
    .end local v5    # "valueChanged":Z
    :cond_7
    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v6

    rem-int/lit16 v3, v6, 0x168

    .line 1018
    .restart local v3    # "snapDegrees":I
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v6, v6, v10

    if-eq v6, v3, :cond_8

    const/4 v5, 0x1

    .line 1019
    .restart local v5    # "valueChanged":Z
    :goto_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v10

    .line 1020
    const/4 v4, 0x1

    .line 1021
    .restart local v4    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    .restart local v2    # "newValue":I
    goto :goto_1

    .line 1018
    .end local v2    # "newValue":I
    .end local v4    # "type":I
    .end local v5    # "valueChanged":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "valueChanged":Z
    goto :goto_2

    .line 1038
    .restart local v2    # "newValue":I
    .restart local v4    # "type":I
    :cond_9
    return v7
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 634
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 640
    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 631
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 637
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 624
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string/jumbo v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 625
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string/jumbo v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 626
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string/jumbo v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 627
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string/jumbo v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 242
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 246
    .local v0, "count":I
    const/16 v2, 0x8

    .line 248
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v1, v4, :cond_3

    .line 250
    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v3, v4, v1

    .line 253
    if-ne v0, v2, :cond_2

    .line 254
    add-int/lit8 v3, v3, 0x6

    .line 255
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 256
    const/4 v2, 0x7

    .line 262
    :goto_1
    const/4 v0, 0x1

    .line 248
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 258
    const/16 v2, 0xe

    goto :goto_1

    .line 260
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v5, 0x0

    .line 493
    rem-int/lit8 v3, p1, 0xc

    mul-int/lit8 v1, v3, 0x1e

    .line 494
    .local v1, "degrees":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v1, v3, v5

    .line 497
    if-eqz p1, :cond_0

    rem-int/lit8 v3, p1, 0x18

    const/16 v4, 0xc

    if-ge v3, v4, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 498
    .local v0, "amOrPm":I
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v2

    .line 499
    .local v2, "isOnInnerCircle":Z
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_1

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v2, :cond_2

    .line 500
    :cond_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 501
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 503
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 504
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 507
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 509
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v3, :cond_3

    .line 510
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v3, v5, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 492
    :cond_3
    return-void

    .line 497
    .end local v0    # "amOrPm":I
    .end local v2    # "isOnInnerCircle":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "amOrPm":I
    goto :goto_0
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v2, 0x1

    .line 568
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    aput v1, v0, v2

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 572
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 567
    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    .line 678
    return-void

    .line 681
    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 683
    if-eqz p2, :cond_1

    .line 684
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 694
    :goto_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 696
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 676
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 689
    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 691
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    .line 293
    const/16 v2, 0x1e

    .line 294
    .local v2, "stepSize":I
    div-int/lit8 v3, p0, 0x1e

    mul-int/lit8 v1, v3, 0x1e

    .line 295
    .local v1, "floor":I
    add-int/lit8 v0, v1, 0x1e

    .line 296
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 297
    move p0, v0

    .line 310
    :goto_0
    return p0

    .line 298
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 299
    if-ne p0, v1, :cond_1

    .line 300
    add-int/lit8 v1, v1, -0x1e

    .line 302
    :cond_1
    move p0, v1

    goto :goto_0

    .line 304
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_3

    .line 305
    move p0, v1

    goto :goto_0

    .line 307
    :cond_3
    move p0, v0

    goto :goto_0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 277
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    .line 278
    const/4 v0, -0x1

    return v0

    .line 280
    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 404
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 405
    sget-object v9, Lcom/android/internal/R$styleable;->TimePicker:[I

    .line 404
    invoke-virtual {v8, p1, v9, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 408
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    .line 407
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 410
    .local v3, "numbersTextColor":Landroid/content/res/ColorStateList;
    const/16 v8, 0x9

    .line 409
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 411
    .local v2, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    .line 412
    const v9, -0xff01

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 411
    .end local v3    # "numbersTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v9, 0x0

    aput-object v3, v8, v9

    .line 413
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    if-nez v2, :cond_1

    .line 414
    const v9, -0xff01

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 413
    .end local v2    # "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v9, 0x2

    aput-object v2, v8, v9

    .line 415
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 419
    const/4 v8, 0x5

    .line 418
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 421
    .local v5, "selectorColors":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_2

    .line 423
    const/16 v8, 0x28

    .line 422
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    move-result-object v7

    .line 425
    .local v7, "stateSetEnabledActivated":[I
    const/4 v8, 0x0

    .line 424
    invoke-virtual {v5, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 430
    .end local v7    # "stateSetEnabledActivated":[I
    .local v4, "selectorActivatedColor":I
    :goto_0
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    const/16 v8, 0x28

    .line 432
    invoke-static {v8}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    .line 435
    .local v6, "stateSetActivated":[I
    iput v4, p0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 436
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    iput v8, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 438
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 439
    const v9, 0x10600ff

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 438
    const/4 v10, 0x4

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    return-void

    .line 427
    .end local v4    # "selectorActivatedColor":I
    .end local v6    # "stateSetActivated":[I
    :cond_2
    const v4, -0xff01

    .restart local v4    # "selectorActivatedColor":I
    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const/4 v0, 0x1

    return v0

    .line 1047
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAmOrPm()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 446
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 447
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 450
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 451
    invoke-direct {p0, p2, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 444
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 665
    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 667
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 669
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 670
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 671
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 672
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 673
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 664
    return-void

    .line 665
    .end local v0    # "alphaMod":F
    .end local v1    # "selectorPath":Landroid/graphics/Path;
    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .restart local v0    # "alphaMod":F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 645
    if-nez p1, :cond_0

    .line 646
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 651
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 653
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 654
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 655
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v1, v1, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 657
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 658
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 660
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 644
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 962
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-nez v3, :cond_0

    .line 963
    return v6

    .line 966
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 967
    .local v0, "action":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 968
    if-ne v0, v6, :cond_4

    .line 970
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 971
    .local v2, "forceSelection":Z
    const/4 v1, 0x0

    .line 973
    .local v1, "autoAdvance":Z
    if-nez v0, :cond_5

    .line 975
    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 986
    :cond_2
    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 986
    invoke-direct {p0, v4, v5, v2, v1}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 990
    .end local v1    # "autoAdvance":Z
    .end local v2    # "forceSelection":Z
    :cond_3
    return v6

    .line 969
    :cond_4
    if-nez v0, :cond_3

    goto :goto_0

    .line 976
    .restart local v1    # "autoAdvance":Z
    .restart local v2    # "forceSelection":Z
    :cond_5
    if-ne v0, v6, :cond_2

    .line 977
    const/4 v1, 0x1

    .line 981
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v3, :cond_2

    .line 982
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setAmOrPm(I)Z
    .locals 1
    .param p1, "amOrPm"    # I

    .prologue
    .line 599
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 603
    :cond_1
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 605
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .prologue
    .line 481
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 480
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 455
    packed-switch p1, :pswitch_data_0

    .line 463
    const-string/jumbo v0, "RadialTimePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 457
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 563
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .prologue
    .line 1051
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1052
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1050
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .prologue
    .line 472
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 471
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 613
    return-void
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 617
    return-void
.end method
