.class Landroid/app/EnterTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "EnterTransitionCoordinator.java"


# static fields
.field private static final MIN_ANIMATION_FRAMES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EnterTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAreViewsReady:Z

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mEnterViewsTransition:Landroid/transition/Transition;

.field private mHasStopped:Z

.field private mIsCanceled:Z

.field private final mIsCrossTask:Z

.field private mIsExitTransitionComplete:Z

.field private mIsReadyForTransition:Z

.field private mIsViewsTransitionStarted:Z

.field private mSharedElementTransitionStarted:Z

.field private mSharedElementsBundle:Landroid/os/Bundle;

.field private mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mWasOpaque:Z


# direct methods
.method static synthetic -get0(Landroid/app/EnterTransitionCoordinator;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    return v0
.end method

.method static synthetic -set0(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-object p1
.end method

.method static synthetic -set1(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .locals 1
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "isReturning"    # Z
    .param p5, "isCrossTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/ResultReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p3, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 67
    if-eqz p4, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    :goto_0
    invoke-static {p1, v2}, Landroid/app/EnterTransitionCoordinator;->getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;

    move-result-object v2

    .line 66
    invoke-direct {p0, v3, p3, v2, p4}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    .line 68
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 69
    iput-boolean p5, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    .line 70
    invoke-virtual {p0, p2}, Landroid/app/EnterTransitionCoordinator;->setResultReceiver(Landroid/os/ResultReceiver;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->prepareEnter()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v1, "resultReceiverBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android:remoteReceiver"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 76
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 78
    new-instance v3, Landroid/app/EnterTransitionCoordinator$1;

    invoke-direct {v3, p0, v0}, Landroid/app/EnterTransitionCoordinator$1;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 65
    :cond_1
    return-void

    .line 67
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "resultReceiverBundle":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private allowOverlappingTransitions()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :goto_0
    return v0

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0
.end method

.method private beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;
    .locals 7
    .param p1, "decorView"    # Landroid/view/ViewGroup;
    .param p2, "startEnterTransition"    # Z
    .param p3, "startSharedElementTransition"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "sharedElementTransition":Landroid/transition/Transition;
    if-eqz p3, :cond_1

    .line 495
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    .line 498
    .end local v0    # "sharedElementTransition":Landroid/transition/Transition;
    :cond_0
    if-nez v0, :cond_6

    .line 499
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionStarted()V

    .line 500
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 516
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 517
    .local v3, "viewsTransition":Landroid/transition/Transition;
    if-eqz p2, :cond_3

    .line 518
    iput-boolean v6, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 519
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 525
    .end local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_2
    :goto_1
    if-nez v3, :cond_8

    .line 526
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 550
    :cond_3
    :goto_2
    invoke-static {v0, v3}, Landroid/app/EnterTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    .line 551
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_9

    .line 552
    new-instance v4, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;

    invoke-direct {v4, p0}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 553
    if-eqz p2, :cond_4

    .line 554
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 556
    :cond_4
    invoke-static {p1, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 557
    if-eqz p2, :cond_5

    .line 558
    invoke-virtual {p0, v5, v5}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 560
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 564
    :goto_3
    return-object v1

    .line 502
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_6
    new-instance v4, Landroid/app/EnterTransitionCoordinator$6;

    invoke-direct {v4, p0}, Landroid/app/EnterTransitionCoordinator$6;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v0, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    .line 520
    .restart local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_7
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Landroid/app/EnterTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v3

    .line 521
    .local v3, "viewsTransition":Landroid/transition/Transition;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v4, :cond_2

    .line 522
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->stripOffscreenViews()V

    goto :goto_1

    .line 528
    .end local v3    # "viewsTransition":Landroid/transition/Transition;
    :cond_8
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 529
    .local v2, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Landroid/app/EnterTransitionCoordinator$7;

    invoke-direct {v4, p0, p0, v2}, Landroid/app/EnterTransitionCoordinator$7;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_2

    .line 562
    .end local v2    # "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1    # "transition":Landroid/transition/Transition;
    :cond_9
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->transitionStarted()V

    goto :goto_3
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_2

    .line 310
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 311
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-eqz v0, :cond_3

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 317
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    invoke-direct {p0, v2}, Landroid/app/EnterTransitionCoordinator;->startSharedElementTransition(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    .line 308
    :cond_2
    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static getListener(Landroid/app/Activity;Z)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isReturning"    # Z

    .prologue
    .line 228
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    goto :goto_0
.end method

.method private makeOpaque()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 667
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 668
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 671
    :cond_0
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 666
    :cond_1
    return-void
.end method

.method private mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 166
    .local v4, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 167
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 170
    :cond_0
    if-eqz p1, :cond_3

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 172
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, "acceptedName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 176
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 177
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 182
    .end local v0    # "acceptedName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "localName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-object v4
.end method

.method private onTakeSharedElements()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 449
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 450
    :cond_0
    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 453
    .local v1, "sharedElementState":Landroid/os/Bundle;
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 454
    new-instance v0, Landroid/app/EnterTransitionCoordinator$5;

    invoke-direct {v0, p0, v1}, Landroid/app/EnterTransitionCoordinator$5;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    .line 477
    .local v0, "listener":Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v2, :cond_2

    .line 478
    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 448
    :goto_0
    return-void

    .line 480
    :cond_2
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    goto :goto_0
.end method

.method private static removeNullViews(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 440
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 441
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestLayoutForSharedElements()V
    .locals 3

    .prologue
    .line 485
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 486
    .local v1, "numSharedElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 487
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method private sendSharedElementDestination()V
    .locals 6

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 188
    .local v1, "decorView":Landroid/view/View;
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 189
    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    .line 204
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v3

    .line 205
    .local v3, "state":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    .line 206
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v5, 0x6b

    invoke-virtual {v4, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 222
    .end local v3    # "state":Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 185
    :cond_2
    return-void

    .line 190
    :cond_3
    if-nez v1, :cond_4

    .line 191
    const/4 v0, 0x1

    .local v0, "allReady":Z
    goto :goto_0

    .line 193
    .end local v0    # "allReady":Z
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .line 194
    .local v0, "allReady":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 196
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "allReady":Z
    goto :goto_0

    .line 193
    .end local v0    # "allReady":Z
    .end local v2    # "i":I
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 195
    .local v0, "allReady":Z
    .restart local v2    # "i":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 207
    .end local v0    # "allReady":Z
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 209
    new-instance v5, Landroid/app/EnterTransitionCoordinator$3;

    invoke-direct {v5, p0, v1}, Landroid/app/EnterTransitionCoordinator$3;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/View;)V

    .line 208
    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1
.end method

.method private sharedElementTransitionStarted()V
    .locals 2

    .prologue
    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 578
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    if-eqz v0, :cond_0

    .line 579
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/EnterTransitionCoordinator;->send(ILandroid/os/Bundle;)V

    .line 576
    :cond_0
    return-void
.end method

.method private startEnterTransition(Landroid/transition/Transition;)V
    .locals 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 585
    .local v1, "decorView":Landroid/view/ViewGroup;
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 587
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0xff

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 591
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getFadeDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 592
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/EnterTransitionCoordinator$8;

    invoke-direct {v3, p0}, Landroid/app/EnterTransitionCoordinator$8;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 583
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 599
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p1, :cond_2

    .line 600
    new-instance v2, Landroid/app/EnterTransitionCoordinator$9;

    invoke-direct {v2, p0}, Landroid/app/EnterTransitionCoordinator$9;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {p1, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    .line 608
    :cond_2
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    goto :goto_0
.end method

.method private startEnterTransitionOnly()V
    .locals 1

    .prologue
    .line 715
    new-instance v0, Landroid/app/EnterTransitionCoordinator$11;

    invoke-direct {v0, p0}, Landroid/app/EnterTransitionCoordinator$11;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method private startRejectedAnimations(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 682
    :cond_0
    return-void

    .line 684
    :cond_1
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 685
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 686
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    .line 687
    .local v4, "overlay":Landroid/view/ViewGroupOverlay;
    const/4 v0, 0x0

    .line 688
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 689
    .local v3, "numRejected":I
    const/4 v2, 0x0

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 690
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 691
    .local v5, "snapshot":Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 692
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 693
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "snapshot":Landroid/view/View;
    :cond_2
    new-instance v6, Landroid/app/EnterTransitionCoordinator$10;

    invoke-direct {v6, p0, v1, p1}, Landroid/app/EnterTransitionCoordinator$10;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 680
    .end local v2    # "i":I
    .end local v3    # "numRejected":I
    .end local v4    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_3
    return-void
.end method

.method private startSharedElementTransition(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "sharedElementState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 377
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 378
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 379
    return-void

    .line 382
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    .local v2, "rejectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 384
    invoke-virtual {p0, p1, v2}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    .line 385
    .local v3, "rejectedSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v8, :cond_1

    .line 386
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v8, v3}, Landroid/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 388
    :cond_1
    invoke-static {v3}, Landroid/app/EnterTransitionCoordinator;->removeNullViews(Ljava/util/ArrayList;)V

    .line 389
    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V

    .line 393
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 392
    invoke-virtual {p0, p1, v8}, Landroid/app/EnterTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    .line 394
    .local v4, "sharedElementSnapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 395
    invoke-virtual {p0, v4}, Landroid/app/EnterTransitionCoordinator;->scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V

    .line 397
    invoke-virtual {p0, p1, v4}, Landroid/app/EnterTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 398
    .local v1, "originalImageViewState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->requestLayoutForSharedElements()V

    .line 400
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v8, :cond_5

    :cond_2
    const/4 v5, 0x0

    .line 401
    .local v5, "startEnterTransition":Z
    :goto_0
    const/4 v6, 0x1

    .line 402
    .local v6, "startSharedElementTransition":Z
    invoke-virtual {p0, v11}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 403
    invoke-virtual {p0, v11}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 404
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->pauseInput()V

    .line 405
    invoke-direct {p0, v0, v5, v6}, Landroid/app/EnterTransitionCoordinator;->beginTransition(Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v7

    .line 407
    .local v7, "transition":Landroid/transition/Transition;
    invoke-virtual {p0, v10}, Landroid/app/EnterTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    .line 408
    invoke-virtual {p0, v10}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 410
    if-eqz v5, :cond_3

    .line 411
    invoke-direct {p0, v7}, Landroid/app/EnterTransitionCoordinator;->startEnterTransition(Landroid/transition/Transition;)V

    .line 414
    :cond_3
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-static {v8, v1}, Landroid/app/EnterTransitionCoordinator;->setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 416
    iget-object v8, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v8, :cond_4

    .line 419
    new-instance v8, Landroid/app/EnterTransitionCoordinator$4;

    invoke-direct {v8, p0}, Landroid/app/EnterTransitionCoordinator$4;-><init>(Landroid/app/EnterTransitionCoordinator;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 376
    :cond_4
    return-void

    .line 400
    .end local v5    # "startEnterTransition":Z
    .end local v6    # "startSharedElementTransition":Z
    .end local v7    # "transition":Landroid/transition/Transition;
    :cond_5
    const/4 v5, 0x1

    .restart local v5    # "startEnterTransition":Z
    goto :goto_0
.end method

.method private triggerViewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    if-eqz v1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    .line 143
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 145
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    :cond_1
    new-instance v1, Landroid/app/EnterTransitionCoordinator$2;

    invoke-direct {v1, p0, v0, p1}, Landroid/app/EnterTransitionCoordinator$2;-><init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 158
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 138
    :goto_0
    return-void

    .line 147
    :cond_2
    invoke-virtual {p0, p1}, Landroid/app/EnterTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelEnter()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 647
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->setGhostVisibility(I)V

    .line 648
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mHasStopped:Z

    .line 649
    iput-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 650
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    .line 651
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->cancelPendingTransitions()Z

    move-result v0

    return v0
.end method

.method protected clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 657
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    .line 658
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 659
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 661
    iput-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 663
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    .line 655
    return-void
.end method

.method public forceViewsToAppear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 266
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    if-nez v1, :cond_3

    .line 270
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 271
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 272
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    iput-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mViewsReadyListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 276
    :cond_1
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 277
    invoke-virtual {p0, v5, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 278
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 281
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 282
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 283
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 301
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :goto_0
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mAreViewsReady:Z

    .line 302
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 304
    iput-object v4, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 265
    :cond_2
    return-void

    .line 285
    :cond_3
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-nez v1, :cond_4

    .line 286
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 287
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    .line 288
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 289
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->sharedElementTransitionComplete()V

    .line 292
    :cond_4
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    if-nez v1, :cond_5

    .line 293
    iput-boolean v3, p0, Landroid/app/EnterTransitionCoordinator;->mIsViewsTransitionStarted:Z

    .line 294
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 295
    invoke-virtual {p0, v5, v3}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 296
    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 297
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->viewsTransitionComplete()V

    .line 299
    :cond_5
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->cancelPendingTransitions()Z

    goto :goto_0
.end method

.method public getEnterViewsTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mEnterViewsTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method protected getSharedElementTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 366
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 367
    return-object v1

    .line 369
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    .line 372
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method protected getViewsTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 354
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 355
    return-object v1

    .line 357
    :cond_0
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    .line 360
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method isCrossTask()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCrossTask:Z

    return v0
.end method

.method public isReturning()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    return v0
.end method

.method public isWaitingForRemoteExit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 112
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 236
    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    .line 237
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    goto :goto_0

    .line 241
    :pswitch_2
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsExitTransitionComplete:Z

    .line 243
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementTransitionStarted:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->onRemoteExitTransitionComplete()V

    goto :goto_0

    .line 249
    :pswitch_3
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->cancel()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRemoteExitTransitionComplete()V
    .locals 1

    .prologue
    .line 709
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->allowOverlappingTransitions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V

    .line 708
    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 570
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 571
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 572
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 568
    :cond_0
    return-void
.end method

.method protected prepareEnter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 331
    .local v1, "decorView":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 332
    :cond_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 337
    :cond_2
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-nez v2, :cond_4

    .line 338
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    .line 339
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return-void

    .line 347
    :cond_4
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 616
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_2

    .line 617
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 618
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 628
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->makeOpaque()V

    .line 629
    iput-boolean v4, p0, Landroid/app/EnterTransitionCoordinator;->mIsCanceled:Z

    .line 630
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 631
    iput-object v3, p0, Landroid/app/EnterTransitionCoordinator;->mActivity:Landroid/app/Activity;

    .line 632
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsFromOverlay()V

    .line 633
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 634
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 635
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 637
    :cond_1
    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v4}, Landroid/app/EnterTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 638
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->clearState()V

    .line 613
    return-void

    .line 619
    :cond_2
    iget-boolean v2, p0, Landroid/app/EnterTransitionCoordinator;->mWasOpaque:Z

    if-eqz v2, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 621
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 623
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 97
    .local v1, "remap":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 98
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 99
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v1, 0x1

    .line 105
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/app/EnterTransitionCoordinator;->mapNamedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    .line 95
    :goto_1
    return-void

    .line 108
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroid/app/EnterTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/EnterTransitionCoordinator;->triggerViewsReady(Landroid/util/ArrayMap;)V

    goto :goto_1
.end method

.method protected viewsReady(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReadyForTransition:Z

    .line 124
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/EnterTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Landroid/app/EnterTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->sendSharedElementDestination()V

    .line 133
    :goto_0
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator;->mSharedElementsBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0}, Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V

    .line 121
    :cond_1
    return-void

    .line 131
    :cond_2
    invoke-virtual {p0}, Landroid/app/EnterTransitionCoordinator;->moveSharedElementsToOverlay()V

    goto :goto_0
.end method
