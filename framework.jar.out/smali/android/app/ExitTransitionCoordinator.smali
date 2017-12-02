.class Landroid/app/ExitTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ExitTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mExitNotified:Z

.field private mExitSharedElementBundle:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

.field private mIsBackgroundReady:Z

.field private mIsCanceled:Z

.field private mIsExitStarted:Z

.field private mIsHidden:Z

.field private mSharedElementBundle:Landroid/os/Bundle;

.field private mSharedElementNotified:Z

.field private mSharedElementsHidden:Z


# direct methods
.method static synthetic -get0(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return v0
.end method

.method static synthetic -get3(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    return v0
.end method

.method static synthetic -get4(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/ExitTransitionCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    return p1
.end method

.method static synthetic -set2(Landroid/app/ExitTransitionCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->beginTransitions()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->startExitTransition()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p7, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/SharedElementCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, p2, p4, p3, p7}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    .line 69
    invoke-virtual {p0, p5, p6}, Landroid/app/ExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->stripOffscreenViews()V

    .line 71
    if-eqz p7, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    .line 72
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 67
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private beginTransitions()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 370
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 371
    .local v1, "sharedElementTransition":Landroid/transition/Transition;
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v3

    .line 373
    .local v3, "viewsTransition":Landroid/transition/Transition;
    invoke-static {v1, v3}, Landroid/app/ExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    .line 374
    .local v2, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 375
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 377
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 378
    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p0, v4, v4}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 381
    :cond_0
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 382
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 383
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 384
    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {p0, v5, v4}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 387
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 369
    :goto_0
    return-void

    .line 389
    :cond_2
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    goto :goto_0
.end method

.method private captureExitSharedElementsState()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 405
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 407
    .local v5, "bounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 408
    .local v4, "matrix":Landroid/graphics/Matrix;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 409
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 411
    .local v7, "sharedElementState":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 412
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 408
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .local v1, "view":Landroid/view/View;
    move-object v0, p0

    .line 415
    invoke-virtual/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 418
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "sharedElementState":Landroid/os/Bundle;
    :cond_1
    return-object v3
.end method

.method private delayCancel()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    :cond_0
    return-void
.end method

.method private fadeOutBackground()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 293
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 296
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    const-string/jumbo v2, "alpha"

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 300
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/ExitTransitionCoordinator$8;

    invoke-direct {v3, p0}, Landroid/app/ExitTransitionCoordinator$8;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getFadeDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 311
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 292
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v1    # "decor":Landroid/view/ViewGroup;
    :cond_1
    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    goto :goto_0
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 477
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    .line 478
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    .line 480
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 481
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 482
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 485
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 476
    return-void
.end method

.method private finishIfNecessary()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    .line 467
    if-eqz v0, :cond_1

    .line 469
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    .line 471
    :cond_1
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_2

    .line 472
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 466
    :cond_2
    return-void
.end method

.method private getExitTransition()Landroid/transition/Transition;
    .locals 4

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "viewsTransition":Landroid/transition/Transition;
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    .end local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 324
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    .line 343
    :goto_1
    return-object v1

    .line 321
    .restart local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v1

    .local v1, "viewsTransition":Landroid/transition/Transition;
    goto :goto_0

    .line 326
    .end local v1    # "viewsTransition":Landroid/transition/Transition;
    :cond_2
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 327
    .local v0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/app/ExitTransitionCoordinator$9;

    invoke-direct {v2, p0, p0, v0}, Landroid/app/ExitTransitionCoordinator$9;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_1
.end method

.method private getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 351
    .end local v0    # "sharedElementTransition":Landroid/transition/Transition;
    :cond_0
    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 366
    :goto_0
    return-object v0

    .line 354
    :cond_1
    new-instance v1, Landroid/app/ExitTransitionCoordinator$10;

    invoke-direct {v1, p0, p0}, Landroid/app/ExitTransitionCoordinator$10;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 364
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private hideSharedElements()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 194
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;->hideSharedElements()V

    .line 197
    :cond_0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 200
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    .line 201
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    .line 192
    return-void
.end method

.method private notifyExitComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    .line 456
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 457
    iput-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 458
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 459
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 460
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 462
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    .line 453
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private sharedElementExitBack()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 142
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 145
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 140
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v1, Landroid/app/ExitTransitionCoordinator$1;

    invoke-direct {v1, p0, v0}, Landroid/app/ExitTransitionCoordinator$1;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startExitTransition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 281
    .local v1, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 282
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p0, v3, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 284
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 285
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 286
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 279
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    goto :goto_0
.end method

.method private startSharedElementExit(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "decorView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 159
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 160
    .local v1, "transition":Landroid/transition/Transition;
    new-instance v2, Landroid/app/ExitTransitionCoordinator$2;

    invoke-direct {v2, p0}, Landroid/app/ExitTransitionCoordinator$2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 169
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 170
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    .local v0, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 172
    new-instance v3, Landroid/app/ExitTransitionCoordinator$3;

    invoke-direct {v3, p0, p1, v0}, Landroid/app/ExitTransitionCoordinator$3;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 171
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 180
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 181
    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 182
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 186
    :cond_0
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 187
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 188
    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    .line 189
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 158
    return-void
.end method

.method private stopCancel()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    .line 491
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 492
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 494
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 496
    :cond_0
    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 497
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    .line 489
    return-void
.end method

.method protected getSharedElementTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected isReadyToNotify()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notifyComplete()V
    .locals 6

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isReadyToNotify()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    if-nez v2, :cond_2

    .line 429
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    .line 430
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    .line 431
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v2, :cond_1

    .line 432
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    const/16 v4, 0x67

    invoke-virtual {v2, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 433
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 436
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 437
    .local v1, "sharedElementBundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 438
    new-instance v5, Landroid/app/ExitTransitionCoordinator$11;

    invoke-direct {v5, p0, v0, v1}, Landroid/app/ExitTransitionCoordinator$11;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 437
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    goto :goto_0

    .line 448
    .end local v0    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v1    # "sharedElementBundle":Landroid/os/Bundle;
    :cond_2
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    goto :goto_0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x6a

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    .line 84
    const-string/jumbo v0, "android:remoteReceiver"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 85
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 87
    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    .line 94
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->hideSharedElements()V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    goto :goto_0

    .line 103
    :pswitch_4
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    .line 104
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V

    goto :goto_0

    .line 107
    :pswitch_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    .line 108
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onTransitionsComplete()V
    .locals 0

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 422
    return-void
.end method

.method public resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 126
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 128
    invoke-virtual {p0, v3, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 131
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    .line 132
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 133
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 137
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 125
    return-void
.end method

.method setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    .line 75
    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    .line 399
    :goto_0
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    .line 401
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->captureExitSharedElementsState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public startExit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 205
    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v1, :cond_1

    .line 206
    iput-boolean v2, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    .line 207
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    .line 208
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 209
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 213
    new-instance v1, Landroid/app/ExitTransitionCoordinator$4;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$4;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 204
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public startExit(ILandroid/content/Intent;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-boolean v4, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v4, :cond_3

    .line 228
    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    .line 229
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    .line 230
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 231
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 234
    :cond_0
    new-instance v4, Landroid/app/ExitTransitionCoordinator$5;

    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$5;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    iput-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    .line 241
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    .line 242
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 243
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 247
    const/16 v5, 0x17

    .line 246
    if-lt v4, v5, :cond_4

    .line 248
    .local v3, "targetsM":Z
    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 250
    .local v2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-static {v4, p0, v2, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 252
    .local v1, "options":Landroid/app/ActivityOptions;
    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    new-instance v5, Landroid/app/ExitTransitionCoordinator$6;

    invoke-direct {v5, p0}, Landroid/app/ExitTransitionCoordinator$6;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 260
    new-instance v4, Landroid/app/ExitTransitionCoordinator$7;

    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$7;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 226
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .end local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "targetsM":Z
    :cond_3
    return-void

    .line 246
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 249
    .restart local v3    # "targetsM":Z
    :cond_5
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    .restart local v2    # "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 275
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    .line 269
    :cond_0
    return-void
.end method
