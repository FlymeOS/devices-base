.class public Landroid/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastIndex:I

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 69
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 70
    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 45
    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 506
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>(Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;)V

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 513
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 516
    :try_start_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_1

    .line 517
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 520
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v1, :cond_4

    .line 522
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 532
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 533
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 534
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 535
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 536
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 537
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 538
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 540
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 541
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    .line 542
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 543
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 542
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 505
    return-void

    .line 524
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v1, :cond_5

    .line 525
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 527
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v1

    .line 546
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 545
    throw v1
.end method

.method private needsMirroring()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method animate(Z)V
    .locals 14
    .param p1, "schedule"    # Z

    .prologue
    const-wide/16 v12, 0xff

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 551
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 554
    .local v2, "now":J
    const/4 v1, 0x0

    .line 555
    .local v1, "animating":Z
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 556
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 557
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    .line 558
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 559
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 570
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 571
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 572
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_5

    .line 573
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 574
    iput-object v7, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 575
    const/4 v4, -0x1

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 576
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 588
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 589
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x10

    add-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Landroid/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 550
    :cond_2
    return-void

    .line 561
    :cond_3
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v12

    long-to-int v4, v4

    .line 562
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 561
    div-int v0, v4, v5

    .line 563
    .local v0, "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v5, v0, 0xff

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 564
    const/4 v1, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "animAlpha":I
    :cond_4
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_0

    .line 578
    :cond_5
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v12

    long-to-int v4, v4

    .line 579
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 578
    div-int v0, v4, v5

    .line 580
    .restart local v0    # "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 581
    const/4 v1, 0x1

    goto :goto_1

    .line 585
    .end local v0    # "animAlpha":I
    :cond_6
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 612
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 611
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    .line 654
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 655
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 653
    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 96
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    .line 95
    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 624
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0

    .line 626
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 138
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 105
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 107
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    or-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 117
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 119
    .local v0, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 120
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 123
    .end local v0    # "left":I
    .end local v3    # "right":I
    :cond_0
    return v2

    .line 109
    :cond_1
    const/4 v2, 0x0

    .local v2, "result":Z
    goto :goto_0

    .line 111
    .end local v2    # "result":Z
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 112
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 114
    .end local v2    # "result":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 381
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 266
    iput-object v2, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 268
    const/4 v0, 0x1

    .line 270
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 272
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 276
    :cond_1
    iget-wide v2, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 277
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 278
    const/4 v0, 0x1

    .line 280
    :cond_2
    iget-wide v2, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 281
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_3
    if-eqz v0, :cond_4

    .line 285
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 262
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 631
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 632
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v0

    .line 633
    .local v0, "clone":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-static {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->-wrap0(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 634
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 635
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 637
    .end local v0    # "clone":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 331
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 337
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 320
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 326
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 388
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 387
    :cond_0
    return-void
.end method

.method public selectDrawable(I)Z
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 438
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ne p1, v1, :cond_0

    .line 439
    return v4

    .line 442
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 448
    .local v2, "now":J
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v1, :cond_8

    .line 449
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 452
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 453
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 454
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 455
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 465
    :cond_2
    :goto_0
    if-ltz p1, :cond_9

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v1, :cond_9

    .line 466
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 467
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 469
    if-eqz v0, :cond_4

    .line 470
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v1, :cond_3

    .line 471
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 473
    :cond_3
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 480
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_5

    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_6

    .line 481
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_a

    .line 482
    new-instance v1, Landroid/graphics/drawable/DrawableContainer$1;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/DrawableContainer$1;-><init>(Landroid/graphics/drawable/DrawableContainer;)V

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 492
    :goto_2
    invoke-virtual {p0, v10}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 495
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 497
    return v10

    .line 457
    :cond_7
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 458
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 459
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 461
    :cond_8
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 462
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0

    .line 476
    :cond_9
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 477
    iput v7, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_1

    .line 489
    :cond_a
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 148
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 149
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 150
    iget-wide v0, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 2
    .param p1, "mirrored"    # Z

    .prologue
    .line 248
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 178
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    :cond_0
    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    const/4 v1, 0x0

    .line 1213
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1216
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 1217
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1218
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 1225
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 1226
    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 1212
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 419
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 219
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 218
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 227
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 291
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 290
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 304
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 297
    :cond_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 188
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 205
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 201
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 403
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 406
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 409
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 395
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 394
    :cond_0
    return-void
.end method

.method protected final updateDensity(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 607
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 606
    return-void
.end method
