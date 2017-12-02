.class public Lcom/android/internal/widget/SwipeDismissLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$1;,
        Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;
    }
.end annotation


# static fields
.field private static final MAX_DIST_THRESHOLD:F = 0.33f

.field private static final MIN_DIST_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "SwipeDismissLayout"


# instance fields
.field private mActiveTouchId:I

.field private mActivityTranslucencyConverted:Z

.field private mBlockGesture:Z

.field private mDiscardIntercept:Z

.field private final mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

.field private mDismissable:Z

.field private mDismissed:Z

.field private mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

.field private mDownX:F

.field private mDownY:F

.field private mIsWindowNativelyTranslucent:Z

.field private mLastX:F

.field private mMinFlingVelocity:I

.field private mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

.field private mScreenOffFilter:Landroid/content/IntentFilter;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/SwipeDismissLayout;F)V
    .locals 0
    .param p1, "deltaX"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 85
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 89
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 85
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 89
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 119
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 85
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 89
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method private checkGesture(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->isAnimating()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 411
    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;->onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 280
    :cond_0
    return-void
.end method

.method private findActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 424
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 425
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 427
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 429
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 129
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    .line 130
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 132
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void
.end method

.method private progressToAlpha(F)F
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 418
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0
.end method

.method private resetMembers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 306
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 307
    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 308
    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 309
    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 310
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 311
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 302
    return-void
.end method

.method private setProgress(F)V
    .locals 2
    .param p1, "deltaX"    # F

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->progressToAlpha(F)F

    move-result v1

    .line 275
    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V

    .line 273
    :cond_0
    return-void
.end method

.method private updateDismiss(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v8, 0x3ea8f5c3    # 0.33f

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float v0, v3, v4

    .line 341
    .local v0, "deltaX":F
    iget-object v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 342
    iget-object v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 343
    .local v2, "xVelocity":F
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    const/high16 v4, -0x31000000

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-float v3, v4

    div-float v2, v0, v3

    .line 348
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-nez v3, :cond_1

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 352
    const v4, -0x41947ae0    # -0.23000002f

    mul-float/2addr v4, v2

    .line 353
    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    int-to-float v5, v5

    .line 352
    div-float/2addr v4, v5

    add-float/2addr v4, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 356
    const v5, 0x3dcccccd    # 0.1f

    .line 351
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v1, v3, v4

    .line 357
    .local v1, "distanceThreshold":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 359
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 363
    .end local v1    # "distanceThreshold":F
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v3, :cond_2

    .line 365
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 366
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 338
    :cond_2
    return-void

    .line 358
    .restart local v1    # "distanceThreshold":F
    :cond_3
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    goto :goto_0
.end method

.method private updateSwiping(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 316
    iget-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 317
    .local v3, "oldSwiping":Z
    iget-boolean v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-nez v5, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float v1, v5, v6

    .line 319
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    sub-float v2, v5, v6

    .line 320
    .local v2, "deltaY":F
    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    iget v7, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 321
    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 327
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_4

    .line 315
    :cond_2
    :goto_1
    return-void

    .line 323
    .restart local v1    # "deltaX":F
    .restart local v2    # "deltaY":F
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    goto :goto_0

    .line 329
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    if-nez v4, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->findActivity()Landroid/app/Activity;

    move-result-object v0

    .line 331
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0, v8, v8}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    goto :goto_1
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZFFF)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 383
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 384
    nop

    nop

    .line 385
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 386
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 387
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 388
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 389
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, "child":Landroid/view/View;
    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 391
    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 392
    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v0, v2

    .line 393
    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v0, v2

    .line 392
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    move-result v0

    .line 390
    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 399
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected cancel()V
    .locals 2

    .prologue
    .line 287
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    if-nez v1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->findActivity()Landroid/app/Activity;

    move-result-object v0

    .line 289
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 291
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 294
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 286
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 153
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->checkGesture(Landroid/view/MotionEvent;)V

    .line 161
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    if-eqz v0, :cond_0

    .line 162
    return v7

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    if-nez v0, :cond_1

    .line 165
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    :cond_3
    return v2

    .line 175
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 178
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 179
    const-string/jumbo v0, "int1"

    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 184
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 185
    .local v6, "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    goto :goto_0

    .line 188
    .end local v6    # "actionIndex":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 189
    .restart local v6    # "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 190
    .local v8, "pointerId":I
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    if-ne v8, v0, :cond_2

    .line 192
    if-nez v6, :cond_4

    .line 193
    .local v7, "newActionIndex":I
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    goto :goto_0

    .end local v7    # "newActionIndex":I
    :cond_4
    move v7, v2

    .line 192
    goto :goto_1

    .line 199
    .end local v6    # "actionIndex":I
    .end local v8    # "pointerId":I
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    goto :goto_0

    .line 203
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    if-nez v0, :cond_2

    .line 207
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 208
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_5

    .line 209
    const-string/jumbo v0, "SwipeDismissLayout"

    const-string/jumbo v1, "Invalid pointer index: ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-boolean v7, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float v3, v0, v1

    .line 214
    .local v3, "dx":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 215
    .local v4, "x":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 216
    .local v5, "y":F
    cmpl-float v0, v3, v10

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    iput-boolean v7, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    goto/16 :goto_0

    .line 220
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->checkGesture(Landroid/view/MotionEvent;)V

    .line 230
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    if-eqz v0, :cond_0

    .line 231
    return v3

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_1
    :goto_0
    return v3

    .line 234
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 244
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateDismiss(Landroid/view/MotionEvent;)V

    .line 245
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animateDismissal(F)V

    .line 253
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    goto :goto_0

    .line 247
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_3

    .line 250
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animateRecovery(F)V

    goto :goto_1

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 265
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDismissable(Z)V
    .locals 1
    .param p1, "dismissable"    # Z

    .prologue
    .line 403
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 408
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 402
    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .line 138
    return-void
.end method

.method public setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 142
    return-void
.end method
