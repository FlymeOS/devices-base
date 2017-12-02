.class final Landroid/app/BackStackRecord;
.super Landroid/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackRecord$Op;,
        Landroid/app/BackStackRecord$TransitionState;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static synthetic -wrap0(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/app/Fragment;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    .locals 0
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "outFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z
    .param p5, "namedViews"    # Landroid/util/ArrayMap;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/BackStackRecord;->callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    .locals 0
    .param p1, "hiddenFragmentViews"    # Ljava/util/ArrayList;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Landroid/transition/Transition;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fromTransition"    # Landroid/transition/Transition;
    .param p2, "views"    # Ljava/util/ArrayList;
    .param p3, "exclude"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "namedViews"    # Landroid/util/ArrayMap;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "transition"    # Landroid/transition/TransitionSet;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "namedViews"    # Landroid/util/ArrayMap;
    .param p3, "sharedElementTargets"    # Ljava/util/ArrayList;

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManagerImpl;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 406
    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 405
    return-void
.end method

.method public static addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    move-object v4, p0

    .line 1530
    check-cast v4, Landroid/transition/TransitionSet;

    .line 1531
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1532
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1533
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1534
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1536
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/BackStackRecord;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1537
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 1538
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1540
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1541
    .local v3, "numViews":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1542
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1541
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1528
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p4, "exitTransition"    # Landroid/transition/Transition;
    .param p5, "overallTransition"    # Landroid/transition/Transition;
    .param p6, "container"    # Landroid/view/View;
    .param p7, "inFragment"    # Landroid/app/Fragment;
    .param p8, "outFragment"    # Landroid/app/Fragment;
    .param p10, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/transition/Transition;",
            "Landroid/transition/TransitionSet;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p9, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p11, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1132
    if-nez p5, :cond_0

    .line 1133
    const/4 v0, 0x0

    return-object v0

    .line 1135
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v13, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    .line 1137
    new-instance v0, Landroid/app/BackStackRecord$1;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Landroid/app/BackStackRecord$1;-><init>(Landroid/app/BackStackRecord;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V

    .line 1136
    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1191
    return-object v13
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;
    .locals 7
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;Z)",
            "Landroid/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v2, Landroid/app/BackStackRecord$TransitionState;

    invoke-direct {v2, p0}, Landroid/app/BackStackRecord$TransitionState;-><init>(Landroid/app/BackStackRecord;)V

    .line 1011
    .local v2, "state":Landroid/app/BackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1014
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1015
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "containerId":I
    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1016
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1014
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1021
    .end local v1    # "containerId":I
    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 1022
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1023
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1024
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1021
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1028
    .end local v1    # "containerId":I
    :cond_2
    return-object v2
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 1412
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/app/BackStackRecord;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1413
    return-void

    .line 1415
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    move v3, v4

    .local v3, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1417
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1418
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1419
    check-cast v6, Landroid/view/ViewGroup;

    .line 1420
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1421
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1422
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1423
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/app/BackStackRecord;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1424
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1416
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1410
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v4}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v4

    if-nez v4, :cond_0

    .line 877
    return-void

    .line 879
    :cond_0
    iget-object v3, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 880
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_5

    .line 881
    iget v4, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 920
    :goto_1
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 883
    :pswitch_0
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 886
    :pswitch_1
    iget-object v0, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 887
    .local v0, "f":Landroid/app/Fragment;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 888
    const/4 v1, 0x0

    .end local v0    # "f":Landroid/app/Fragment;
    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 889
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 890
    .local v2, "old":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget v4, v2, Landroid/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_2

    .line 891
    :cond_1
    if-ne v2, v0, :cond_3

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "f":Landroid/app/Fragment;
    iget v4, v2, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 888
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 895
    :cond_3
    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_3

    .line 900
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/app/Fragment;
    :cond_4
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 904
    :pswitch_2
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 907
    :pswitch_3
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 910
    :pswitch_4
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 913
    :pswitch_5
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 916
    :pswitch_6
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 875
    :cond_5
    return-void

    .line 881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "outFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .local p5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p4, :cond_0

    .line 1197
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1199
    .local v1, "sharedElementCallback":Landroid/app/SharedElementCallback;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1200
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1201
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1195
    return-void

    .line 1198
    .end local v0    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .restart local v1    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    goto :goto_0
.end method

.method private static captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "exitTransition"    # Landroid/transition/Transition;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1073
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1076
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1077
    if-eqz p2, :cond_0

    .line 1078
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1080
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1081
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-static {p0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1085
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-object v1
.end method

.method private static cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1032
    if-eqz p0, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 1035
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 31
    .param p1, "containerId"    # I
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1303
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1304
    .local v9, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v9, :cond_7

    .line 1305
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    .line 1306
    .local v10, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    .line 1308
    .local v11, "outFragment":Landroid/app/Fragment;
    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/app/BackStackRecord;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v5

    .line 1310
    .local v5, "enterTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    invoke-static {v10, v11, v0}, Landroid/app/BackStackRecord;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    move-result-object v6

    .line 1311
    .local v6, "sharedElementTransition":Landroid/transition/TransitionSet;
    move/from16 v0, p3

    invoke-static {v11, v0}, Landroid/app/BackStackRecord;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v7

    .line 1313
    .local v7, "exitTransition":Landroid/transition/Transition;
    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 1314
    if-nez v7, :cond_0

    .line 1315
    return-void

    .line 1317
    :cond_0
    if-eqz v5, :cond_1

    .line 1318
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1320
    :cond_1
    const/16 v28, 0x0

    .line 1321
    .local v28, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v14, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v6, :cond_2

    .line 1323
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Landroid/app/BackStackRecord;->remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    move-result-object v28

    .line 1325
    .local v28, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1324
    move-object/from16 v0, v28

    invoke-static {v6, v3, v0, v14}, Landroid/app/BackStackRecord;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 1328
    if-eqz p3, :cond_8

    .line 1329
    iget-object v0, v11, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    move-object/from16 v26, v0

    .line 1331
    .local v26, "callback":Landroid/app/SharedElementCallback;
    :goto_0
    new-instance v29, Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1332
    .local v29, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1333
    .local v30, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1337
    .end local v26    # "callback":Landroid/app/SharedElementCallback;
    .end local v28    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v29    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1336
    move-object/from16 v0, v28

    invoke-static {v7, v11, v0, v3}, Landroid/app/BackStackRecord;->captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v21

    .line 1338
    .local v21, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1339
    :cond_3
    const/4 v7, 0x0

    .line 1341
    .end local v7    # "exitTransition":Landroid/transition/Transition;
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v5, v7, v0, v3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 1342
    const/4 v3, 0x1

    invoke-static {v5, v6, v14, v3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 1343
    const/4 v3, 0x1

    invoke-static {v7, v6, v14, v3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    if-eqz v28, :cond_6

    .line 1347
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 1348
    .local v27, "epicenterView":Landroid/view/View;
    if-eqz v27, :cond_6

    .line 1349
    if-eqz v7, :cond_5

    .line 1350
    move-object/from16 v0, v27

    invoke-static {v7, v0}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 1352
    :cond_5
    if-eqz v6, :cond_6

    .line 1353
    move-object/from16 v0, v27

    invoke-static {v6, v0}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 1358
    .end local v27    # "epicenterView":Landroid/view/View;
    :cond_6
    move/from16 v0, p3

    invoke-static {v5, v7, v6, v10, v0}, Landroid/app/BackStackRecord;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v8

    .line 1361
    .local v8, "transition":Landroid/transition/Transition;
    if-eqz v8, :cond_7

    .line 1362
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v13, p3

    .line 1363
    invoke-direct/range {v3 .. v14}, Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1367
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 1370
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1372
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1, v8}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    .line 1373
    invoke-static {v9, v8}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1375
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v9

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v22, v6

    move-object/from16 v23, v14

    move-object/from16 v24, v8

    move-object/from16 v25, v12

    invoke-direct/range {v15 .. v25}, Landroid/app/BackStackRecord;->removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1302
    .end local v5    # "enterTransition":Landroid/transition/Transition;
    .end local v6    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .end local v8    # "transition":Landroid/transition/Transition;
    .end local v10    # "inFragment":Landroid/app/Fragment;
    .end local v11    # "outFragment":Landroid/app/Fragment;
    .end local v12    # "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v21    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    return-void

    .line 1330
    .restart local v5    # "enterTransition":Landroid/transition/Transition;
    .restart local v6    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v7    # "exitTransition":Landroid/transition/Transition;
    .restart local v10    # "inFragment":Landroid/app/Fragment;
    .restart local v11    # "outFragment":Landroid/app/Fragment;
    .restart local v14    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v28    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_8
    iget-object v0, v10, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    move-object/from16 v26, v0

    .restart local v26    # "callback":Landroid/app/SharedElementCallback;
    goto/16 :goto_0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1437
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1438
    const/4 v1, 0x1

    return v1

    .line 1436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1441
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 466
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iput-object v1, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 468
    if-eqz p3, :cond_1

    .line 469
    iget-object v1, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    :cond_0
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 477
    :cond_1
    if-eqz p1, :cond_5

    .line 478
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t add fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 480
    const-string/jumbo v3, " with tag "

    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 480
    const-string/jumbo v3, " to container view with no id"

    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    const-string/jumbo v3, ": was "

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    iget-object v3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 472
    const-string/jumbo v3, " now "

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_3
    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_4

    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eq v1, p1, :cond_4

    .line 483
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    const-string/jumbo v3, ": was "

    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    iget v3, p2, Landroid/app/Fragment;->mFragmentId:I

    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    const-string/jumbo v3, " now "

    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_4
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    .line 490
    :cond_5
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 491
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    iput p4, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 492
    iput-object p2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 493
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 465
    return-void
.end method

.method private excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    .locals 4
    .param p2, "containerId"    # I
    .param p3, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I",
            "Landroid/transition/Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p1, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1613
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1614
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1615
    iget v2, v0, Landroid/app/Fragment;->mContainerId:I

    if-ne v2, p2, :cond_0

    .line 1616
    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1617
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1618
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1619
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1622
    :cond_1
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1623
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1610
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fromTransition"    # Landroid/transition/Transition;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 1447
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1448
    .local v1, "viewCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1449
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1447
    .end local v0    # "i":I
    .end local v1    # "viewCount":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "viewCount":I
    goto :goto_0

    .line 1445
    .end local v1    # "viewCount":I
    :cond_1
    return-void
.end method

.method private static getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1039
    if-nez p0, :cond_0

    .line 1040
    return-object v0

    .line 1042
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "outFragment"    # Landroid/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1047
    if-nez p0, :cond_0

    .line 1048
    return-object v0

    .line 1050
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;
    .locals 4
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isBack"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1056
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1057
    :cond_0
    return-object v3

    .line 1059
    :cond_1
    if-eqz p2, :cond_2

    .line 1060
    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    .line 1059
    :goto_0
    invoke-static {v2}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    .line 1062
    .local v0, "transition":Landroid/transition/Transition;
    if-nez v0, :cond_3

    .line 1063
    return-object v3

    .line 1061
    .end local v0    # "transition":Landroid/transition/Transition;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    goto :goto_0

    .line 1065
    .restart local v0    # "transition":Landroid/transition/Transition;
    :cond_3
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 1066
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1067
    return-object v1
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v0, 0x1

    .line 1549
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1550
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1549
    :cond_0
    return v0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 1555
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Z)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1593
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1594
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1595
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1596
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1597
    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 1598
    if-eqz p3, :cond_1

    .line 1599
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 1600
    iget-object v3, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 1599
    invoke-static {v2, v3, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1606
    :cond_0
    :goto_0
    return-object v0

    .line 1602
    :cond_1
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/app/Fragment;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1218
    invoke-direct {p0, p1, p3, p2}, Landroid/app/BackStackRecord;->mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1222
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 1223
    iget-object v1, p3, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1224
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 1223
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1225
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    .line 1231
    :goto_0
    return-object v0

    .line 1227
    :cond_0
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1228
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 1227
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1229
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    goto :goto_0
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 7
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p2, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z

    .prologue
    .line 1237
    const/4 v0, 0x1

    .line 1238
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1239
    if-eqz p4, :cond_4

    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 1248
    .end local v0    # "overlap":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 1250
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 1251
    .local v4, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz p0, :cond_1

    .line 1252
    invoke-virtual {v4, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1254
    :cond_1
    if-eqz p1, :cond_2

    .line 1255
    invoke-virtual {v4, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1257
    :cond_2
    if-eqz p2, :cond_3

    .line 1258
    invoke-virtual {v4, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1260
    :cond_3
    move-object v3, v4

    .line 1286
    .end local v4    # "transitionSet":Landroid/transition/TransitionSet;
    .local v3, "transition":Landroid/transition/Transition;
    :goto_1
    return-object v3

    .line 1240
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v0    # "overlap":Z
    :cond_4
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    .local v0, "overlap":Z
    goto :goto_0

    .line 1264
    .end local v0    # "overlap":Z
    :cond_5
    const/4 v1, 0x0

    .line 1265
    .local v1, "staggered":Landroid/transition/Transition;
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    .line 1266
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v5, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    .line 1269
    const/4 v6, 0x1

    .line 1266
    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 1275
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    .line 1276
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1277
    .local v2, "together":Landroid/transition/TransitionSet;
    if-eqz v1, :cond_7

    .line 1278
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1280
    :cond_7
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1281
    move-object v3, v2

    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1

    .line 1270
    .end local v2    # "together":Landroid/transition/TransitionSet;
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v1    # "staggered":Landroid/transition/Transition;
    :cond_8
    if-eqz p1, :cond_9

    .line 1271
    move-object v1, p1

    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    .line 1272
    .local v1, "staggered":Landroid/transition/Transition;
    :cond_9
    if-eqz p0, :cond_6

    .line 1273
    move-object v1, p0

    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    .line 1283
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_a
    move-object v3, v1

    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
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
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1569
    .local v2, "remappedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1570
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1571
    .local v1, "numKeys":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1572
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1574
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1575
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1579
    .end local v0    # "i":I
    .end local v1    # "numKeys":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method private remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "outFragment"    # Landroid/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Z)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1090
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1091
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 1093
    if-eqz p3, :cond_1

    .line 1094
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 1101
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 1102
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1103
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 1102
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1104
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    .line 1111
    :goto_1
    return-object v0

    .line 1096
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v1, p2, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1107
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 1106
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1108
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    goto :goto_1
.end method

.method private removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistingView"    # Landroid/view/View;
    .param p3, "enterTransition"    # Landroid/transition/Transition;
    .param p5, "exitTransition"    # Landroid/transition/Transition;
    .param p7, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p9, "overallTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p4, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p9, :cond_0

    .line 1465
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v0, Landroid/app/BackStackRecord$2;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p9

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Landroid/app/BackStackRecord$2;-><init>(Landroid/app/BackStackRecord;Landroid/view/ViewGroup;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1463
    :cond_0
    return-void
.end method

.method public static removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1501
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v5, p0, Landroid/transition/TransitionSet;

    if-eqz v5, :cond_0

    move-object v3, p0

    .line 1502
    check-cast v3, Landroid/transition/TransitionSet;

    .line 1503
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1504
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1505
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1506
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1508
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/BackStackRecord;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1509
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 1510
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1511
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 1510
    if-eqz v5, :cond_1

    .line 1513
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1514
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1513
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1500
    .end local v1    # "i":I
    .end local v4    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V
    .locals 9
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1788
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    const/4 v6, 0x0

    .line 1789
    .local v6, "targetCount":I
    :goto_0
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    const/4 v4, 0x0

    .line 1790
    .local v4, "sourceCount":I
    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1791
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 1792
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1793
    .local v3, "source":Ljava/lang/String;
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1794
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1795
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 1796
    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 1797
    .local v5, "target":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 1798
    iget-object v8, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v8, v3, v5}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    .end local v5    # "target":Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1788
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "sourceCount":I
    .end local v6    # "targetCount":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6    # "targetCount":I
    goto :goto_0

    .line 1789
    :cond_2
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    .line 1800
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "originalTarget":Ljava/lang/String;
    .restart local v3    # "source":Ljava/lang/String;
    .restart local v4    # "sourceCount":I
    .restart local v5    # "target":Ljava/lang/String;
    .restart local v7    # "view":Landroid/view/View;
    :cond_3
    iget-object v8, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v8, v5, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1787
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v5    # "target":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private static setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1631
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1632
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1634
    new-instance v1, Landroid/app/BackStackRecord$3;

    invoke-direct {v1, v0}, Landroid/app/BackStackRecord$3;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1630
    return-void
.end method

.method private setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1205
    .local p1, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1207
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1209
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1210
    iput-object v0, p2, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    goto :goto_0
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 2
    .param p2, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p1, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    if-eqz p2, :cond_0

    .line 827
    iget v0, p2, Landroid/app/Fragment;->mContainerId:I

    .line 828
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/app/Fragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    .end local v0    # "containerId":I
    :cond_0
    :goto_0
    return-void

    .line 829
    .restart local v0    # "containerId":I
    :cond_1
    invoke-virtual {p2}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 831
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    :cond_2
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 834
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 7
    .param p3, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 842
    if-eqz p3, :cond_2

    .line 843
    iget v6, p3, Landroid/app/Fragment;->mContainerId:I

    .line 844
    .local v6, "containerId":I
    if-eqz v6, :cond_1

    .line 845
    invoke-virtual {p3}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p2, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    :cond_0
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_1

    .line 849
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 856
    :cond_1
    iget v0, p3, Landroid/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v0, v0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, v2, :cond_2

    .line 857
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 858
    const/16 v1, 0x18

    .line 857
    if-lt v0, v1, :cond_2

    .line 859
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p3}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 860
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    move-object v1, p3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 841
    .end local v6    # "containerId":I
    :cond_2
    return-void
.end method

.method private static setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1764
    .local p0, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1766
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1767
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1768
    return-void

    .line 1765
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1771
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1808
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1809
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1810
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1811
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 1812
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 1813
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v4, v2, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1808
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0

    .line 1815
    .restart local v1    # "i":I
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v3    # "target":Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v4, v3, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1807
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
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
    .line 1777
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1778
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1779
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1780
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1781
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v3, v1, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1776
    .end local v0    # "i":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    .prologue
    .line 1643
    new-instance v0, Landroid/app/BackStackRecord$4;

    invoke-direct {v0, p0, p2}, Landroid/app/BackStackRecord$4;-><init>(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1642
    return-void
.end method

.method private static setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "transition"    # Landroid/transition/TransitionSet;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1392
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1393
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1395
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v3

    .line 1396
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1397
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1398
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1399
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1400
    .local v2, "view":Landroid/view/View;
    invoke-static {v3, v2}, Landroid/app/BackStackRecord;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 1398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    invoke-static {p0, p3}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1391
    return-void
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 456
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 457
    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 462
    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 452
    return-object p0
.end method

.method addOp(Landroid/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;

    .prologue
    .line 436
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 437
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 443
    :goto_0
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 444
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 445
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 446
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 447
    iget v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    .line 435
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    .line 440
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    .line 441
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 583
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 596
    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    .line 595
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 599
    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 600
    return-object p0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 546
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 547
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 548
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 549
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 551
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 641
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_0

    .line 642
    return-void

    .line 644
    :cond_0
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 645
    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 646
    const-string/jumbo v5, " by "

    .line 645
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 649
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_5

    .line 650
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    .line 651
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    .line 652
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 653
    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 654
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 654
    const-string/jumbo v5, " to "

    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 654
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 658
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 659
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 660
    .local v2, "r":Landroid/app/Fragment;
    iget v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    .line 661
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 662
    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    const-string/jumbo v5, " to "

    .line 662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    iget v5, v2, Landroid/app/Fragment;->mBackStackNesting:I

    .line 662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 667
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/app/Fragment;
    :cond_4
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto/16 :goto_0

    .line 640
    :cond_5
    return-void
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v2}, Landroid/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    return-void

    .line 938
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    .line 939
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_2

    .line 940
    iget v2, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 969
    :goto_1
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 942
    :pswitch_0
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 945
    :pswitch_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 946
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    .line 947
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    .line 946
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 950
    .end local v0    # "i":I
    :cond_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 953
    :pswitch_2
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 956
    :pswitch_3
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 959
    :pswitch_4
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 962
    :pswitch_5
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 965
    :pswitch_6
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 934
    :cond_2
    return-void

    .line 940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 692
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    if-eqz v2, :cond_0

    .line 693
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 695
    :cond_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 696
    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Landroid/util/LogWriter;

    const-string/jumbo v2, "FragmentManager"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 698
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 699
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 702
    .end local v0    # "logw":Landroid/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    .line 703
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    move-result v2

    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 708
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 709
    iget v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v2

    .line 706
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public commitNow()V
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 682
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    .line 680
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    .line 688
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    .line 686
    return-void
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 537
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 538
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x6

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 539
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 540
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 542
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 610
    const-string/jumbo v1, "This transaction is already being added to the back stack"

    .line 609
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 613
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 272
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 277
    if-eqz p3, :cond_8

    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v5, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 283
    const-string/jumbo v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget-boolean v5, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 285
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_0
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    if-nez v5, :cond_1

    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    if-eqz v5, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    :cond_2
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v5, :cond_3

    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v5, :cond_4

    .line 300
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    :cond_4
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 307
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 313
    :cond_6
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 314
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 322
    :cond_8
    iget-object v5, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    if-eqz v5, :cond_10

    .line 323
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 327
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x0

    .line 328
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    .line 330
    iget v5, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 362
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    if-eqz p3, :cond_c

    .line 367
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    .line 368
    :cond_9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    const-string/jumbo v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    :cond_a
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    .line 375
    :cond_b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    :cond_c
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 384
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 386
    const-string/jumbo v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    :goto_3
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 332
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 335
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 338
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 341
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 344
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 347
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 350
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 353
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 388
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    .line 389
    const-string/jumbo v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 399
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    .line 400
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 276
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_10
    return-void

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 1825
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .prologue
    .line 1829
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 519
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 520
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 521
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 522
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 524
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1833
    iget v1, p0, Landroid/app/BackStackRecord;->mNumOp:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;
    .locals 11
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)",
            "Landroid/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1659
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1660
    const-string/jumbo v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "popFromBackStack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    new-instance v2, Landroid/util/LogWriter;

    const-string/jumbo v6, "FragmentManager"

    const/4 v7, 0x2

    invoke-direct {v2, v7, v6}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 1662
    .local v2, "logw":Landroid/util/LogWriter;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-direct {v5, v2, v6, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1663
    .local v5, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v6, "  "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v5, v8}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 1667
    .end local v2    # "logw":Landroid/util/LogWriter;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v6, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    .line 1668
    if-nez p2, :cond_3

    .line 1669
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1670
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, p3, p4, v6}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    move-result-object p2

    .line 1677
    :cond_2
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 1679
    iget-object v4, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    .line 1680
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    :goto_1
    if-eqz v4, :cond_6

    .line 1681
    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v6, :pswitch_data_0

    .line 1742
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1672
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_3
    if-nez p1, :cond_2

    .line 1673
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-static {p2, v6, v7}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1683
    .restart local v4    # "op":Landroid/app/BackStackRecord$Op;
    :pswitch_0
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1684
    .local v0, "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1685
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1686
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    .line 1687
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 1685
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    .line 1746
    :cond_4
    :goto_2
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    goto :goto_1

    .line 1691
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_1
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1692
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_5

    .line 1693
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1694
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1695
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    .line 1696
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 1694
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    .line 1698
    :cond_5
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 1699
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1700
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1701
    .local v3, "old":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 1702
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 1699
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1708
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    .end local v3    # "old":Landroid/app/Fragment;
    :pswitch_2
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1709
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1710
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto :goto_2

    .line 1714
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1715
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1716
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1717
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 1716
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    goto :goto_2

    .line 1721
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1722
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1723
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1724
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 1723
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    goto :goto_2

    .line 1728
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1729
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1730
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1731
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 1730
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_2

    .line 1735
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1736
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1737
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 1738
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 1737
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_2

    .line 1749
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_6
    if-eqz p1, :cond_7

    .line 1750
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1751
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    const/4 v10, 0x1

    .line 1750
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1752
    const/4 p2, 0x0

    .line 1755
    .end local p2    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_7
    iget v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v6, :cond_8

    .line 1756
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 1757
    const/4 v6, -0x1

    iput v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 1759
    :cond_8
    return-object p2

    .line 1681
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 510
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 511
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 512
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 513
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 515
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/BackStackRecord;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 501
    if-nez p1, :cond_0

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 506
    return-object p0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 713
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 714
    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Run: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v7, :cond_1

    .line 718
    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-gez v7, :cond_1

    .line 719
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "addToBackStack() called after commit()"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 723
    :cond_1
    invoke-virtual {p0, v12}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 725
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v7, v12, :cond_2

    .line 726
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 727
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 728
    .local v4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    invoke-direct {p0, v2, v4}, Landroid/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 729
    invoke-direct {p0, v2, v4, v10}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    .line 732
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .end local v4    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    :cond_2
    iget-object v6, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 733
    .local v6, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v6, :cond_a

    .line 734
    iget v7, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v7, :pswitch_data_0

    .line 809
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown cmd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 736
    :pswitch_0
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 737
    .local v1, "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 738
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v7, v1, v10}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 813
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_3
    :goto_1
    iget-object v6, v6, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 742
    :pswitch_1
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 743
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v0, v1, Landroid/app/Fragment;->mContainerId:I

    .line 744
    .local v0, "containerId":I
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    .line 745
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .end local v1    # "f":Landroid/app/Fragment;
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 746
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 747
    .local v5, "old":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 748
    const-string/jumbo v7, "FragmentManager"

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OP_REPLACE: adding="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 748
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_4
    iget v7, v5, Landroid/app/Fragment;->mContainerId:I

    if-ne v7, v0, :cond_5

    .line 752
    if-ne v5, v1, :cond_6

    .line 753
    const/4 v1, 0x0

    .local v1, "f":Landroid/app/Fragment;
    iput-object v11, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 745
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 755
    :cond_6
    iget-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v7, :cond_7

    .line 756
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 758
    :cond_7
    iget-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v7, v5, Landroid/app/Fragment;->mNextAnim:I

    .line 760
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v7, :cond_8

    .line 761
    iget v7, v5, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/app/Fragment;->mBackStackNesting:I

    .line 762
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 763
    const-string/jumbo v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bump nesting of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 764
    const-string/jumbo v9, " to "

    .line 763
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 764
    iget v9, v5, Landroid/app/Fragment;->mBackStackNesting:I

    .line 763
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_8
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v5, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    goto :goto_3

    .line 772
    .end local v3    # "i":I
    .end local v5    # "old":Landroid/app/Fragment;
    :cond_9
    if-eqz v1, :cond_3

    .line 773
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 774
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v7, v1, v10}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto/16 :goto_1

    .line 779
    .end local v0    # "containerId":I
    :pswitch_2
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 780
    .local v1, "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 781
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 785
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 786
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 787
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 791
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 792
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 793
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 797
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 798
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 799
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 803
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 804
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    .line 805
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 816
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_a
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v8, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v8, v8, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransition:I

    .line 817
    iget v10, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 816
    invoke-virtual {v7, v8, v9, v10, v12}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 819
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v7, :cond_b

    .line 820
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v7, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    .line 712
    :cond_b
    return-void

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 629
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 631
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 635
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 636
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 637
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 617
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 619
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 623
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 624
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 625
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    const/4 v0, 0x0

    .line 555
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 560
    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 561
    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 562
    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 563
    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 564
    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 568
    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    .line 569
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .prologue
    .line 589
    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 590
    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 528
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 529
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 530
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 531
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 533
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 261
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 265
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
