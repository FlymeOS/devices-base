.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$1;,
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mSlidingRunnable:Ljava/lang/Runnable;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method static synthetic -get0(Landroid/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 974
    new-instance v5, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v5, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 217
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    .line 216
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 220
    .local v4, "orientation":I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 221
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 222
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 223
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 224
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 226
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 227
    .local v3, "handleId":I
    if-nez v3, :cond_1

    .line 228
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "handleId":I
    :cond_0
    move v5, v7

    .line 220
    goto :goto_0

    .line 232
    .restart local v3    # "handleId":I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 233
    .local v1, "contentId":I
    if-nez v1, :cond_2

    .line 234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_2
    if-ne v3, v1, :cond_3

    .line 239
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    :cond_3
    iput v3, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 244
    iput v1, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 247
    .local v2, "density":F
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 248
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 249
    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 250
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 251
    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 252
    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 213
    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 501
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 502
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    .line 500
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 506
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 507
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    .line 505
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 842
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 843
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 846
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 847
    return-void

    .line 850
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 851
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 841
    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x10

    const/4 v3, 0x0

    .line 699
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 700
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 701
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 702
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 703
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 698
    :cond_0
    :goto_1
    return-void

    .line 701
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 704
    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 705
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 706
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 708
    :cond_3
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 709
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 710
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 717
    .local v2, "now":J
    iget-wide v6, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    .line 718
    .local v4, "t":F
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 719
    .local v1, "position":F
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 720
    .local v5, "v":F
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 721
    .local v0, "a":F
    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 722
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 723
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 715
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 585
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 587
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 588
    if-ne p1, v9, :cond_0

    .line 589
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 584
    :goto_0
    return-void

    .line 591
    :cond_0
    if-ne p1, v8, :cond_1

    .line 592
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    .line 593
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 592
    sub-int/2addr v7, v8

    .line 593
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 592
    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 594
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 597
    .local v6, "top":I
    sub-int v1, p1, v6

    .line 598
    .local v1, "deltaY":I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 599
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 603
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 605
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 606
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 608
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 609
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 611
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 612
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 613
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 612
    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 615
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 600
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    .line 601
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .line 618
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_4
    if-ne p1, v9, :cond_5

    .line 619
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 620
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 621
    :cond_5
    if-ne p1, v8, :cond_6

    .line 622
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    .line 623
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 622
    sub-int/2addr v7, v8

    .line 623
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 622
    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 624
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 626
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 627
    .local v4, "left":I
    sub-int v0, p1, v4

    .line 628
    .local v0, "deltaX":I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    .line 629
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 633
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 635
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 636
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 638
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 639
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 642
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 643
    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 642
    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 645
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 630
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    .line 631
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v8, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 857
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 858
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 861
    return-void

    .line 864
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 866
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 856
    :cond_1
    return-void
.end method

.method private performFling(IFZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    const-wide/16 v6, 0x10

    const/4 v4, 0x0

    .line 511
    int-to-float v2, p1

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 512
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 514
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 515
    if-nez p3, :cond_0

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 516
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    .line 517
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 520
    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 521
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 522
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 550
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 551
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 552
    add-long v2, v0, v6

    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 553
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 554
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 555
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->stopTracking()V

    .line 510
    return-void

    .line 516
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 526
    :cond_3
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 527
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 528
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 532
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    .line 533
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    .line 534
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 536
    :cond_5
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 537
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 538
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 533
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_2

    .line 543
    :cond_7
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 544
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 545
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 651
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 652
    return-void

    .line 657
    :cond_0
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 658
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 659
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    .line 660
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 661
    .local v0, "childHeight":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 662
    .local v3, "height":I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 663
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 662
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 664
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 665
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 664
    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 678
    .end local v0    # "childHeight":I
    .end local v3    # "height":I
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 679
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 681
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 650
    return-void

    .line 667
    :cond_3
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 668
    .local v1, "childWidth":I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 669
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 670
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 669
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 671
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    .line 672
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 673
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 671
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 560
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 561
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 562
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_0

    move v2, v3

    .line 563
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 564
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 565
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 566
    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 567
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v6, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    :goto_1
    sub-int/2addr v3, v6

    .line 566
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 568
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 569
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 570
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 572
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 573
    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    iput-wide v6, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 574
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 559
    .end local v0    # "now":J
    :goto_2
    return-void

    .end local v2    # "opening":Z
    :cond_0
    move v2, v4

    .line 562
    goto :goto_0

    .line 567
    .restart local v2    # "opening":Z
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v6, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_1

    .line 576
    :cond_2
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 577
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 578
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 580
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 685
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 686
    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 688
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 694
    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 684
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 800
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 801
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 802
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 803
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 805
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    .line 807
    if-eqz v0, :cond_1

    .line 808
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 799
    :cond_1
    return-void

    .line 805
    :cond_2
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 822
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 823
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 824
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 825
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 827
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    .line 829
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 831
    if-eqz v0, :cond_1

    .line 832
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 821
    :cond_1
    return-void

    .line 827
    :cond_2
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 754
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 787
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 784
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    .line 307
    .local v2, "drawingTime":J
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 308
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 310
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 312
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 313
    :cond_0
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 315
    if-eqz v4, :cond_2

    .line 316
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v8, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 318
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    int-to-float v6, v6

    .line 323
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    :cond_4
    int-to-float v5, v5

    .line 322
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 322
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    goto :goto_1

    .line 327
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 328
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 838
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 935
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 262
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$DrawerToggler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 269
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 373
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    if-eqz v7, :cond_0

    .line 374
    return v9

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 379
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 380
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 382
    .local v6, "y":F
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 383
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 385
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 386
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v7, :cond_1

    float-to-int v7, v5

    float-to-int v8, v6

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 390
    :cond_1
    if-nez v0, :cond_3

    .line 391
    iput-boolean v10, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 393
    invoke-virtual {v2, v10}, Landroid/view/View;->setPressed(Z)V

    .line 395
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 398
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_2

    .line 399
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 402
    :cond_2
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 403
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 404
    .local v4, "top":I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 405
    invoke-direct {p0, v4}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 411
    .end local v4    # "top":I
    :goto_0
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 414
    :cond_3
    return v10

    .line 387
    :cond_4
    return v9

    .line 407
    :cond_5
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 408
    .local v3, "left":I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 409
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 334
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    sub-int v7, p4, p2

    .line 339
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 341
    .local v6, "height":I
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 343
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 344
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 349
    .local v0, "childHeight":I
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 351
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 352
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 353
    .local v1, "childLeft":I
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 355
    .local v2, "childTop":I
    :goto_0
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 356
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 355
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 366
    :goto_1
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 367
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 368
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 333
    return-void

    .line 353
    .end local v2    # "childTop":I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    .restart local v2    # "childTop":I
    goto :goto_0

    .line 358
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_2
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 359
    .restart local v1    # "childLeft":I
    :goto_2
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 361
    .restart local v2    # "childTop":I
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    .line 362
    iget v9, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 363
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 361
    const/4 v11, 0x0

    invoke-virtual {v4, v8, v11, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 358
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    .restart local v1    # "childLeft":I
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 279
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 281
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 282
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 284
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 285
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 288
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 289
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 291
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 293
    .local v1, "height":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 294
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 293
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 301
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 277
    return-void

    .line 296
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 297
    .local v4, "width":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 298
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 297
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 420
    const/4 v9, 0x1

    return v9

    .line 423
    :cond_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 424
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 426
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 497
    .end local v0    # "action":I
    :cond_1
    :goto_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v9, :cond_17

    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_17

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1
    return v9

    .line 428
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 432
    :pswitch_1
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 433
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 435
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 436
    .local v8, "yVelocity":F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 439
    .local v7, "xVelocity":F
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 440
    .local v6, "vertical":Z
    if-eqz v6, :cond_8

    .line 441
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_7

    const/4 v2, 0x1

    .line 442
    .local v2, "negative":Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_3

    .line 443
    neg-float v7, v7

    .line 445
    :cond_3
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_4

    .line 446
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 458
    :cond_4
    :goto_4
    float-to-double v10, v7

    float-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v4, v10

    .line 459
    .local v4, "velocity":F
    if-eqz v2, :cond_5

    .line 460
    neg-float v4, v4

    .line 463
    :cond_5
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 464
    .local v3, "top":I
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 466
    .local v1, "left":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_15

    .line 467
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_b

    iget v9, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-ge v3, v9, :cond_b

    .line 474
    :cond_6
    :goto_5
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_12

    .line 475
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/View;->playSoundEffect(I)V

    .line 477
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_10

    .line 478
    if-eqz v6, :cond_f

    .end local v3    # "top":I
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    goto/16 :goto_0

    .line 441
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v4    # "velocity":F
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "negative":Z
    goto :goto_3

    .line 449
    .end local v2    # "negative":Z
    :cond_8
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_a

    const/4 v2, 0x1

    .line 450
    .restart local v2    # "negative":Z
    :goto_7
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    .line 451
    neg-float v8, v8

    .line 453
    :cond_9
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4

    .line 454
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .line 449
    .end local v2    # "negative":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "negative":Z
    goto :goto_7

    .line 468
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    .restart local v4    # "velocity":F
    :cond_b
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_c

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v10

    .line 469
    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 468
    sub-int/2addr v9, v10

    .line 469
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 468
    sub-int/2addr v9, v10

    if-gt v3, v9, :cond_6

    .line 487
    :cond_c
    if-eqz v6, :cond_14

    .end local v3    # "top":I
    :goto_8
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_0

    .line 470
    .restart local v3    # "top":I
    :cond_d
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_6

    .line 471
    :cond_e
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_c

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v10, p0, Landroid/view/View;->mRight:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v9, v10

    .line 472
    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 471
    sub-int/2addr v9, v10

    .line 472
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 471
    sub-int/2addr v9, v10

    if-le v1, v9, :cond_c

    goto :goto_5

    :cond_f
    move v3, v1

    .line 478
    goto :goto_6

    .line 480
    :cond_10
    if-eqz v6, :cond_11

    .end local v3    # "top":I
    :goto_9
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    goto/16 :goto_0

    .restart local v3    # "top":I
    :cond_11
    move v3, v1

    goto :goto_9

    .line 483
    :cond_12
    if-eqz v6, :cond_13

    .end local v3    # "top":I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_0

    .restart local v3    # "top":I
    :cond_13
    move v3, v1

    goto :goto_a

    :cond_14
    move v3, v1

    .line 487
    goto :goto_8

    .line 490
    :cond_15
    if-eqz v6, :cond_16

    .end local v3    # "top":I
    :goto_b
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_0

    .restart local v3    # "top":I
    :cond_16
    move v3, v1

    goto :goto_b

    .line 497
    .end local v0    # "action":I
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v3    # "top":I
    .end local v4    # "velocity":F
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "vertical":Z
    .end local v7    # "xVelocity":F
    .end local v8    # "yVelocity":F
    :cond_17
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 770
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 772
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 774
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 769
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 886
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 885
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 877
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 876
    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .prologue
    .line 898
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 897
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 741
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 742
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 735
    return-void

    .line 739
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 926
    return-void
.end method
