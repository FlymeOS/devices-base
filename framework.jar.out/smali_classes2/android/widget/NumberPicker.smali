.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x1090099

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static synthetic -get0()[C
    .locals 1

    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic -get11(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic -get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object v0
.end method

.method static synthetic -get17(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic -get18(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/NumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/NumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/NumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/NumberPicker;)I
    .locals 1

    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic -get9(Landroid/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/NumberPicker;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/NumberPicker;I)I
    .locals 1
    .param p1, "selectorIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/NumberPicker;ZJ)V
    .locals 0
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2052
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 97
    return-void

    .line 2052
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 564
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 575
    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 574
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 587
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 605
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 157
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 305
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 310
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 315
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 335
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 436
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mScrollState:I

    .line 487
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 609
    sget-object v18, Lcom/android/internal/R$styleable;->NumberPicker:[I

    .line 608
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 611
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    const v19, 0x1090099

    .line 610
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 613
    .local v13, "layoutResId":I
    const v18, 0x1090099

    move/from16 v0, v18

    if-eq v13, v0, :cond_1

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 616
    const/16 v18, 0xa

    const/16 v19, 0x0

    .line 615
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 618
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 621
    const/16 v18, 0x2

    .line 620
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 622
    .local v17, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    .line 623
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 625
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 629
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 632
    const/high16 v18, 0x40000000    # 2.0f

    .line 633
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 632
    const/16 v20, 0x1

    .line 631
    move/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 635
    .local v11, "defSelectionDividerHeight":I
    const/16 v18, 0x3

    .line 634
    move/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 638
    const/high16 v18, 0x42400000    # 48.0f

    .line 639
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 638
    const/16 v20, 0x1

    .line 637
    move/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 641
    .local v10, "defSelectionDividerDistance":I
    const/16 v18, 0x4

    .line 640
    move/from16 v0, v18

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 644
    const/16 v18, 0x5

    const/16 v19, -0x1

    .line 643
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 647
    const/16 v18, 0x6

    const/16 v19, -0x1

    .line 646
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 648
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 650
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "minHeight > maxHeight"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 613
    .end local v10    # "defSelectionDividerDistance":I
    .end local v11    # "defSelectionDividerHeight":I
    .end local v17    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 654
    .restart local v10    # "defSelectionDividerDistance":I
    .restart local v11    # "defSelectionDividerHeight":I
    .restart local v17    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v18, 0x7

    const/16 v19, -0x1

    .line 653
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 657
    const/16 v18, 0x8

    const/16 v19, -0x1

    .line 656
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 660
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "minWidth > maxWidth"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 663
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 666
    const/16 v18, 0x9

    .line 665
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 668
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 670
    new-instance v18, Landroid/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 677
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 680
    const-string/jumbo v19, "layout_inflater"

    .line 679
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 681
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v12, v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 683
    new-instance v14, Landroid/widget/NumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 695
    .local v14, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v15, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 709
    .local v15, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 710
    const v18, 0x10203c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 718
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 719
    const v18, 0x10203ca

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 727
    :goto_4
    const v18, 0x10203c9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    .line 739
    new-instance v20, Landroid/widget/NumberPicker$InputTextFilter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 738
    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 746
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 747
    .local v9, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 748
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 749
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v18

    div-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTextSize()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPicker;->mTextSize:I

    .line 754
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 755
    .local v16, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 756
    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 760
    .local v8, "colors":Landroid/content/res/ColorStateList;
    sget-object v18, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 761
    .local v7, "color":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 762
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 765
    new-instance v18, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-direct/range {v18 .. v21}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 766
    new-instance v18, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v19

    new-instance v20, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v21, 0x40200000    # 2.5f

    invoke-direct/range {v20 .. v21}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v18 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 768
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v18

    if-nez v18, :cond_4

    .line 772
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 604
    :cond_4
    return-void

    .line 663
    .end local v7    # "color":I
    .end local v8    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "configuration":Landroid/view/ViewConfiguration;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v15    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v16    # "paint":Landroid/graphics/Paint;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 677
    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 714
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v15    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 723
    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1739
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1740
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1741
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1744
    :cond_0
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1745
    if-eqz p1, :cond_1

    .line 1746
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1750
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1738
    :goto_1
    return-void

    .line 1748
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1752
    :cond_2
    if-eqz p1, :cond_3

    .line 1753
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1755
    :cond_3
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1859
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1860
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1859
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1862
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1863
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1864
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1866
    :cond_1
    aput v1, p1, v3

    .line 1867
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1858
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1876
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1877
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1878
    return-void

    .line 1880
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1881
    :cond_1
    const-string/jumbo v2, ""

    .line 1890
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1874
    return-void

    .line 1883
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1884
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1885
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_0

    .line 1887
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2152
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2153
    .local v4, "deltaY":I
    if-eqz v4, :cond_2

    .line 2154
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2155
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2156
    if-lez v4, :cond_1

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2158
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2159
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2160
    const/4 v0, 0x1

    return v0

    .line 2156
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0

    .line 2162
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1815
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1817
    if-lez p1, :cond_0

    .line 1818
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1823
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1814
    return-void

    .line 1820
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1894
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2773
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2009
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2011
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2012
    :catch_0
    move-exception v0

    .line 2035
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v2

    .line 2016
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2018
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2019
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2020
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v2, v1

    return v2

    .line 2016
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2029
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 2030
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1830
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1831
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1832
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1833
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1835
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1282
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1283
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1285
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1281
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1844
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1846
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1847
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1848
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1850
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1851
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1842
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1778
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1779
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1777
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1761
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1762
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1763
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1764
    .local v4, "totalTextHeight":I
    iget v5, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v6, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1765
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1766
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1767
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1770
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1772
    .local v0, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    .line 1771
    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1773
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1774
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1760
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1691
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1692
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1693
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1694
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1695
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1696
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1697
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1699
    :cond_0
    aput v2, v3, v1

    .line 1700
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1690
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1649
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1650
    return p1

    .line 1652
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1653
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1654
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1662
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1656
    :sswitch_0
    return p1

    .line 1658
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1660
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1654
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 832
    invoke-virtual {p1, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 833
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    sub-int v0, v3, v4

    .line 834
    .local v0, "amountToScroll":I
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v3, v4

    .line 835
    .local v1, "futureScrollOffset":I
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v3, v1

    .line 836
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 837
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_0

    .line 838
    if-lez v2, :cond_1

    .line 839
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    .line 844
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 845
    invoke-virtual {p0, v5, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 846
    return v6

    .line 841
    :cond_1
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 848
    :cond_2
    return v5
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1938
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1937
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1802
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 1803
    return-void

    .line 1805
    :cond_0
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1806
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1807
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 1801
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1787
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1788
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1790
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1785
    :cond_1
    :goto_0
    return-void

    .line 1792
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1793
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 1972
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1973
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1977
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1971
    return-void

    .line 1975
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1950
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1954
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1955
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1948
    return-void

    .line 1952
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 2
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2043
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2044
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2046
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 2042
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1996
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 1999
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2000
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2002
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1992
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1983
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1961
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1678
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1679
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1680
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1682
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1711
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1712
    return-void

    .line 1715
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1716
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1721
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1722
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1723
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1724
    if-eqz p2, :cond_1

    .line 1725
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1727
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1728
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1710
    return-void

    .line 1718
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1719
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1268
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1269
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1270
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1271
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1273
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1274
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1267
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1295
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_0

    .line 1296
    return-void

    .line 1298
    :cond_0
    const/4 v4, 0x0

    .line 1299
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1300
    const/4 v3, 0x0

    .line 1301
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v8, 0x9

    if-gt v2, v8, :cond_2

    .line 1302
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1303
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1

    .line 1304
    move v3, v1

    .line 1301
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1307
    .end local v1    # "digitWidth":F
    :cond_2
    const/4 v5, 0x0

    .line 1308
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1309
    .local v0, "current":I
    :goto_1
    if-lez v0, :cond_3

    .line 1310
    add-int/lit8 v5, v5, 0x1

    .line 1311
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 1313
    :cond_3
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1323
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_4
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1324
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_5

    .line 1325
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1326
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1330
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1294
    :cond_5
    return-void

    .line 1315
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1316
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v7, :cond_4

    .line 1317
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1318
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1319
    float-to-int v4, v6

    .line 1316
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1328
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_2
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1923
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1930
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1924
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1926
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    const/4 v1, 0x1

    return v1
.end method

.method private updateWrapSelectorWheel()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1377
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1378
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    :cond_0
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1376
    return-void

    .end local v0    # "wrappingAllowed":Z
    :cond_1
    move v0, v1

    .line 1377
    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1898
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1899
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1901
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1897
    :goto_0
    return-void

    .line 1904
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1905
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1088
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1089
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1090
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1091
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    return-void

    .line 1095
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1096
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1097
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1098
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1100
    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1101
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1102
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1103
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 1087
    :goto_0
    return-void

    .line 1105
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1160
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1039
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1042
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1045
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1046
    const/4 v2, 0x3

    .line 1052
    .local v2, "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1054
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1055
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1083
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 1047
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1048
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1050
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1057
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1059
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1060
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1064
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    .line 1065
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1067
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1066
    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1069
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1071
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1072
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1077
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1079
    iput v5, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1055
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 990
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 991
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1022
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 994
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 998
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1003
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-ne v0, v4, :cond_3

    .line 1004
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1005
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 1006
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1007
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1008
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1011
    :cond_2
    return v2

    .line 1004
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_1

    .line 1009
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1015
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 1016
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1017
    return v2

    .line 991
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 979
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 985
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 982
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1028
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1034
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1031
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1532
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1534
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1535
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 1535
    if-eqz v1, :cond_0

    .line 1537
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1632
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1633
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1635
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1636
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1638
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1520
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1447
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1410
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1515
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1401
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1544
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1546
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1543
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1525
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1526
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1524
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1563
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v12, :cond_0

    .line 1564
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1565
    return-void

    .line 1567
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v7

    .line 1568
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1569
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1572
    .local v11, "y":F
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 1573
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v12, :cond_2

    .line 1574
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v12, :cond_1

    .line 1575
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1576
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1579
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v12, :cond_2

    .line 1580
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1581
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mRight:I

    .line 1582
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mBottom:I

    .line 1581
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1588
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1589
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v6

    if-ge v3, v12, :cond_6

    .line 1590
    aget v5, v6, v3

    .line 1591
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1597
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v7, :cond_5

    const/4 v12, 0x1

    if-eq v3, v12, :cond_5

    .line 1599
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1601
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1589
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1567
    .end local v3    # "i":I
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    .end local v6    # "selectorIndices":[I
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_4
    const/4 v7, 0x1

    .local v7, "showSelectorWheel":Z
    goto/16 :goto_0

    .line 1598
    .end local v7    # "showSelectorWheel":Z
    .restart local v3    # "i":I
    .restart local v4    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v5    # "selectorIndex":I
    .restart local v6    # "selectorIndices":[I
    .restart local v10    # "x":F
    .restart local v11    # "y":F
    :cond_5
    const/4 v12, 0x1

    if-ne v3, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    .line 1605
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_7

    .line 1607
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1608
    .local v9, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v9, v12

    .line 1609
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v9, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1613
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1614
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v8, v1, v12

    .line 1615
    .local v8, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v8, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1562
    .end local v1    # "bottomOfBottomDivider":I
    .end local v2    # "bottomOfTopDivider":I
    .end local v8    # "topOfBottomDivider":I
    .end local v9    # "topOfTopDivider":I
    :cond_7
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1623
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1624
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1625
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1626
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1627
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1622
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 853
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 857
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 901
    return v5

    .line 854
    .end local v0    # "action":I
    :cond_0
    return v5

    .line 859
    .restart local v0    # "action":I
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 860
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 863
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 864
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 866
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 867
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v1, :cond_1

    .line 868
    iget-object v1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 869
    const/4 v2, 0x2

    .line 868
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 878
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 879
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 880
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 881
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 882
    invoke-direct {p0, v5}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 898
    :goto_1
    return v4

    .line 871
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 872
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v1, :cond_1

    .line 873
    iget-object v1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 883
    :cond_3
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    .line 884
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 885
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 886
    :cond_4
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 887
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 889
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 888
    invoke-direct {p0, v5, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 890
    :cond_5
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 891
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 893
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 892
    invoke-direct {p0, v4, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 895
    :cond_6
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 896
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_1

    .line 857
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 778
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_0

    .line 779
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 780
    return-void

    .line 782
    :cond_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 783
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 786
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 787
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 788
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 789
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 790
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 791
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 792
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 794
    if-eqz p1, :cond_1

    .line 796
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 797
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 798
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 799
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 798
    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 800
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 801
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 800
    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 777
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 807
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 808
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 809
    return-void

    .line 812
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 813
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 814
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 816
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 818
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 820
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 806
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1554
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    .line 1556
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1553
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v10, :cond_2

    .line 909
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    .line 910
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 912
    :cond_0
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 914
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 973
    :cond_1
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 907
    .end local v0    # "action":I
    :cond_2
    const/4 v10, 0x0

    return v10

    .line 916
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_1

    .line 919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 920
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 921
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 922
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 923
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 924
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 931
    .end local v2    # "deltaDownY":I
    :cond_3
    :goto_1
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 927
    :cond_4
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 928
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 929
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_1

    .line 934
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 935
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 936
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 937
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 938
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    const/16 v11, 0x3e8

    invoke-virtual {v9, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 939
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 940
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_5

    .line 941
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->fling(I)V

    .line 942
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 969
    :goto_2
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 970
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 944
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 945
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 946
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 947
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_9

    .line 948
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_7

    .line 949
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 950
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    .line 967
    :cond_6
    :goto_3
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 952
    :cond_7
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 954
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_8

    .line 955
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 956
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 957
    const/4 v11, 0x1

    .line 956
    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 958
    :cond_8
    if-gez v8, :cond_6

    .line 959
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 960
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 961
    const/4 v11, 0x2

    .line 960
    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 965
    .end local v8    # "selectorIndexOffset":I
    :cond_9
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1246
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1247
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1248
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1250
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1255
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1256
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1257
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1258
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1259
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1261
    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1123
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1124
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    .line 1125
    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 1126
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1127
    return-void

    .line 1129
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    .line 1130
    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 1131
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1132
    return-void

    .line 1134
    :cond_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1135
    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_3

    .line 1136
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1137
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1138
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1139
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1140
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1143
    :cond_3
    :goto_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    .line 1144
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1145
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1146
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1147
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1148
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1122
    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1497
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1498
    return-void

    .line 1500
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1503
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1508
    :goto_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1509
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1510
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1496
    return-void

    .line 1506
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1112
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1115
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1116
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1118
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1110
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .prologue
    .line 1203
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1204
    return-void

    .line 1206
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1207
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1208
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1202
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .prologue
    .line 1461
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    .line 1462
    return-void

    .line 1464
    :cond_0
    if-gez p1, :cond_1

    .line 1465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1468
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v0, v1, :cond_2

    .line 1469
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1471
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1472
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1473
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1474
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1475
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1460
    return-void
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    .prologue
    .line 1424
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    .line 1425
    return-void

    .line 1427
    :cond_0
    if-gez p1, :cond_1

    .line 1428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1431
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v0, v1, :cond_2

    .line 1432
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1434
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1435
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1436
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1437
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1438
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1423
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1392
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1391
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1188
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1187
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1179
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1178
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1239
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1364
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1365
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1363
    return-void
.end method
