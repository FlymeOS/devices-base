.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$Marquee$1;,
        Landroid/widget/TextView$Marquee$2;,
        Landroid/widget/TextView$Marquee$3;
    }
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView$Marquee;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/TextView$Marquee;)B
    .locals 1

    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return v0
.end method

.method static synthetic -set0(Landroid/widget/TextView$Marquee;J)J
    .locals 1

    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/widget/TextView$Marquee;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/TextView$Marquee;B)B
    .locals 0

    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p1
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 10223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10211
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 10230
    new-instance v1, Landroid/widget/TextView$Marquee$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10237
    new-instance v1, Landroid/widget/TextView$Marquee$2;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10246
    new-instance v1, Landroid/widget/TextView$Marquee$3;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10224
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10225
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    .line 10226
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 10227
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 10223
    return-void
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 10291
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10292
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10293
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 10290
    :cond_0
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .locals 1

    .prologue
    .line 10322
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method getMaxFadeScroll()F
    .locals 1

    .prologue
    .line 10330
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method getScroll()F
    .locals 1

    .prologue
    .line 10326
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 10342
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStopped()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10346
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method shouldDrawGhost()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10338
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method shouldDrawLeftFade()Z
    .locals 2

    .prologue
    .line 10334
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method start(I)V
    .locals 7
    .param p1, "repeatLimit"    # I

    .prologue
    const/4 v6, 0x0

    .line 10297
    if-nez p1, :cond_0

    .line 10298
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 10299
    return-void

    .line 10301
    :cond_0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 10302
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10303
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/widget/TextView;->-get2(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10304
    const/4 v4, 0x1

    iput-byte v4, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 10305
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10306
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10307
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    .line 10306
    sub-int v3, v4, v5

    .line 10308
    .local v3, "textWidth":I
    invoke-static {v2}, Landroid/widget/TextView;->-get2(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 10309
    .local v1, "lineWidth":F
    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float v0, v4, v5

    .line 10310
    .local v0, "gap":F
    int-to-float v4, v3

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 10311
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 10312
    add-float v4, v1, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 10313
    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 10314
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 10316
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 10317
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10296
    .end local v0    # "gap":F
    .end local v1    # "lineWidth":F
    .end local v3    # "textWidth":I
    :cond_1
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 10283
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 10284
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10285
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10286
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10287
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 10282
    return-void
.end method

.method tick()V
    .locals 10

    .prologue
    .line 10259
    iget-byte v6, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 10260
    return-void

    .line 10263
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10265
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 10266
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10267
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    .line 10268
    .local v0, "currentMs":J
    iget-wide v6, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    sub-long v2, v0, v6

    .line 10269
    .local v2, "deltaMs":J
    iput-wide v0, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    .line 10270
    long-to-float v6, v2

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    mul-float v4, v6, v7

    .line 10271
    .local v4, "deltaPx":F
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    add-float/2addr v6, v4

    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10272
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v7, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 10273
    iget v6, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10274
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v8, 0x4b0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 10278
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 10258
    .end local v0    # "currentMs":J
    .end local v2    # "deltaMs":J
    .end local v4    # "deltaPx":F
    :cond_2
    return-void

    .line 10276
    .restart local v0    # "currentMs":J
    .restart local v2    # "deltaMs":J
    .restart local v4    # "deltaPx":F
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
