.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 124
    iput v8, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 132
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 169
    const v6, 0x800033

    iput v6, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 196
    iput v8, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 214
    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    .line 213
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 216
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 217
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 218
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    :cond_0
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 222
    if-ltz v2, :cond_1

    .line 223
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 226
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 227
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    .line 228
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 231
    :cond_2
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 234
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 233
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 236
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 238
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 240
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v3, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 243
    .local v3, "version":I
    const/16 v6, 0x17

    if-gt v3, v6, :cond_3

    :goto_0
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    return-void

    :cond_3
    move v4, v5

    .line 243
    goto :goto_0
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 671
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 672
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 674
    return v4

    .line 671
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 677
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1404
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1405
    const/high16 v2, 0x40000000    # 2.0f

    .line 1404
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1406
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1407
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1408
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1409
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1411
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1414
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1415
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1418
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1419
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1406
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1400
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 986
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 987
    const/high16 v4, 0x40000000    # 2.0f

    .line 986
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 988
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 989
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 990
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 991
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 993
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 996
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 997
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 1000
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1001
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 988
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 984
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 390
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 392
    return-object v0

    .line 389
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 395
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1741
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1740
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1861
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 400
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v3

    .line 401
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 402
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 404
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 407
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 412
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 401
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    .line 417
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 418
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    .line 420
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 421
    if-eqz v3, :cond_4

    .line 422
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    .line 434
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 398
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    .line 424
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 427
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 428
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_6

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 431
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 360
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 361
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 363
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 365
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 366
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 372
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 373
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 374
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 375
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 380
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 358
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 377
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 378
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 439
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 440
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 439
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 446
    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 445
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 447
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 444
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1872
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1873
    const-string/jumbo v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1874
    const-string/jumbo v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1875
    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1876
    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1877
    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1878
    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1879
    const-string/jumbo v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1880
    const-string/jumbo v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1871
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1836
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1837
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1838
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1839
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1840
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1842
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1823
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1846
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1824
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1847
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 1848
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1849
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 1850
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1851
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1854
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1866
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 507
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_0

    .line 508
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    return v5

    .line 511
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1

    .line 512
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 516
    :cond_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 519
    .local v1, "childBaseline":I
    if-ne v1, v7, :cond_3

    .line 520
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2

    .line 522
    return v7

    .line 526
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 536
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 538
    .local v2, "childTop":I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 539
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 540
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 541
    sparse-switch v4, :sswitch_data_0

    .line 554
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 555
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    return v5

    .line 543
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_0
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 544
    goto :goto_0

    .line 547
    :sswitch_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    .line 548
    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 547
    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 549
    goto :goto_0

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1801
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1476
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1765
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 656
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 658
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    .line 659
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_3

    .line 661
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 663
    :cond_3
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    :goto_2
    return v1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    .line 1619
    .local v20, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v27, v0

    .line 1625
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    .line 1626
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v18, v2

    .line 1629
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v13, v2, v4

    .line 1631
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1633
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1634
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1636
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1638
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1639
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1641
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v21

    .line 1642
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1655
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1659
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    .line 1660
    .local v28, "start":I
    const/16 v16, 0x1

    .line 1662
    .local v16, "dir":I
    if-eqz v20, :cond_0

    .line 1663
    add-int/lit8 v28, v14, -0x1

    .line 1664
    const/16 v16, -0x1

    .line 1667
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 1668
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1669
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1670
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1671
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1667
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1645
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1646
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1650
    .end local v12    # "childLeft":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1651
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1672
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 1673
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1674
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1675
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 1678
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 1680
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1681
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1684
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1685
    .local v17, "gravity":I
    if-gez v17, :cond_4

    .line 1686
    move/from16 v17, v26

    .line 1689
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1721
    move/from16 v5, v27

    .line 1725
    .local v5, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1726
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1729
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1730
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1732
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    .line 1733
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .line 1732
    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1735
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 1691
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1692
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1693
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 1709
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    .line 1710
    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1709
    add-int/2addr v2, v4

    .line 1710
    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1709
    sub-int v5, v2, v4

    .line 1711
    .restart local v5    # "childTop":I
    goto :goto_3

    .line 1714
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1715
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1716
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1717
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    goto :goto_3

    .line 1617
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    .line 1642
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1689
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1513
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1519
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    .line 1520
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v19, v1

    .line 1523
    .local v8, "childRight":I
    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v1, v4

    .line 1525
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1527
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1528
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1530
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    .line 1543
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1547
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1548
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1549
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    .line 1550
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1547
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1533
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1534
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1538
    .end local v10    # "childTop":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1539
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1551
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1552
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1553
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1556
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1558
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1559
    .local v12, "gravity":I
    if-gez v12, :cond_2

    .line 1560
    move/from16 v12, v17

    .line 1562
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v14

    .line 1563
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1564
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1576
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1580
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1581
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1584
    :cond_3
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1585
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1587
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1589
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 1566
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    .line 1567
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1566
    add-int/2addr v1, v4

    .line 1567
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1566
    sub-int v3, v1, v4

    .line 1568
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1571
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1572
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1512
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 1530
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1564
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1464
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1463
    return-void
.end method

.method measureHorizontal(II)V
    .locals 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1019
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1020
    const/16 v37, 0x0

    .line 1021
    .local v37, "maxHeight":I
    const/16 v18, 0x0

    .line 1022
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 1023
    .local v11, "alternativeMaxHeight":I
    const/16 v47, 0x0

    .line 1024
    .local v47, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 1025
    .local v10, "allFillParent":Z
    const/16 v43, 0x0

    .line 1027
    .local v43, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v22

    .line 1029
    .local v22, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v48

    .line 1030
    .local v48, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 1032
    .local v27, "heightMode":I
    const/16 v33, 0x0

    .line 1033
    .local v33, "matchHeight":Z
    const/16 v41, 0x0

    .line 1035
    .local v41, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 1036
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1037
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1040
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v35, v0

    .line 1041
    .local v35, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v36, v0

    .line 1043
    .local v36, "maxDescent":[I
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v35, v6

    .line 1044
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v36, v6

    .line 1046
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1047
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v45, v0

    .line 1049
    .local v45, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v48

    if-ne v0, v3, :cond_2

    const/16 v29, 0x1

    .line 1051
    .local v29, "isExactly":Z
    :goto_0
    const/high16 v30, -0x80000000

    .line 1052
    .local v30, "largestChildWidth":I
    const/16 v46, 0x0

    .line 1055
    .local v46, "usedExcessSpace":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v5, v0, :cond_16

    .line 1056
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1057
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    .line 1058
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1055
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1049
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v29    # "isExactly":Z
    .end local v30    # "largestChildWidth":I
    .end local v46    # "usedExcessSpace":I
    :cond_2
    const/16 v29, 0x0

    .restart local v29    # "isExactly":Z
    goto :goto_0

    .line 1062
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v30    # "largestChildWidth":I
    .restart local v46    # "usedExcessSpace":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 1063
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1064
    goto :goto_2

    .line 1067
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1068
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1071
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    .line 1073
    .local v31, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v43, v43, v3

    .line 1075
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_9

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    const/16 v44, 0x1

    .line 1076
    .local v44, "useExcessSpace":Z
    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v48

    if-ne v0, v3, :cond_c

    if-eqz v44, :cond_c

    .line 1080
    if-eqz v29, :cond_a

    .line 1081
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1093
    :goto_4
    if-eqz v13, :cond_b

    .line 1095
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 1094
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v25

    .line 1097
    .local v25, "freeWidthSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 1096
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v24

    .line 1098
    .local v24, "freeHeightSpec":I
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1143
    .end local v24    # "freeHeightSpec":I
    .end local v25    # "freeWidthSpec":I
    :cond_6
    :goto_5
    const/16 v34, 0x0

    .line 1144
    .local v34, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v3, :cond_7

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_7

    .line 1148
    const/16 v33, 0x1

    .line 1149
    const/16 v34, 0x1

    .line 1152
    :cond_7
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v32, v3, v6

    .line 1153
    .local v32, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v32

    .line 1154
    .local v16, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1156
    if-eqz v13, :cond_8

    .line 1157
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1158
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_8

    .line 1161
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_6
    and-int/lit8 v26, v3, 0x70

    .line 1163
    .local v26, "gravity":I
    shr-int/lit8 v3, v26, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v28, v3, 0x1

    .line 1166
    .local v28, "index":I
    aget v3, v35, v28

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v28

    .line 1167
    aget v3, v36, v28

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v36, v28

    .line 1171
    .end local v14    # "childBaseline":I
    .end local v26    # "gravity":I
    .end local v28    # "index":I
    :cond_8
    move/from16 v0, v37

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1173
    if-eqz v10, :cond_12

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_12

    const/4 v10, 0x1

    .line 1174
    :goto_7
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_14

    .line 1180
    if-eqz v34, :cond_13

    .line 1179
    .end local v32    # "margin":I
    :goto_8
    move/from16 v0, v47

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    .line 1186
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 1075
    .end local v16    # "childHeight":I
    .end local v34    # "matchHeightLocally":Z
    .end local v44    # "useExcessSpace":Z
    :cond_9
    const/16 v44, 0x0

    .restart local v44    # "useExcessSpace":Z
    goto/16 :goto_3

    .line 1083
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v42, v0

    .line 1085
    .local v42, "totalLength":I
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1084
    add-int v3, v3, v42

    .line 1085
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1084
    add-int/2addr v3, v6

    move/from16 v0, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_4

    .line 1100
    .end local v42    # "totalLength":I
    :cond_b
    const/16 v41, 0x1

    goto/16 :goto_5

    .line 1103
    :cond_c
    if-eqz v44, :cond_d

    .line 1109
    const/4 v3, -0x2

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1116
    :cond_d
    const/4 v3, 0x0

    cmpl-float v3, v43, v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1118
    .local v7, "usedWidth":I
    :goto_a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    .line 1117
    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1120
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1121
    .local v20, "childWidth":I
    if-eqz v44, :cond_e

    .line 1125
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1126
    add-int v46, v46, v20

    .line 1129
    :cond_e
    if-eqz v29, :cond_10

    .line 1130
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v20

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    .line 1131
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    .line 1130
    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1138
    :goto_b
    if-eqz v45, :cond_6

    .line 1139
    move/from16 v0, v20

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    goto/16 :goto_5

    .line 1116
    .end local v7    # "usedWidth":I
    .end local v20    # "childWidth":I
    :cond_f
    const/4 v7, 0x0

    goto :goto_a

    .line 1133
    .restart local v7    # "usedWidth":I
    .restart local v20    # "childWidth":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v42, v0

    .line 1134
    .restart local v42    # "totalLength":I
    add-int v3, v42, v20

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    .line 1135
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1134
    add-int/2addr v3, v6

    .line 1135
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1134
    add-int/2addr v3, v6

    move/from16 v0, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_b

    .line 1161
    .end local v7    # "usedWidth":I
    .end local v20    # "childWidth":I
    .end local v42    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v32    # "margin":I
    .restart local v34    # "matchHeightLocally":Z
    :cond_11
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_6

    .line 1173
    .end local v14    # "childBaseline":I
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_13
    move/from16 v32, v16

    .line 1180
    goto/16 :goto_8

    .line 1183
    :cond_14
    if-eqz v34, :cond_15

    .line 1182
    .end local v32    # "margin":I
    :goto_c
    move/from16 v0, v32

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_9

    .restart local v32    # "margin":I
    :cond_15
    move/from16 v32, v16

    .line 1183
    goto :goto_c

    .line 1189
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "margin":I
    .end local v34    # "matchHeightLocally":Z
    .end local v44    # "useExcessSpace":Z
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1190
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1195
    :cond_17
    const/4 v3, 0x1

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    .line 1196
    const/4 v3, 0x0

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1b

    .line 1199
    :cond_18
    :goto_d
    const/4 v3, 0x3

    aget v3, v35, v3

    .line 1200
    const/4 v6, 0x0

    aget v6, v35, v6

    .line 1201
    const/4 v8, 0x1

    aget v8, v35, v8

    const/4 v9, 0x2

    aget v9, v35, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1200
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1199
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1202
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v36, v3

    .line 1203
    const/4 v6, 0x0

    aget v6, v36, v6

    .line 1204
    const/4 v8, 0x1

    aget v8, v36, v8

    const/4 v9, 0x2

    aget v9, v36, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1203
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1202
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1205
    .local v23, "descent":I
    add-int v3, v12, v23

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1208
    .end local v12    # "ascent":I
    .end local v23    # "descent":I
    :cond_19
    if-eqz v45, :cond_1f

    .line 1209
    const/high16 v3, -0x80000000

    move/from16 v0, v48

    if-eq v0, v3, :cond_1a

    if-nez v48, :cond_1f

    .line 1210
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1212
    const/4 v5, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v5, v0, :cond_1f

    .line 1213
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1214
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1c

    .line 1215
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1212
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 1197
    .end local v4    # "child":Landroid/view/View;
    :cond_1b
    const/4 v3, 0x2

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    .line 1198
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_19

    goto :goto_d

    .line 1219
    .restart local v4    # "child":Landroid/view/View;
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1d

    .line 1220
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1221
    goto :goto_f

    .line 1225
    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    .line 1224
    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    .line 1226
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v29, :cond_1e

    .line 1227
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v30

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    .line 1228
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    .line 1227
    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_f

    .line 1230
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v42, v0

    .line 1231
    .restart local v42    # "totalLength":I
    add-int v3, v42, v30

    .line 1232
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1231
    add-int/2addr v3, v6

    .line 1232
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1231
    add-int/2addr v3, v6

    .line 1232
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1231
    add-int/2addr v3, v6

    move/from16 v0, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_f

    .line 1238
    .end local v4    # "child":Landroid/view/View;
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v42    # "totalLength":I
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1240
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v49, v0

    .line 1243
    .local v49, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v49

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v49

    .line 1246
    const/4 v3, 0x0

    move/from16 v0, v49

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v50

    .line 1247
    .local v50, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v49, v50, v3

    .line 1252
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v3, v49, v3

    .line 1253
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_20

    const/16 v46, 0x0

    .line 1252
    .end local v46    # "usedExcessSpace":I
    :cond_20
    add-int v38, v3, v46

    .line 1254
    .local v38, "remainingExcess":I
    if-nez v41, :cond_21

    if-eqz v38, :cond_35

    const/4 v3, 0x0

    cmpl-float v3, v43, v3

    if-lez v3, :cond_35

    .line 1255
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v39, v0

    .line 1257
    .local v39, "remainingWeightSum":F
    :goto_10
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v35, v6

    .line 1258
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v36, v6

    .line 1259
    const/16 v37, -0x1

    .line 1261
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1263
    const/4 v5, 0x0

    :goto_11
    move/from16 v0, v22

    if-ge v5, v0, :cond_2f

    .line 1264
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1265
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_24

    .line 1263
    :cond_22
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1255
    .end local v4    # "child":Landroid/view/View;
    .end local v39    # "remainingWeightSum":F
    :cond_23
    move/from16 v39, v43

    .restart local v39    # "remainingWeightSum":F
    goto :goto_10

    .line 1269
    .restart local v4    # "child":Landroid/view/View;
    :cond_24
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    .line 1270
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v19, v0

    .line 1271
    .local v19, "childWeight":F
    const/4 v3, 0x0

    cmpl-float v3, v19, v3

    if-lez v3, :cond_25

    .line 1272
    move/from16 v0, v38

    int-to-float v3, v0

    mul-float v3, v3, v19

    div-float v3, v3, v39

    float-to-int v0, v3

    move/from16 v40, v0

    .line 1273
    .local v40, "share":I
    sub-int v38, v38, v40

    .line 1274
    sub-float v39, v39, v19

    .line 1277
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_26

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v48

    if-eq v0, v3, :cond_26

    .line 1278
    move/from16 v20, v30

    .line 1291
    .restart local v20    # "childWidth":I
    :goto_13
    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 1290
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1293
    .local v21, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    .line 1294
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1292
    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1295
    .local v17, "childHeightMeasureSpec":I
    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1299
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    .line 1298
    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1302
    .end local v17    # "childHeightMeasureSpec":I
    .end local v20    # "childWidth":I
    .end local v21    # "childWidthMeasureSpec":I
    .end local v40    # "share":I
    :cond_25
    if-eqz v29, :cond_29

    .line 1303
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    .line 1304
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    .line 1303
    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1311
    :goto_14
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v3, :cond_2b

    .line 1312
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2a

    const/16 v34, 0x1

    .line 1314
    .restart local v34    # "matchHeightLocally":Z
    :goto_15
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v32, v3, v6

    .line 1315
    .restart local v32    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v32

    .line 1316
    .restart local v16    # "childHeight":I
    move/from16 v0, v37

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1318
    if-eqz v34, :cond_2c

    .line 1317
    .end local v32    # "margin":I
    :goto_16
    move/from16 v0, v32

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1320
    if-eqz v10, :cond_2d

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2d

    const/4 v10, 0x1

    .line 1322
    :goto_17
    if-eqz v13, :cond_22

    .line 1323
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1324
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_22

    .line 1326
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_18
    and-int/lit8 v26, v3, 0x70

    .line 1328
    .restart local v26    # "gravity":I
    shr-int/lit8 v3, v26, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v28, v3, 0x1

    .line 1331
    .restart local v28    # "index":I
    aget v3, v35, v28

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v28

    .line 1332
    aget v3, v36, v28

    .line 1333
    sub-int v6, v16, v14

    .line 1332
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v36, v28

    goto/16 :goto_12

    .line 1279
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v26    # "gravity":I
    .end local v28    # "index":I
    .end local v34    # "matchHeightLocally":Z
    .restart local v40    # "share":I
    :cond_26
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_27

    .line 1280
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v48

    if-ne v0, v3, :cond_28

    .line 1283
    :cond_27
    move/from16 v20, v40

    .line 1280
    .restart local v20    # "childWidth":I
    goto/16 :goto_13

    .line 1287
    .end local v20    # "childWidth":I
    :cond_28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v20, v3, v40

    .restart local v20    # "childWidth":I
    goto/16 :goto_13

    .line 1306
    .end local v20    # "childWidth":I
    .end local v40    # "share":I
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v42, v0

    .line 1307
    .restart local v42    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v42

    .line 1308
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1307
    add-int/2addr v3, v6

    .line 1308
    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1307
    add-int/2addr v3, v6

    .line 1308
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1307
    add-int/2addr v3, v6

    move/from16 v0, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_14

    .line 1312
    .end local v42    # "totalLength":I
    :cond_2a
    const/16 v34, 0x0

    .restart local v34    # "matchHeightLocally":Z
    goto/16 :goto_15

    .line 1311
    .end local v34    # "matchHeightLocally":Z
    :cond_2b
    const/16 v34, 0x0

    .restart local v34    # "matchHeightLocally":Z
    goto/16 :goto_15

    .restart local v16    # "childHeight":I
    .restart local v32    # "margin":I
    :cond_2c
    move/from16 v32, v16

    .line 1318
    goto/16 :goto_16

    .line 1320
    .end local v32    # "margin":I
    :cond_2d
    const/4 v10, 0x0

    goto/16 :goto_17

    .line 1326
    .restart local v14    # "childBaseline":I
    :cond_2e
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_18

    .line 1339
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v19    # "childWeight":F
    .end local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "matchHeightLocally":Z
    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1344
    const/4 v3, 0x1

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_30

    .line 1345
    const/4 v3, 0x0

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_34

    .line 1348
    :cond_30
    :goto_19
    const/4 v3, 0x3

    aget v3, v35, v3

    .line 1349
    const/4 v6, 0x0

    aget v6, v35, v6

    .line 1350
    const/4 v8, 0x1

    aget v8, v35, v8

    const/4 v9, 0x2

    aget v9, v35, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1349
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1348
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1351
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v36, v3

    .line 1352
    const/4 v6, 0x0

    aget v6, v36, v6

    .line 1353
    const/4 v8, 0x1

    aget v8, v36, v8

    const/4 v9, 0x2

    aget v9, v36, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1352
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1351
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1354
    .restart local v23    # "descent":I
    add-int v3, v12, v23

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1382
    .end local v12    # "ascent":I
    .end local v23    # "descent":I
    .end local v39    # "remainingWeightSum":F
    :cond_31
    if-nez v10, :cond_32

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v3, :cond_32

    .line 1383
    move/from16 v37, v11

    .line 1386
    :cond_32
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v37, v37, v3

    .line 1389
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1391
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v50

    .line 1393
    shl-int/lit8 v6, v18, 0x10

    .line 1392
    move/from16 v0, v37

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1391
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1395
    if-eqz v33, :cond_33

    .line 1396
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1018
    :cond_33
    return-void

    .line 1346
    .restart local v39    # "remainingWeightSum":F
    :cond_34
    const/4 v3, 0x2

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_30

    .line 1347
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_31

    goto/16 :goto_19

    .line 1357
    .end local v39    # "remainingWeightSum":F
    :cond_35
    move/from16 v0, v47

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1361
    if-eqz v45, :cond_31

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v48

    if-eq v0, v3, :cond_31

    .line 1362
    const/4 v5, 0x0

    :goto_1a
    move/from16 v0, v22

    if-ge v5, v0, :cond_31

    .line 1363
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1364
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_37

    .line 1362
    :cond_36
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1369
    :cond_37
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    .line 1371
    .restart local v31    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v31

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1372
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_36

    .line 1374
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1375
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1376
    const/high16 v8, 0x40000000    # 2.0f

    .line 1375
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1373
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_1b
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 693
    const/16 v29, 0x0

    .line 694
    .local v29, "maxWidth":I
    const/16 v16, 0x0

    .line 695
    .local v16, "childState":I
    const/4 v11, 0x0

    .line 696
    .local v11, "alternativeMaxWidth":I
    const/16 v39, 0x0

    .line 697
    .local v39, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 698
    .local v10, "allFillParent":Z
    const/16 v36, 0x0

    .line 700
    .local v36, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 702
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v40

    .line 703
    .local v40, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 705
    .local v21, "heightMode":I
    const/16 v27, 0x0

    .line 706
    .local v27, "matchWidth":Z
    const/16 v34, 0x0

    .line 708
    .local v34, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 709
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v38, v0

    .line 711
    .local v38, "useLargestChild":Z
    const/high16 v24, -0x80000000

    .line 712
    .local v24, "largestChildHeight":I
    const/16 v19, 0x0

    .line 715
    .local v19, "consumedExcessSpace":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v5, v0, :cond_10

    .line 716
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 717
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 715
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 723
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 724
    goto :goto_1

    .line 727
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 731
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    .line 733
    .local v25, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v36, v36, v3

    .line 735
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_5

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    const/16 v37, 0x1

    .line 736
    .local v37, "useExcessSpace":Z
    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    if-eqz v37, :cond_6

    .line 740
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v35, v0

    .line 741
    .local v35, "totalLength":I
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v35

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 742
    const/16 v34, 0x1

    .line 783
    :cond_3
    :goto_3
    if-ltz v12, :cond_4

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_4

    .line 784
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 790
    :cond_4
    if-ge v5, v12, :cond_a

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 791
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 735
    .end local v35    # "totalLength":I
    .end local v37    # "useExcessSpace":Z
    :cond_5
    const/16 v37, 0x0

    .restart local v37    # "useExcessSpace":Z
    goto :goto_2

    .line 744
    :cond_6
    if-eqz v37, :cond_7

    .line 750
    const/4 v3, -0x2

    move-object/from16 v0, v25

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 757
    :cond_7
    const/4 v3, 0x0

    cmpl-float v3, v36, v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 758
    .local v9, "usedHeight":I
    :goto_4
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 761
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 762
    .local v14, "childHeight":I
    if-eqz v37, :cond_8

    .line 766
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 767
    add-int v19, v19, v14

    .line 770
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v35, v0

    .line 771
    .restart local v35    # "totalLength":I
    add-int v3, v35, v14

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    .line 772
    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 771
    add-int/2addr v3, v6

    .line 772
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 771
    add-int/2addr v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 774
    if-eqz v38, :cond_3

    .line 775
    move/from16 v0, v24

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_3

    .line 757
    .end local v9    # "usedHeight":I
    .end local v14    # "childHeight":I
    .end local v35    # "totalLength":I
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 797
    .restart local v35    # "totalLength":I
    :cond_a
    const/16 v28, 0x0

    .line 798
    .local v28, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v40

    if-eq v0, v3, :cond_b

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_b

    .line 803
    const/16 v27, 0x1

    .line 804
    const/16 v28, 0x1

    .line 807
    :cond_b
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v26, v3, v6

    .line 808
    .local v26, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v30, v3, v26

    .line 809
    .local v30, "measuredWidth":I
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 810
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v16

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v16

    .line 812
    if-eqz v10, :cond_c

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    const/4 v10, 0x1

    .line 813
    :goto_5
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e

    .line 819
    if-eqz v28, :cond_d

    .line 818
    .end local v26    # "margin":I
    :goto_6
    move/from16 v0, v39

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 825
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 812
    .restart local v26    # "margin":I
    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    :cond_d
    move/from16 v26, v30

    .line 819
    goto :goto_6

    .line 822
    :cond_e
    if-eqz v28, :cond_f

    .line 821
    .end local v26    # "margin":I
    :goto_8
    move/from16 v0, v26

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7

    .restart local v26    # "margin":I
    :cond_f
    move/from16 v26, v30

    .line 822
    goto :goto_8

    .line 828
    .end local v4    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "margin":I
    .end local v28    # "matchWidthLocally":Z
    .end local v30    # "measuredWidth":I
    .end local v35    # "totalLength":I
    .end local v37    # "useExcessSpace":Z
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 829
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 832
    :cond_11
    if-eqz v38, :cond_15

    .line 833
    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_12

    if-nez v21, :cond_15

    .line 834
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 836
    const/4 v5, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v5, v0, :cond_15

    .line 837
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 838
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_13

    .line 839
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 836
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 843
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_14

    .line 844
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 845
    goto :goto_a

    .line 849
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    .line 848
    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    .line 851
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v35, v0

    .line 852
    .restart local v35    # "totalLength":I
    add-int v3, v35, v24

    .line 853
    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 852
    add-int/2addr v3, v6

    .line 853
    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 852
    add-int/2addr v3, v6

    .line 853
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 852
    add-int/2addr v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_a

    .line 858
    .end local v4    # "child":Landroid/view/View;
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v35    # "totalLength":I
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 860
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v22, v0

    .line 863
    .local v22, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 866
    const/4 v3, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v23

    .line 867
    .local v23, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v22, v23, v3

    .line 872
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v3, v22, v3

    .line 873
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_16

    const/16 v19, 0x0

    .line 872
    .end local v19    # "consumedExcessSpace":I
    :cond_16
    add-int v31, v3, v19

    .line 874
    .local v31, "remainingExcess":I
    if-nez v34, :cond_17

    if-eqz v31, :cond_27

    const/4 v3, 0x0

    cmpl-float v3, v36, v3

    if-lez v3, :cond_27

    .line 875
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v32, v0

    .line 877
    .local v32, "remainingWeightSum":F
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 879
    const/4 v5, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v5, v0, :cond_23

    .line 880
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 881
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1a

    .line 879
    :cond_18
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 875
    .end local v4    # "child":Landroid/view/View;
    .end local v32    # "remainingWeightSum":F
    :cond_19
    move/from16 v32, v36

    .restart local v32    # "remainingWeightSum":F
    goto :goto_b

    .line 885
    .restart local v4    # "child":Landroid/view/View;
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v17, v0

    .line 887
    .local v17, "childWeight":F
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_1b

    .line 888
    move/from16 v0, v31

    int-to-float v3, v0

    mul-float v3, v3, v17

    div-float v3, v3, v32

    float-to-int v0, v3

    move/from16 v33, v0

    .line 889
    .local v33, "share":I
    sub-int v31, v31, v33

    .line 890
    sub-float v32, v32, v17

    .line 893
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_1c

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v0, v3, :cond_1c

    .line 894
    move/from16 v14, v24

    .line 907
    .restart local v14    # "childHeight":I
    :goto_e
    const/4 v3, 0x0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 906
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 909
    .local v15, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    .line 910
    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 908
    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 911
    .local v18, "childWidthMeasureSpec":I
    move/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/view/View;->measure(II)V

    .line 914
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    move/from16 v0, v16

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v16

    .line 918
    .end local v14    # "childHeight":I
    .end local v15    # "childHeightMeasureSpec":I
    .end local v18    # "childWidthMeasureSpec":I
    .end local v33    # "share":I
    :cond_1b
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v26, v3, v6

    .line 919
    .restart local v26    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v30, v3, v26

    .line 920
    .restart local v30    # "measuredWidth":I
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 922
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v40

    if-eq v0, v3, :cond_20

    .line 923
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1f

    const/16 v28, 0x1

    .line 926
    .local v28, "matchWidthLocally":Z
    :goto_f
    if-eqz v28, :cond_21

    .line 925
    .end local v26    # "margin":I
    :goto_10
    move/from16 v0, v26

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 928
    if-eqz v10, :cond_22

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_22

    const/4 v10, 0x1

    .line 930
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v35, v0

    .line 931
    .restart local v35    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v35

    .line 932
    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 931
    add-int/2addr v3, v6

    .line 932
    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 931
    add-int/2addr v3, v6

    .line 932
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 931
    add-int/2addr v3, v6

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_d

    .line 895
    .end local v28    # "matchWidthLocally":Z
    .end local v30    # "measuredWidth":I
    .end local v35    # "totalLength":I
    .restart local v33    # "share":I
    :cond_1c
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_1d

    .line 896
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-ne v0, v3, :cond_1e

    .line 899
    :cond_1d
    move/from16 v14, v33

    .line 896
    .restart local v14    # "childHeight":I
    goto/16 :goto_e

    .line 903
    .end local v14    # "childHeight":I
    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v33

    .restart local v14    # "childHeight":I
    goto/16 :goto_e

    .line 923
    .end local v14    # "childHeight":I
    .end local v33    # "share":I
    .restart local v26    # "margin":I
    .restart local v30    # "measuredWidth":I
    :cond_1f
    const/16 v28, 0x0

    goto :goto_f

    .line 922
    :cond_20
    const/16 v28, 0x0

    goto :goto_f

    .restart local v28    # "matchWidthLocally":Z
    :cond_21
    move/from16 v26, v30

    .line 926
    goto :goto_10

    .line 928
    .end local v26    # "margin":I
    :cond_22
    const/4 v10, 0x0

    goto :goto_11

    .line 936
    .end local v4    # "child":Landroid/view/View;
    .end local v17    # "childWeight":F
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "matchWidthLocally":Z
    .end local v30    # "measuredWidth":I
    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 967
    .end local v32    # "remainingWeightSum":F
    :cond_24
    if-nez v10, :cond_25

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v40

    if-eq v0, v3, :cond_25

    .line 968
    move/from16 v29, v11

    .line 971
    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    add-int v29, v29, v3

    .line 974
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v29

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 976
    move/from16 v0, v29

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 979
    if-eqz v27, :cond_26

    .line 980
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 691
    :cond_26
    return-void

    .line 939
    :cond_27
    move/from16 v0, v39

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 945
    if-eqz v38, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v0, v3, :cond_24

    .line 946
    const/4 v5, 0x0

    :goto_12
    move/from16 v0, v20

    if-ge v5, v0, :cond_24

    .line 947
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 948
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_29

    .line 946
    :cond_28
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 953
    :cond_29
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    .line 955
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 956
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_28

    .line 958
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 959
    const/high16 v6, 0x40000000    # 2.0f

    .line 958
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 961
    const/high16 v6, 0x40000000    # 2.0f

    .line 960
    move/from16 v0, v24

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 957
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 347
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 352
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 346
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1493
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1494
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    .line 1492
    :goto_0
    return-void

    .line 1496
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 639
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 640
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 638
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1596
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1597
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1598
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1599
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1600
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1595
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 471
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 470
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 575
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 577
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 577
    const-string/jumbo v2, ")"

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 574
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 301
    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 303
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 308
    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 296
    return-void

    .line 305
    :cond_2
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 306
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 322
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 321
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1780
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1781
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1782
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1785
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1786
    or-int/lit8 p1, p1, 0x30

    .line 1789
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1790
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1779
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 1806
    and-int v0, p1, v2

    .line 1807
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1808
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1809
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1805
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 502
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 501
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1752
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1753
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1754
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1751
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    .line 256
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 259
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 255
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1815
    and-int/lit8 v0, p1, 0x70

    .line 1816
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1817
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1818
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1814
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 633
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method
