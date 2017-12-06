.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$FlymeInjector;,
        Landroid/app/FragmentManagerImpl$1;,
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/app/FragmentContainer;

.field mController:Landroid/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    .line 401
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 477
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 478
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 480
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 401
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1433
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1435
    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    .line 1434
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1438
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 513
    if-nez p0, :cond_0

    .line 514
    return v6

    .line 516
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    move-object v2, p0

    .line 517
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 518
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 519
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 520
    const-string/jumbo v4, "alpha"

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    return v7

    .line 519
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 525
    check-cast p0, Landroid/animation/AnimatorSet;

    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 526
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 527
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 528
    return v7

    .line 526
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_4
    return v6
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 2226
    const/4 v0, 0x0

    .line 2227
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 2238
    :goto_0
    return v0

    .line 2229
    :sswitch_0
    const/16 v0, 0x2002

    .line 2230
    goto :goto_0

    .line 2232
    :sswitch_1
    const/16 v0, 0x1001

    .line 2233
    goto :goto_0

    .line 2235
    :sswitch_2
    const/16 v0, 0x1003

    .line 2236
    goto :goto_0

    .line 2227
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 548
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 549
    :cond_0
    return-void

    .line 551
    :cond_1
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 547
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 536
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 537
    :cond_0
    return v0

    .line 539
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_2

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    .line 539
    if-eqz v1, :cond_2

    .line 541
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v0

    .line 539
    :cond_2
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    const/4 v5, 0x0

    .line 488
    const-string/jumbo v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v1, Landroid/util/LogWriter;

    const-string/jumbo v3, "FragmentManager"

    const/4 v4, 0x6

    invoke-direct {v1, v4, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 490
    .local v1, "logw":Landroid/util/LogWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v5, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 491
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v3, :cond_0

    .line 492
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string/jumbo v4, "  "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 509
    throw p1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 497
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Fragment manager state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :try_start_1
    const-string/jumbo v3, "  "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2, v4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 503
    :catch_1
    move-exception v0

    .line 504
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 505
    const-string/jumbo v3, "FragmentManager"

    const-string/jumbo v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 2243
    const/4 v0, -0x1

    .line 2244
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 2261
    :goto_0
    return v0

    .line 2246
    :sswitch_0
    if-eqz p1, :cond_0

    .line 2247
    const/4 v0, 0x0

    goto :goto_0

    .line 2248
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2251
    :sswitch_1
    if-eqz p1, :cond_1

    .line 2252
    const/4 v0, 0x2

    goto :goto_0

    .line 2253
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 2256
    :sswitch_2
    if-eqz p1, :cond_2

    .line 2257
    const/4 v0, 0x4

    goto :goto_0

    .line 2258
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2244
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1618
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1614
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1235
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1238
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1240
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1241
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1247
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1248
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1250
    :cond_3
    if-eqz p2, :cond_4

    .line 1251
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 1234
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 632
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1470
    monitor-enter p0

    .line 1471
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1472
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1475
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1476
    .local v0, "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1478
    return v0

    .line 1481
    .end local v0    # "index":I
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1482
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1484
    return v0

    .line 1470
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .locals 2
    .param p2, "container"    # Landroid/app/FragmentContainer;
    .param p3, "parent"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2022
    .local p1, "host":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 2024
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 2025
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 2021
    return-void
.end method

.method public attachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1355
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_5

    .line 1357
    iput-boolean v5, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1358
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_5

    .line 1359
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1362
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1363
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1365
    :cond_2
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1368
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1369
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1371
    :cond_4
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1354
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 558
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1336
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1338
    iput-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1339
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_4

    .line 1341
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1342
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1345
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1346
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1348
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1349
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1335
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2038
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2039
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2037
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2098
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2099
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2100
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2101
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2102
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2099
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2097
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2192
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2194
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2195
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2196
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2197
    const/4 v2, 0x1

    return v2

    .line 2193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2202
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2033
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2034
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2032
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2131
    const/4 v3, 0x0

    .line 2132
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 2133
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 2134
    const/4 v1, 0x0

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2135
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2136
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 2137
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2138
    const/4 v3, 0x1

    .line 2139
    if-nez v2, :cond_0

    .line 2140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2142
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2148
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 2149
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2150
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2151
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2149
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2152
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    goto :goto_2

    .line 2157
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2159
    return v3
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2065
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2066
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2067
    invoke-virtual {p0, v2, v2}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2068
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 2069
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 2070
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 2064
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .prologue
    .line 2061
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2060
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 2109
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2111
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2112
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2113
    invoke-virtual {v0}, Landroid/app/Fragment;->performLowMemory()V

    .line 2110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2108
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2074
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2075
    return-void

    .line 2077
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2078
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2079
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 2080
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 2077
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2073
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2178
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2180
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2181
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2182
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2183
    const/4 v2, 0x1

    return v2

    .line 2179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2188
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2206
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2208
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2209
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2210
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2205
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 2053
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2052
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 2086
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2087
    return-void

    .line 2089
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2090
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2091
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 2092
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 2089
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2085
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2163
    const/4 v2, 0x0

    .line 2164
    .local v2, "show":Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2166
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2167
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2168
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2169
    const/4 v2, 0x1

    .line 2165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2174
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2048
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2049
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2047
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2043
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2044
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2042
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 2057
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2056
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 2120
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2122
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2123
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 2124
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    .line 2121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2119
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 4

    .prologue
    .line 1591
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v3, :cond_2

    .line 1592
    const/4 v2, 0x0

    .line 1593
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    .end local v2    # "loadersRunning":Z
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1594
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1595
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_0

    .line 1596
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1593
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1599
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_1
    if-nez v2, :cond_2

    .line 1600
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1601
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1590
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 707
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 711
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 712
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 713
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    const-string/jumbo v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 717
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 718
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 719
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 720
    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 716
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 727
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 728
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 729
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 730
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 732
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 733
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 734
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 739
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 740
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 741
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 742
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 744
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 745
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 751
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 752
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 753
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 754
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 756
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 757
    .local v1, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 758
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 755
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 764
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 765
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 766
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 767
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    .line 768
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 770
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 771
    .restart local v1    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 772
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 777
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 778
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    .line 783
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 784
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 785
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    .line 786
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 788
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 789
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 790
    const-string/jumbo v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 764
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 795
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 798
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v6, :cond_8

    .line 799
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 801
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    const-string/jumbo v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 803
    const-string/jumbo v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 804
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_9

    .line 805
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 808
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    :cond_a
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 813
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1451
    if-nez p2, :cond_0

    .line 1452
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1454
    :cond_0
    monitor-enter p0

    .line 1455
    :try_start_0
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_2

    .line 1456
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1458
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1461
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1463
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1464
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    .line 1450
    return-void
.end method

.method public execPendingActions()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1549
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_0

    .line 1550
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Recursive entry to executePendingTransactions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1553
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1554
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Must be called from main thread of process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1557
    :cond_1
    const/4 v0, 0x0

    .line 1562
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1563
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    monitor-exit p0

    .line 1585
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1587
    return v0

    .line 1567
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1568
    .local v2, "numActions":I
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_5

    .line 1569
    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1571
    :cond_5
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1572
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1573
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1576
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1577
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1578
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1579
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aput-object v5, v3, v1

    .line 1577
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1562
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1581
    .restart local v1    # "i":I
    .restart local v2    # "numActions":I
    :cond_6
    iput-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1582
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public execSingleAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1526
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1534
    :cond_1
    if-nez p2, :cond_2

    .line 1535
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1538
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1539
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1542
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1525
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1377
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1379
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1380
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1381
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 1382
    return-object v0

    .line 1379
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1386
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1388
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1389
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1390
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    .line 1391
    return-object v0

    .line 1388
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1395
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1399
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1401
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1402
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1403
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    return-object v0

    .line 1401
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1408
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 1410
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1411
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1412
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    return-object v0

    .line 1410
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1417
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1421
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1422
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1423
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1424
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1425
    return-object v0

    .line 1422
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1429
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1515
    monitor-enter p0

    .line 1516
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1517
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1520
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1514
    return-void

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 627
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 656
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 657
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    .line 658
    return-object v3

    .line 660
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 661
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 662
    const-string/jumbo v4, ": index "

    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 664
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 665
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_2

    .line 666
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 667
    const-string/jumbo v4, ": index "

    .line 666
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 669
    :cond_2
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .prologue
    .line 2359
    return-object p0
.end method

.method public hideFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    .line 1282
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_3

    .line 1284
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1285
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1286
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1288
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_4

    .line 1289
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1292
    move-object v1, p1

    .line 1293
    .local v1, "finalFragment":Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    invoke-direct {v2, p0, p1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1301
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1302
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1307
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "finalFragment":Landroid/app/Fragment;
    :cond_1
    :goto_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    .line 1308
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1310
    :cond_2
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1281
    :cond_3
    return-void

    .line 1304
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_4
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 2218
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2219
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 2217
    :goto_0
    return-void

    .line 2221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 874
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 821
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    .line 820
    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 822
    .local v2, "animObj":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    .line 823
    return-object v2

    .line 826
    :cond_0
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_1

    .line 827
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 828
    .local v1, "anim":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 829
    return-object v1

    .line 833
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_1
    if-nez p2, :cond_2

    .line 834
    return-object v8

    .line 837
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v4

    .line 838
    .local v4, "styleIndex":I
    if-gez v4, :cond_3

    .line 839
    return-object v8

    .line 842
    :cond_3
    if-nez p4, :cond_4

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 843
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 845
    :cond_4
    if-nez p4, :cond_5

    .line 846
    return-object v8

    .line 849
    :cond_5
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 850
    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    .line 849
    invoke-virtual {v5, p4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 851
    .local v3, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 852
    .local v0, "anim":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 854
    if-nez v0, :cond_6

    .line 855
    return-object v8

    .line 858
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/app/FragmentManagerImpl$FlymeInjector;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    return-object v5
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 1201
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1202
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1206
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1209
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1210
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    :goto_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_3
    return-void

    .line 1213
    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1214
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1220
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1221
    return-void

    .line 1224
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1229
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    .line 1219
    return-void
.end method

.method moveToState(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1157
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No activity"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_0
    if-nez p4, :cond_1

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_1

    .line 1162
    return-void

    .line 1165
    :cond_1
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1166
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1167
    const/4 v7, 0x0

    .line 1168
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    .end local v7    # "loadersRunning":Z
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1169
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1170
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1171
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1172
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v7, v0

    .line 1168
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1178
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_3
    if-nez v7, :cond_4

    .line 1179
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1182
    :cond_4
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 1183
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 1184
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1156
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1153
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1152
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1149
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1148
    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 14
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 879
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 884
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    .line 885
    const/16 p2, 0x1

    .line 887
    :cond_2
    iget-boolean v2, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v0, v2, :cond_3

    .line 889
    iget v0, p1, Landroid/app/Fragment;->mState:I

    move/from16 p2, v0

    .line 893
    :cond_3
    iget-boolean v2, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_4

    iget v2, p1, Landroid/app/Fragment;->mState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_4

    .line 894
    const/16 p2, 0x3

    .line 896
    :cond_4
    iget v2, p1, Landroid/app/Fragment;->mState:I

    move/from16 v0, p2

    if-ge v2, v0, :cond_21

    .line 900
    iget-boolean v2, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Landroid/app/Fragment;->mInLayout:Z

    if-eqz v2, :cond_9

    .line 903
    :cond_5
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v2, :cond_6

    .line 908
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 909
    iget v4, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 911
    :cond_6
    iget v2, p1, Landroid/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1141
    :cond_7
    :goto_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_8

    .line 1142
    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToState: Fragment state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not updated inline; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1143
    const-string/jumbo v4, "expected state "

    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1143
    const-string/jumbo v4, " found "

    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1143
    iget v4, p1, Landroid/app/Fragment;->mState:I

    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    move/from16 v0, p2

    iput v0, p1, Landroid/app/Fragment;->mState:I

    .line 878
    :cond_8
    return-void

    .line 901
    :cond_9
    return-void

    .line 913
    :pswitch_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_a
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 915
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 916
    const-string/jumbo v3, "android:view_state"

    .line 915
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 917
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 918
    const-string/jumbo v3, "android:target_state"

    .line 917
    invoke-virtual {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 919
    iget-object v2, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v2, :cond_b

    .line 920
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 921
    const-string/jumbo v3, "android:target_req_state"

    const/4 v4, 0x0

    .line 920
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 923
    :cond_b
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 924
    const-string/jumbo v3, "android:user_visible_hint"

    const/4 v4, 0x1

    .line 923
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 925
    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_c

    .line 926
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 927
    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_c

    .line 928
    const/16 p2, 0x3

    .line 932
    :cond_c
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v2, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 933
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 934
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v2, :cond_d

    .line 935
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v2, v2, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 934
    :goto_1
    iput-object v2, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 936
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/app/Fragment;->mCalled:Z

    .line 937
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 938
    iget-boolean v2, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v2, :cond_e

    .line 939
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 940
    const-string/jumbo v4, " did not call through to super.onAttach()"

    .line 939
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_d
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v2

    goto :goto_1

    .line 942
    :cond_e
    iget-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v2, :cond_1e

    .line 943
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    .line 948
    :goto_2
    iget-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_1f

    .line 949
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 954
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    .line 955
    iget-boolean v2, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v2, :cond_10

    .line 960
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 959
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 960
    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v4, 0x0

    .line 959
    invoke-virtual {p1, v2, v4, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 961
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 962
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 963
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_f

    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 964
    :cond_f
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 968
    :cond_10
    :pswitch_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_19

    .line 969
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_11
    iget-boolean v2, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v2, :cond_17

    .line 971
    const/4 v9, 0x0

    .line 972
    .local v9, "container":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_13

    .line 973
    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 974
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 977
    const-string/jumbo v4, " for a container view with no id"

    .line 975
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 979
    :cond_12
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v3, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "container":Landroid/view/ViewGroup;
    check-cast v9, Landroid/view/ViewGroup;

    .line 980
    .local v9, "container":Landroid/view/ViewGroup;
    if-nez v9, :cond_13

    iget-boolean v2, p1, Landroid/app/Fragment;->mRestored:Z

    if-eqz v2, :cond_20

    .line 994
    .end local v9    # "container":Landroid/view/ViewGroup;
    :cond_13
    :goto_4
    iput-object v9, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 996
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 995
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 996
    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 995
    invoke-virtual {p1, v2, v9, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 997
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_17

    .line 998
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 999
    if-eqz v9, :cond_15

    .line 1000
    const/4 v2, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v8

    .line 1002
    .local v8, "anim":Landroid/animation/Animator;
    if-eqz v8, :cond_14

    .line 1003
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1004
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v8}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1005
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 1007
    :cond_14
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1009
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_15
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_16

    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    :cond_16
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1014
    :cond_17
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1015
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 1016
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1018
    :cond_18
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1021
    :cond_19
    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, p2

    if-le v0, v2, :cond_1a

    .line 1022
    const/4 v2, 0x3

    iput v2, p1, Landroid/app/Fragment;->mState:I

    .line 1025
    :cond_1a
    :pswitch_3
    const/4 v2, 0x3

    move/from16 v0, p2

    if-le v0, v2, :cond_1c

    .line 1026
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_1b
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    .line 1030
    :cond_1c
    :pswitch_4
    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_7

    .line 1031
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveto RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_1d
    invoke-virtual {p1}, Landroid/app/Fragment;->performResume()V

    .line 1034
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1035
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_0

    .line 945
    :cond_1e
    iget-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v2, p1}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    goto/16 :goto_2

    .line 951
    :cond_1f
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 952
    const/4 v2, 0x1

    iput v2, p1, Landroid/app/Fragment;->mState:I

    goto/16 :goto_3

    .line 983
    .restart local v9    # "container":Landroid/view/ViewGroup;
    :cond_20
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 987
    .local v12, "resName":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 989
    iget v4, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 989
    const-string/jumbo v4, " ("

    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 991
    const-string/jumbo v4, ") for fragment "

    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto/16 :goto_4

    .line 984
    .end local v12    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 985
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v12, "unknown"

    .restart local v12    # "resName":Ljava/lang/String;
    goto :goto_5

    .line 1038
    .end local v9    # "container":Landroid/view/ViewGroup;
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v12    # "resName":Ljava/lang/String;
    :cond_21
    iget v2, p1, Landroid/app/Fragment;->mState:I

    move/from16 v0, p2

    if-le v2, v0, :cond_7

    .line 1039
    iget v2, p1, Landroid/app/Fragment;->mState:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 1097
    :cond_22
    :goto_6
    :pswitch_5
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ge v0, v2, :cond_7

    .line 1098
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_23

    .line 1099
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v2, :cond_23

    .line 1106
    iget-object v8, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 1107
    .restart local v8    # "anim":Landroid/animation/Animator;
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 1108
    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    .line 1111
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_23
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v2, :cond_2e

    .line 1116
    move/from16 v0, p2

    iput v0, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 1117
    const/16 p2, 0x1

    goto/16 :goto_0

    .line 1041
    :pswitch_6
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ge v0, v2, :cond_25

    .line 1042
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_24
    invoke-virtual {p1}, Landroid/app/Fragment;->performPause()V

    .line 1046
    :cond_25
    :pswitch_7
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ge v0, v2, :cond_27

    .line 1047
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_26
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    .line 1052
    :cond_27
    :pswitch_8
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_22

    .line 1053
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_28

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_28
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_29

    .line 1057
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2, p1}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_29

    .line 1058
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1061
    :cond_29
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    .line 1062
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2c

    iget-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2c

    .line 1063
    const/4 v8, 0x0

    .line 1064
    .local v8, "anim":Landroid/animation/Animator;
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v2, :cond_2a

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v2, :cond_2d

    .line 1068
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_2a
    :goto_7
    if-eqz v8, :cond_2b

    .line 1069
    iget-object v9, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1070
    .restart local v9    # "container":Landroid/view/ViewGroup;
    iget-object v13, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1071
    .local v13, "view":Landroid/view/View;
    move-object v11, p1

    .line 1072
    .local v11, "fragment":Landroid/app/Fragment;
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1073
    iput-object v8, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 1074
    move/from16 v0, p2

    iput v0, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 1075
    new-instance v2, Landroid/app/FragmentManagerImpl$5;

    invoke-direct {v2, p0, v9, v13, p1}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1086
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1087
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v2, v8}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1088
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    .line 1091
    .end local v9    # "container":Landroid/view/ViewGroup;
    .end local v11    # "fragment":Landroid/app/Fragment;
    .end local v13    # "view":Landroid/view/View;
    :cond_2b
    iget-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1093
    :cond_2c
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1094
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_6

    .line 1065
    .restart local v8    # "anim":Landroid/animation/Animator;
    :cond_2d
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v8

    .local v8, "anim":Landroid/animation/Animator;
    goto :goto_7

    .line 1119
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_2e
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "movefrom CREATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_2f
    iget-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_30

    .line 1121
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroy()V

    .line 1126
    :goto_8
    invoke-virtual {p1}, Landroid/app/Fragment;->performDetach()V

    .line 1127
    if-nez p5, :cond_7

    .line 1128
    iget-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_31

    .line 1129
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 1123
    :cond_30
    const/4 v2, 0x0

    iput v2, p1, Landroid/app/Fragment;->mState:I

    goto :goto_8

    .line 1131
    :cond_31
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1132
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1133
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto/16 :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1039
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 2029
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2028
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2266
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2267
    return-object v1

    .line 2270
    :cond_0
    const-string/jumbo v0, "class"

    invoke-interface {p4, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2272
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2273
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    .line 2274
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2276
    :cond_1
    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2277
    .local v9, "id":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2278
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2280
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 2281
    .local v7, "containerId":I
    :goto_0
    if-ne v7, v4, :cond_3

    if-ne v9, v4, :cond_3

    if-nez v10, :cond_3

    .line 2282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2283
    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with"

    .line 2282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2284
    const-string/jumbo v3, " an id for "

    .line 2282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "containerId":I
    :cond_2
    move v7, v3

    .line 2280
    goto :goto_0

    .line 2290
    .restart local v7    # "containerId":I
    :cond_3
    if-eq v9, v4, :cond_4

    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 2291
    .local v1, "fragment":Landroid/app/Fragment;
    :cond_4
    if-nez v1, :cond_5

    if-eqz v10, :cond_5

    .line 2292
    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 2294
    :cond_5
    if-nez v1, :cond_6

    if-eq v7, v4, :cond_6

    .line 2295
    invoke-virtual {p0, v7}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 2298
    :cond_6
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2299
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2299
    const-string/jumbo v5, " fname="

    .line 2298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2300
    const-string/jumbo v5, " existing="

    .line 2298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_7
    if-nez v1, :cond_a

    .line 2302
    invoke-static {p3, v8}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 2303
    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    .line 2304
    if-eqz v9, :cond_9

    move v0, v9

    :goto_1
    iput v0, v1, Landroid/app/Fragment;->mFragmentId:I

    .line 2305
    iput v7, v1, Landroid/app/Fragment;->mContainerId:I

    .line 2306
    iput-object v10, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 2307
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 2308
    iput-object p0, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2309
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2310
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2311
    invoke-virtual {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 2334
    :cond_8
    :goto_2
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v2, :cond_c

    iget-boolean v0, v1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2335
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 2340
    :goto_3
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_d

    .line 2341
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2342
    const-string/jumbo v3, " did not create a view."

    .line 2341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v7

    .line 2304
    goto :goto_1

    .line 2312
    :cond_a
    iget-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_b

    .line 2315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2316
    const-string/jumbo v3, ": Duplicate id 0x"

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2316
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2317
    const-string/jumbo v3, ", tag "

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2317
    const-string/jumbo v3, ", or parent id 0x"

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2317
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2318
    const-string/jumbo v3, " with another fragment for "

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2322
    :cond_b
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 2323
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 2327
    iget-boolean v0, v1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_8

    .line 2328
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 2337
    :cond_c
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto/16 :goto_3

    .line 2344
    :cond_d
    if-eqz v9, :cond_e

    .line 2345
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 2347
    :cond_e
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2348
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2350
    :cond_f
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2355
    const/4 v0, 0x0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 862
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 863
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 866
    return-void

    .line 868
    :cond_0
    iput-boolean v3, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 869
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 861
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 572
    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 567
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 600
    if-gez p1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 599
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 584
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    .line 588
    const/4 v1, 0x0

    .line 584
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 583
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 577
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 578
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 579
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 612
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 613
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 614
    if-gez p1, :cond_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 593
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 594
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 595
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1623
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1624
    const/4 v9, 0x0

    return v9

    .line 1626
    :cond_0
    if-nez p2, :cond_3

    if-gez p3, :cond_3

    and-int/lit8 v9, p4, 0x1

    if-nez v9, :cond_3

    .line 1627
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1628
    .local v5, "last":I
    if-gez v5, :cond_1

    .line 1629
    const/4 v9, 0x0

    return v9

    .line 1631
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1632
    .local v1, "bss":Landroid/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1633
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1634
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget v9, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_2

    .line 1635
    invoke-virtual {v1, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1637
    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    .line 1638
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1696
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    .end local v5    # "last":I
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 1640
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    :cond_3
    const/4 v4, -0x1

    .line 1641
    .local v4, "index":I
    if-nez p2, :cond_4

    if-ltz p3, :cond_b

    .line 1644
    :cond_4
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 1645
    :goto_1
    if-ltz v4, :cond_5

    .line 1646
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1647
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_6

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1655
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_5
    if-gez v4, :cond_8

    .line 1656
    const/4 v9, 0x0

    return v9

    .line 1650
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_6
    if-ltz p3, :cond_7

    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-eq p3, v9, :cond_5

    .line 1653
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1658
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_8
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_b

    .line 1659
    add-int/lit8 v4, v4, -0x1

    .line 1661
    :goto_2
    if-ltz v4, :cond_b

    .line 1662
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1663
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_9

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1664
    :cond_9
    if-ltz p3, :cond_b

    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p3, v9, :cond_b

    .line 1665
    :cond_a
    add-int/lit8 v4, v4, -0x1

    .line 1666
    goto :goto_2

    .line 1672
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_b
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_c

    .line 1673
    const/4 v9, 0x0

    return v9

    .line 1676
    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_3
    if-le v3, v4, :cond_d

    .line 1678
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1680
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 1681
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1682
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1683
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget v9, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_e

    .line 1684
    const/4 v3, 0x0

    :goto_4
    if-gt v3, v0, :cond_e

    .line 1685
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-virtual {v9, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1684
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1688
    :cond_e
    const/4 v7, 0x0

    .line 1689
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :goto_5
    if-gt v3, v0, :cond_11

    .line 1690
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_f

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Popping back stack state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_f
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    if-ne v3, v0, :cond_10

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    move-result-object v7

    .line 1689
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1691
    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_10
    const/4 v10, 0x0

    goto :goto_6

    .line 1694
    :cond_11
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 647
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 649
    const-string/jumbo v2, " is not currently in the FragmentManager"

    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 651
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1257
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " nesting="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 1259
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_5

    .line 1268
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1271
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1272
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1274
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1275
    iput-boolean v2, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1276
    if-eqz v6, :cond_4

    move v2, v5

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1256
    :cond_5
    return-void

    .line 1258
    .end local v6    # "inactive":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "inactive":Z
    goto :goto_0
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 640
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1607
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1609
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1606
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .prologue
    .line 1898
    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v5, p1

    .line 1899
    check-cast v5, Landroid/app/FragmentManagerState;

    .line 1900
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v11, :cond_1

    return-void

    .line 1902
    :cond_1
    const/4 v2, 0x0

    .line 1906
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    if-eqz p2, :cond_5

    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    .line 1908
    .local v9, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    .line 1909
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 1910
    .local v3, "count":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_5

    .line 1911
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1912
    .local v4, "f":Landroid/app/Fragment;
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: re-attaching retained "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_2
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iget v12, v4, Landroid/app/Fragment;->mIndex:I

    aget-object v6, v11, v12

    .line 1914
    .local v6, "fs":Landroid/app/FragmentState;
    iput-object v4, v6, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1915
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1916
    const/4 v11, 0x0

    iput v11, v4, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1917
    const/4 v11, 0x0

    iput-boolean v11, v4, Landroid/app/Fragment;->mInLayout:Z

    .line 1918
    const/4 v11, 0x0

    iput-boolean v11, v4, Landroid/app/Fragment;->mAdded:Z

    .line 1919
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1920
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v11, :cond_3

    .line 1921
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1922
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1923
    const-string/jumbo v12, "android:view_state"

    .line 1922
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v11

    iput-object v11, v4, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1924
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1910
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1909
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fs":Landroid/app/FragmentState;
    .end local v7    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "count":I
    goto :goto_0

    .line 1931
    .end local v2    # "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    .end local v3    # "count":I
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1932
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    .line 1933
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1935
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v11, v11

    if-ge v7, v11, :cond_c

    .line 1936
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v6, v11, v7

    .line 1937
    .restart local v6    # "fs":Landroid/app/FragmentState;
    if-eqz v6, :cond_9

    .line 1938
    const/4 v1, 0x0

    .line 1939
    .local v1, "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 1940
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    check-cast v1, Landroid/app/FragmentManagerNonConfig;

    .line 1942
    :cond_7
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v6, v11, v12, v1}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    move-result-object v4

    .line 1943
    .restart local v4    # "f":Landroid/app/Fragment;
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: active #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_8
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    const/4 v11, 0x0

    iput-object v11, v6, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1935
    .end local v4    # "f":Landroid/app/Fragment;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1950
    :cond_9
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v11, :cond_a

    .line 1952
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1954
    :cond_a
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: avail #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_b
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1960
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_c
    if-eqz p2, :cond_10

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    .line 1962
    .restart local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 1963
    .restart local v3    # "count":I
    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_10

    .line 1964
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1965
    .restart local v4    # "f":Landroid/app/Fragment;
    iget v11, v4, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v11, :cond_d

    .line 1966
    iget v11, v4, Landroid/app/Fragment;->mTargetIndex:I

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 1967
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v12, v4, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    iput-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1963
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1962
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "count":I
    goto :goto_4

    .line 1969
    .restart local v4    # "f":Landroid/app/Fragment;
    :cond_f
    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Re-attaching retained fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1970
    const-string/jumbo v13, " target no longer exists: "

    .line 1969
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1970
    iget v13, v4, Landroid/app/Fragment;->mTargetIndex:I

    .line 1969
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    goto :goto_6

    .line 1978
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_10
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v11, :cond_14

    .line 1979
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1980
    const/4 v7, 0x0

    :goto_7
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v11, v11

    if-ge v7, v11, :cond_15

    .line 1981
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1982
    .restart local v4    # "f":Landroid/app/Fragment;
    if-nez v4, :cond_11

    .line 1983
    new-instance v11, Ljava/lang/IllegalStateException;

    .line 1984
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No instantiated fragment for index #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1983
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1986
    :cond_11
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/app/Fragment;->mAdded:Z

    .line 1987
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_12

    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: added #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_12
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 1989
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "Already added!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1991
    :cond_13
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1994
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_14
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1998
    :cond_15
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v11, :cond_18

    .line 1999
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2000
    const/4 v7, 0x0

    :goto_8
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v11, v11

    if-ge v7, v11, :cond_19

    .line 2001
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v11, v11, v7

    invoke-virtual {v11, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    .line 2002
    .local v0, "bse":Landroid/app/BackStackRecord;
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_16

    .line 2003
    const-string/jumbo v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: back stack #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2004
    const-string/jumbo v13, " (index "

    .line 2003
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2004
    iget v13, v0, Landroid/app/BackStackRecord;->mIndex:I

    .line 2003
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2004
    const-string/jumbo v13, "): "

    .line 2003
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    new-instance v8, Landroid/util/LogWriter;

    const-string/jumbo v11, "FragmentManager"

    const/4 v12, 0x2

    invoke-direct {v8, v12, v11}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 2006
    .local v8, "logw":Landroid/util/LogWriter;
    new-instance v10, Lcom/android/internal/util/FastPrintWriter;

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-direct {v10, v8, v11, v12}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2007
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v11, "  "

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2008
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 2010
    .end local v8    # "logw":Landroid/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_16
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    iget v11, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v11, :cond_17

    .line 2012
    iget v11, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v11, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 2000
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2016
    .end local v0    # "bse":Landroid/app/BackStackRecord;
    :cond_18
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1895
    :cond_19
    return-void
.end method

.method retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1700
    const/4 v4, 0x0

    .line 1701
    .local v4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v2, 0x0

    .line 1702
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 1703
    const/4 v5, 0x0

    .end local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .end local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1704
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1705
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_5

    .line 1706
    iget-boolean v7, v3, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v7, :cond_1

    .line 1707
    if-nez v4, :cond_0

    .line 1708
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/app/Fragment;->mRetaining:Z

    .line 1712
    iget-object v7, v3, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v7, :cond_2

    iget-object v7, v3, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v7, v7, Landroid/app/Fragment;->mIndex:I

    :goto_1
    iput v7, v3, Landroid/app/Fragment;->mTargetIndex:I

    .line 1713
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retainNonConfig: keeping retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_1
    const/4 v0, 0x0

    .line 1716
    .local v0, "addedChild":Z
    iget-object v7, v3, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v7, :cond_4

    .line 1717
    iget-object v7, v3, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v7}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v1

    .line 1718
    .local v1, "child":Landroid/app/FragmentManagerNonConfig;
    if-eqz v1, :cond_4

    .line 1719
    if-nez v2, :cond_3

    .line 1720
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 1722
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1712
    .end local v0    # "addedChild":Z
    .end local v1    # "child":Landroid/app/FragmentManagerNonConfig;
    .end local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .end local v6    # "j":I
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 1725
    .restart local v0    # "addedChild":Z
    .restart local v1    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    const/4 v0, 0x1

    .line 1729
    .end local v1    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    .line 1703
    .end local v0    # "addedChild":Z
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1730
    .restart local v0    # "addedChild":Z
    :cond_6
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1735
    .end local v0    # "addedChild":Z
    .end local v3    # "f":Landroid/app/Fragment;
    .end local v5    # "i":I
    :cond_7
    if-nez v4, :cond_8

    if-nez v2, :cond_8

    .line 1736
    return-object v10

    .line 1738
    :cond_8
    new-instance v7, Landroid/app/FragmentManagerNonConfig;

    invoke-direct {v7, v4, v2}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1793
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1795
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1797
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 1798
    :cond_0
    return-object v12

    .line 1802
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1803
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/FragmentState;

    .line 1804
    .local v1, "active":[Landroid/app/FragmentState;
    const/4 v7, 0x0

    .line 1805
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_8

    .line 1806
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1807
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_6

    .line 1808
    iget v9, v4, Landroid/app/Fragment;->mIndex:I

    if-gez v9, :cond_2

    .line 1809
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1811
    const-string/jumbo v11, " has cleared index: "

    .line 1810
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1811
    iget v11, v4, Landroid/app/Fragment;->mIndex:I

    .line 1810
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1809
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1814
    :cond_2
    const/4 v7, 0x1

    .line 1816
    new-instance v6, Landroid/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 1817
    .local v6, "fs":Landroid/app/FragmentState;
    aput-object v6, v1, v8

    .line 1819
    iget v9, v4, Landroid/app/Fragment;->mState:I

    if-lez v9, :cond_7

    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_7

    .line 1820
    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1822
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v9, :cond_5

    .line 1823
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    if-gez v9, :cond_3

    .line 1824
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1825
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1826
    const-string/jumbo v11, " has target not in fragment manager: "

    .line 1825
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1826
    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1825
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1824
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1828
    :cond_3
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 1829
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1831
    :cond_4
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1832
    const-string/jumbo v10, "android:target_state"

    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1831
    invoke-virtual {p0, v9, v10, v11}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 1833
    iget v9, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_5

    .line 1834
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1835
    const-string/jumbo v10, "android:target_req_state"

    .line 1836
    iget v11, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 1834
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1844
    :cond_5
    :goto_1
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1845
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1844
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1841
    .restart local v6    # "fs":Landroid/app/FragmentState;
    :cond_7
    iget-object v9, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    .line 1849
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_8
    if-nez v7, :cond_a

    .line 1850
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "FragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_9
    return-object v12

    .line 1854
    :cond_a
    const/4 v2, 0x0

    .line 1855
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1858
    .local v3, "backStack":[Landroid/app/BackStackState;
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v9, :cond_d

    .line 1859
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1860
    if-lez v0, :cond_d

    .line 1861
    new-array v2, v0, [I

    .line 1862
    .local v2, "added":[I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_d

    .line 1863
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    aput v9, v2, v8

    .line 1864
    aget v9, v2, v8

    if-gez v9, :cond_b

    .line 1865
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1866
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1867
    const-string/jumbo v11, " has cleared index: "

    .line 1866
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1867
    aget v11, v2, v8

    .line 1866
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1865
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1869
    :cond_b
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1870
    const-string/jumbo v11, ": "

    .line 1869
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1870
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1869
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1876
    .end local v2    # "added":[I
    :cond_d
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    .line 1877
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1878
    if-lez v0, :cond_f

    .line 1879
    new-array v3, v0, [Landroid/app/BackStackState;

    .line 1880
    .local v3, "backStack":[Landroid/app/BackStackState;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_f

    .line 1881
    new-instance v10, Landroid/app/BackStackState;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-direct {v10, p0, v9}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v10, v3, v8

    .line 1882
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1883
    const-string/jumbo v11, ": "

    .line 1882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1883
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1888
    .end local v3    # "backStack":[Landroid/app/BackStackState;
    :cond_f
    new-instance v5, Landroid/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/app/FragmentManagerState;-><init>()V

    .line 1889
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iput-object v1, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 1890
    iput-object v2, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 1891
    iput-object v3, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 1892
    return-object v5
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1758
    const/4 v0, 0x0

    .line 1760
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1761
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1763
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1764
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1765
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1766
    .local v0, "result":Landroid/os/Bundle;
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1769
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1770
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1772
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1773
    if-nez v0, :cond_3

    .line 1774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1777
    :cond_3
    const-string/jumbo v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1776
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1779
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 1780
    if-nez v0, :cond_5

    .line 1781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1784
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1787
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 674
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 675
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 676
    const-string/jumbo v4, " is not currently in the FragmentManager"

    .line 675
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 678
    :cond_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    if-lez v2, :cond_2

    .line 679
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 680
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_1
    return-object v1

    .line 682
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    const/4 v2, 0x0

    .line 1742
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1743
    return-void

    .line 1745
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1746
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1750
    :goto_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1751
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1752
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1753
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1741
    :cond_1
    return-void

    .line 1748
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .prologue
    .line 1490
    monitor-enter p0

    .line 1491
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1494
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1495
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 1496
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1489
    return-void

    .line 1499
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1500
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1504
    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1508
    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1490
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public showFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1315
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_4

    .line 1317
    iput-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1318
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1319
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1321
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 1322
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1323
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1324
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1326
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1329
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1331
    :cond_3
    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1314
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1190
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    .line 1192
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1193
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1194
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 693
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 701
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 699
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
