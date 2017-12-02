.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$1;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mCollapsibleHeightReserved:I

.field private mDismissOnScrollerFinished:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private mUncollapsibleHeight:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    .line 107
    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    .line 106
    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 127
    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 130
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 134
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 133
    const/4 v3, 0x2

    .line 132
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    const v3, 0x108065f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v2, Landroid/widget/OverScroller;

    .line 140
    const v3, 0x10c0005

    .line 139
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    .line 141
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 144
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    .line 145
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    .line 124
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 429
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 509
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 510
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 511
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private findChildUnder(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 519
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 524
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 525
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    return-object v0

    .line 524
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 530
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 535
    :goto_0
    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 537
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 538
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 542
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .local v0, "v":Landroid/view/View;
    goto :goto_0

    .line 544
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    return-object v0
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 10
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 797
    .local v2, "heightUsed":I
    instance-of v8, p1, Landroid/widget/AbsListView;

    if-eqz v8, :cond_2

    move-object v6, p1

    .line 798
    check-cast v6, Landroid/widget/AbsListView;

    .line 799
    .local v6, "lv":Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    .line 801
    .local v7, "lvPaddingBottom":I
    const/4 v4, 0x0

    .line 802
    .local v4, "lowest":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 803
    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v1, v8, v7

    .line 804
    .local v1, "bottom":I
    if-le v1, v4, :cond_0

    .line 805
    move v4, v1

    .line 802
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 809
    .end local v1    # "bottom":I
    :cond_1
    if-ge v4, v2, :cond_2

    .line 810
    move v2, v4

    .line 814
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "lowest":I
    .end local v6    # "lv":Landroid/widget/AbsListView;
    .end local v7    # "lvPaddingBottom":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 815
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget v8, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v2

    iget v9, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    return v8
.end method

.method private getMaxCollapsedHeight()I
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 225
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 224
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    goto :goto_0
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .locals 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    .line 587
    .local v1, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    .line 588
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v1, v5

    .line 589
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float v0, v3, v5

    .line 590
    .local v0, "bottom":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    cmpl-float v5, p2, v3

    if-ltz v5, :cond_0

    cmpg-float v5, p1, v2

    if-gez v5, :cond_0

    cmpg-float v5, p2, v0

    if-gez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 556
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 557
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_0

    .line 560
    move-object v2, p1

    .line 573
    .local v2, "directChild":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v9

    sub-int v1, v8, v9

    .line 574
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v0

    .line 575
    .local v0, "childCount":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 576
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 577
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    .line 575
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "childCount":I
    .end local v1    # "clipEdge":I
    .end local v2    # "directChild":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_0
    move-object v6, p1

    .line 563
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 564
    .local v5, "p":Landroid/view/ViewParent;
    :goto_3
    if-eq v5, p0, :cond_1

    move-object v6, v5

    .line 565
    check-cast v6, Landroid/view/View;

    .line 566
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_3

    .line 568
    :cond_1
    move-object v2, v6

    .restart local v2    # "directChild":Landroid/view/View;
    goto :goto_0

    .line 580
    .end local v5    # "p":Landroid/view/ViewParent;
    .end local v6    # "v":Landroid/view/View;
    .restart local v0    # "childCount":I
    .restart local v1    # "clipEdge":I
    .restart local v3    # "i":I
    .restart local v4    # "nextChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 582
    .end local v4    # "nextChild":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v8, v1, :cond_4

    const/4 v7, 0x1

    :cond_4
    return v7
.end method

.method private isDragging()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 195
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 551
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMoving()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private onCollapsedChanged(Z)V
    .locals 2
    .param p1, "isCollapsed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 465
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 466
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 461
    :cond_0
    return-void

    .line 466
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 395
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 396
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 399
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 400
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 401
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 393
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private performDrag(F)F
    .locals 11
    .param p1, "dy"    # F

    .prologue
    const/4 v10, 0x0

    .line 436
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v7, p1

    .line 437
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 436
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 438
    .local v6, "newPos":F
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_5

    .line 439
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float p1, v6, v7

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v1

    .line 441
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 444
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v7, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v7, :cond_0

    .line 445
    float-to-int v7, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 441
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_1
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 449
    .local v4, "isCollapsedOld":Z
    :goto_1
    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 450
    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 451
    cmpl-float v7, v6, v10

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 452
    .local v3, "isCollapsedNew":Z
    :goto_2
    if-eq v4, v3, :cond_2

    .line 453
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 456
    return p1

    .line 448
    .end local v3    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isCollapsedOld":Z
    goto :goto_1

    .line 451
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 458
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "isCollapsedOld":Z
    :cond_5
    return v10
.end method

.method private resetTouch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 408
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 409
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 410
    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 406
    return-void
.end method

.method private smoothScrollTo(IF)V
    .locals 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 481
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 482
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v0

    .line 483
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 484
    .local v4, "dy":I
    if-nez v4, :cond_0

    .line 485
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v9

    .line 489
    .local v9, "height":I
    div-int/lit8 v8, v9, 0x2

    .line 490
    .local v8, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v9

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 491
    .local v7, "distanceRatio":F
    int-to-float v0, v8

    int-to-float v3, v8

    .line 492
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    .line 491
    mul-float/2addr v3, v11

    add-float v6, v0, v3

    .line 494
    .local v6, "distance":F
    const/4 v5, 0x0

    .line 495
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 496
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 497
    div-float v0, v6, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 502
    :goto_0
    const/16 v0, 0x12c

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 504
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 480
    return-void

    .line 499
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float v10, v0, v3

    .line 500
    .local v10, "pageDelta":F
    add-float v0, v10, v12

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_0
.end method

.method private updateCollapseOffset(IZ)Z
    .locals 7
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 199
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ne p1, v4, :cond_0

    .line 200
    return v2

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 205
    .local v1, "isCollapsedOld":Z
    :goto_0
    if-eqz p2, :cond_3

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v4, :cond_3

    .line 206
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 208
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 212
    :goto_1
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    move v0, v3

    .line 213
    .local v0, "isCollapsedNew":Z
    :goto_2
    if-eq v1, v0, :cond_1

    .line 214
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 220
    .end local v0    # "isCollapsedNew":Z
    .end local v1    # "isCollapsedOld":Z
    :cond_1
    :goto_3
    return v3

    .line 204
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isCollapsedOld":Z
    goto :goto_0

    .line 210
    :cond_3
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_1

    :cond_4
    move v0, v2

    .line 212
    goto :goto_2

    .line 218
    .end local v1    # "isCollapsedOld":Z
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v4, :cond_6

    :goto_4
    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_4
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 417
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 419
    .local v0, "keepGoing":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 420
    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 415
    .end local v0    # "keepGoing":Z
    :cond_0
    :goto_1
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "keepGoing":Z
    goto :goto_0

    .line 422
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;)V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method dispatchOnDismissed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 476
    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 470
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 888
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 873
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 878
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 879
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    return-object v0

    .line 880
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 881
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 883
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 689
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmallCollapsed()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 603
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 602
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 608
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 733
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 728
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 694
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 698
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 699
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 705
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 693
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 236
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 237
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 240
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 242
    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v4, :cond_2

    .line 279
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 281
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v4, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    :cond_3
    return v5

    .line 244
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 245
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 246
    .local v3, "y":F
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 247
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 248
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    move v4, v5

    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    goto :goto_0

    .line 253
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 254
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 255
    .restart local v3    # "y":F
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v1, v3, v6

    .line 256
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    .line 258
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 259
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 260
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    .line 261
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v6, v1

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 260
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto :goto_0

    .line 267
    .end local v1    # "dy":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v14

    .line 822
    .local v14, "width":I
    const/4 v7, 0x0

    .line 824
    .local v7, "indicatorHost":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    move/from16 v16, v0

    .line 825
    .local v16, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v9

    .line 826
    .local v9, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v17

    sub-int v12, v14, v17

    .line 828
    .local v12, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v4

    .line 829
    .local v4, "childCount":I
    const/4 v6, 0x0

    .end local v7    # "indicatorHost":Landroid/view/View;
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 830
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 831
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 832
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 833
    move-object v7, v3

    .line 836
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 829
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 840
    :cond_1
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 841
    .local v13, "top":I
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 842
    int-to-float v0, v13

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 844
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v2, v13, v17

    .line 846
    .local v2, "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 847
    .local v5, "childWidth":I
    sub-int v15, v12, v9

    .line 848
    .local v15, "widthAvailable":I
    sub-int v17, v15, v5

    div-int/lit8 v17, v17, 0x2

    add-int v8, v9, v17

    .line 849
    .local v8, "left":I
    add-int v11, v8, v5

    .line 851
    .local v11, "right":I
    invoke-virtual {v3, v8, v13, v11, v2}, Landroid/view/View;->layout(IIII)V

    .line 853
    iget v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v16, v2, v17

    goto :goto_1

    .line 856
    .end local v2    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childWidth":I
    .end local v8    # "left":I
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v11    # "right":I
    .end local v13    # "top":I
    .end local v15    # "widthAvailable":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 857
    if-eqz v7, :cond_6

    .line 858
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 859
    .restart local v8    # "left":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    .line 860
    .restart local v11    # "right":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 861
    .restart local v2    # "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    sub-int v13, v2, v17

    .line 862
    .restart local v13    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v13, v11, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 819
    .end local v2    # "bottom":I
    .end local v8    # "left":I
    .end local v11    # "right":I
    .end local v13    # "top":I
    :cond_4
    :goto_3
    return-void

    .line 863
    .restart local v2    # "bottom":I
    .restart local v8    # "left":I
    .restart local v11    # "right":I
    .restart local v13    # "top":I
    :cond_5
    const/16 v17, 0x1

    goto :goto_2

    .line 865
    .end local v2    # "bottom":I
    .end local v8    # "left":I
    .end local v11    # "right":I
    .end local v13    # "top":I
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 866
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 738
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 739
    .local v12, "sourceWidth":I
    move v13, v12

    .line 740
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 744
    .local v8, "heightSize":I
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v0, :cond_0

    .line 745
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 748
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 749
    .local v2, "widthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 750
    .local v4, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v14

    add-int v3, v0, v14

    .line 751
    .local v3, "widthPadding":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v14

    add-int v5, v0, v14

    .line 754
    .local v5, "heightUsed":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v7

    .line 755
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 756
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 757
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 758
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v14, 0x8

    if-eq v0, v14, :cond_1

    move-object v0, p0

    .line 759
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 760
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeightUsed(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    .line 755
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 764
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move v6, v5

    .line 767
    .local v6, "alwaysShowHeight":I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_4

    .line 768
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 769
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 770
    .restart local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v14, 0x8

    if-eq v0, v14, :cond_3

    move-object v0, p0

    .line 771
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 772
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeightUsed(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    .line 767
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 776
    .end local v1    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_4
    iget v11, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 778
    .local v11, "oldCollapsibleHeight":I
    sub-int v0, v5, v6

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v14

    sub-int/2addr v0, v14

    .line 777
    const/4 v14, 0x0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 779
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v0, v5, v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    .line 781
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v11, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    .line 783
    sub-int v0, v8, v5

    const/4 v14, 0x0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v14, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v14, v14

    add-int/2addr v0, v14

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 785
    invoke-virtual {p0, v12, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 737
    return-void

    .line 781
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 658
    if-nez p4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_0

    .line 660
    cmpg-float v1, p3, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 661
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 662
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 666
    :goto_0
    return v4

    .line 664
    :cond_0
    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    :goto_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_1

    .line 668
    :cond_2
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 649
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0, v2, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 651
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_0
    return v2
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 673
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    return v3

    .line 677
    :cond_0
    const/16 v0, 0x1000

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 678
    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 679
    return v3

    .line 681
    :cond_1
    return v2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 642
    if-lez p3, :cond_0

    .line 643
    neg-int v0, p3

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aput v0, p4, v1

    .line 641
    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 635
    if-gez p5, :cond_0

    .line 636
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 634
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 621
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 620
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 900
    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 901
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 902
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 899
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 893
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 894
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 895
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 616
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 626
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 625
    :cond_0
    return-void

    .line 628
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 288
    .local v1, "action":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "handled":Z
    packed-switch v1, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    return v3

    .line 293
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 294
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 295
    .local v10, "y":F
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 296
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 297
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 298
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    const/4 v4, 0x1

    .line 299
    .local v4, "hitView":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v12, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 300
    :goto_2
    if-eqz v4, :cond_3

    move v12, v3

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    goto :goto_0

    .line 298
    .end local v4    # "hitView":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "hitView":Z
    goto :goto_1

    .line 299
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 300
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 306
    .end local v4    # "hitView":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 307
    .local v5, "index":I
    if-gez v5, :cond_4

    .line 308
    const-string/jumbo v12, "ResolverDrawerLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad pointer id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", resetting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v5, 0x0

    .line 310
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 314
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 315
    .restart local v9    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 316
    .restart local v10    # "y":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v12, :cond_5

    .line 317
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v2, v10, v12

    .line 318
    .local v2, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 319
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    const/4 v3, 0x1

    .line 320
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 321
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v13, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 320
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 324
    .end local v2    # "dy":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v12, :cond_6

    .line 325
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v2, v10, v12

    .line 326
    .restart local v2    # "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 328
    .end local v2    # "dy":F
    :cond_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto/16 :goto_0

    .line 333
    .end local v5    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 334
    .local v7, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 335
    .local v6, "pointerId":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 336
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    goto/16 :goto_0

    .line 342
    .end local v6    # "pointerId":I
    .end local v7    # "pointerIndex":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 347
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 348
    .local v8, "wasDragging":Z
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 349
    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v12, :cond_7

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 354
    const/4 v12, 0x1

    return v12

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    .line 359
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 360
    const/4 v12, 0x1

    return v12

    .line 362
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    .line 364
    .local v11, "yvel":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v12, :cond_9

    .line 366
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 367
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 368
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 376
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto/16 :goto_0

    .line 370
    :cond_9
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_a

    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_5

    .line 374
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_c

    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x0

    .line 373
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_4

    .line 374
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_6

    .line 381
    .end local v8    # "wasDragging":Z
    .end local v11    # "yvel":F
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v12, :cond_d

    .line 383
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    const/4 v12, 0x0

    :goto_7
    const/4 v13, 0x0

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 385
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 386
    const/4 v12, 0x1

    return v12

    .line 383
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_7

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 710
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 712
    return v1

    .line 715
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    return v3

    .line 719
    :cond_1
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 720
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 721
    return v3

    .line 724
    :cond_2
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 594
    :cond_0
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 163
    :goto_0
    return-void

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCollapsibleHeightReserved(I)V
    .locals 6
    .param p1, "heightPixels"    # I

    .prologue
    const/4 v3, 0x0

    .line 172
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 173
    .local v2, "oldReserved":I
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 175
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    sub-int v0, v4, v2

    .line 176
    .local v0, "dReserved":I
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v4, :cond_0

    .line 177
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 180
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 181
    .local v1, "oldCollapsibleHeight":I
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 183
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    return-void

    .line 183
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    .line 171
    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 228
    return-void
.end method

.method public setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 150
    return-void
.end method
