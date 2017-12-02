.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDependencyDirty:Z

.field private mDuration:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReversible:Z

.field private mRootNode:Landroid/animation/AnimatorSet$Node;

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private final mShouldIgnoreEndWithoutStart:Z

.field private mStartDelay:J

.field private mStarted:Z

.field private mTerminated:Z

.field private mTotalDuration:J


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    return v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return p1
.end method

.method static synthetic -set1(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->onChildAnimatorEnded(Landroid/animation/Animator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v1, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 99
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 105
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 111
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 114
    iput-wide v8, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 117
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 123
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {v1, v2}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 128
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 132
    iput-object v6, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 135
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 137
    iput-wide v8, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 147
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 151
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    .line 145
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_2

    .line 154
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_0

    .line 156
    :cond_2
    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_0

    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createDependencyGraph()V
    .locals 18

    .prologue
    .line 913
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v13, :cond_2

    .line 915
    const/4 v3, 0x0

    .line 916
    .local v3, "durationChanged":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v13, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 918
    .local v2, "anim":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v13, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v2}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_1

    .line 919
    const/4 v3, 0x1

    .line 923
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    if-nez v3, :cond_2

    .line 924
    return-void

    .line 916
    .restart local v2    # "anim":Landroid/animation/Animator;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 928
    .end local v2    # "anim":Landroid/animation/Animator;
    .end local v3    # "durationChanged":Z
    .end local v4    # "i":I
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 931
    .local v11, "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v11, :cond_3

    .line 932
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/AnimatorSet$Node;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 931
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 934
    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_7

    .line 935
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 936
    .local v8, "node":Landroid/animation/AnimatorSet$Node;
    iget-boolean v13, v8, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v13, :cond_5

    .line 934
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 940
    :cond_5
    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 941
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    .line 946
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 947
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 950
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 951
    .local v10, "siblingSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v10, :cond_6

    .line 952
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/AnimatorSet$Node;

    iget-object v13, v13, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 951
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 956
    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_4

    .line 957
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 958
    .local v9, "sibling":Landroid/animation/AnimatorSet$Node;
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    .line 959
    const/4 v13, 0x1

    iput-boolean v13, v9, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 956
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 963
    .end local v5    # "j":I
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "sibling":Landroid/animation/AnimatorSet$Node;
    .end local v10    # "siblingSize":I
    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_9

    .line 964
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 965
    .restart local v8    # "node":Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v8, v13, :cond_8

    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v13, :cond_8

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 963
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 971
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 973
    .local v12, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v14, 0x0

    iput-wide v14, v13, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v14

    iput-wide v14, v13, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 975
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 977
    const-wide/16 v6, 0x0

    .line 978
    .local v6, "maxEndTime":J
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_a

    .line 979
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 980
    .restart local v8    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v13, v8, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v13}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v14

    iput-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 981
    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_b

    .line 982
    const-wide/16 v6, -0x1

    .line 988
    .end local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_a
    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 912
    return-void

    .line 985
    .restart local v8    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_b
    iget-wide v14, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v13, v14, v6

    if-lez v13, :cond_c

    iget-wide v6, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 978
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method private endRemainingAnimations()V
    .locals 8

    .prologue
    .line 407
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v6, "remainingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    const/4 v4, 0x0

    .line 411
    .local v4, "index":I
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 412
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 413
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    iget-object v7, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    .line 416
    .local v5, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 417
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 418
    .local v2, "childSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 419
    iget-object v7, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 420
    .local v1, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v7, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-eq v7, v5, :cond_1

    .line 418
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_1
    iget-object v7, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "childSize":I
    .end local v3    # "i":I
    .end local v5    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method private findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p2, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1054
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1056
    return-void

    .line 1058
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1059
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1086
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1087
    .local v0, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Landroid/animation/AnimatorSet$Node;

    .end local v0    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v0, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 1089
    .restart local v0    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_0
    return-object v0
.end method

.method private onChildAnimatorEnded(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v9, 0x0

    .line 798
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 799
    .local v1, "animNode":Landroid/animation/AnimatorSet$Node;
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 801
    iget-boolean v8, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-nez v8, :cond_6

    .line 802
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 804
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/animation/AnimatorSet$Node;>;"
    if-nez v2, :cond_1

    const/4 v3, 0x0

    .line 805
    .local v3, "childrenSize":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 806
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-object v8, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v1, :cond_0

    .line 807
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p0, v8}, Landroid/animation/AnimatorSet;->start(Landroid/animation/AnimatorSet$Node;)V

    .line 805
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 804
    .end local v3    # "childrenSize":I
    .end local v4    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3    # "childrenSize":I
    goto :goto_0

    .line 812
    .restart local v4    # "i":I
    :cond_2
    const/4 v0, 0x1

    .line 814
    .local v0, "allDone":Z
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 815
    .local v6, "size":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    .line 816
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v8, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v8, :cond_4

    .line 817
    const/4 v0, 0x0

    .line 821
    :cond_3
    if-eqz v0, :cond_6

    .line 824
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 826
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 827
    .local v7, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 828
    .local v5, "numListeners":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_5

    .line 829
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v8, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 828
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 815
    .end local v5    # "numListeners":I
    .end local v7    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 832
    :cond_5
    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 833
    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 797
    .end local v0    # "allDone":Z
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/animation/AnimatorSet$Node;>;"
    .end local v3    # "childrenSize":I
    .end local v4    # "i":I
    .end local v6    # "size":I
    :cond_6
    return-void
.end method

.method private printChildCount()V
    .locals 10

    .prologue
    .line 886
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 887
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    const-string/jumbo v8, "AnimatorSet"

    const-string/jumbo v9, "Current tree: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v3, 0x0

    .line 890
    .local v3, "index":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 891
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 892
    .local v5, "listSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    if-ge v3, v5, :cond_2

    .line 894
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 895
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    const/4 v7, 0x0

    .line 896
    .local v7, "num":I
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 897
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 898
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 899
    .local v1, "child":Landroid/animation/AnimatorSet$Node;
    iget-object v8, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v6, :cond_0

    .line 900
    add-int/lit8 v7, v7, 0x1

    .line 901
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 905
    .end local v1    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 908
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "num":I
    :cond_2
    const-string/jumbo v8, "AnimatorSet"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "listSize":I
    :cond_3
    return-void
.end method

.method private updateAnimatorsDuration()V
    .locals 8

    .prologue
    .line 661
    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 663
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 664
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 665
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 668
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "size":I
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 660
    return-void
.end method

.method private updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "parent"    # Landroid/animation/AnimatorSet$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p2, "visited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 998
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v8, :cond_1

    .line 1000
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 1001
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    .line 1002
    .local v7, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v7, v8, :cond_0

    .line 1003
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1004
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1000
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1008
    .end local v4    # "i":I
    .end local v7    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void

    .line 1011
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1013
    .local v1, "childrenSize":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v1, :cond_9

    .line 1014
    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    .line 1015
    .local v0, "child":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1016
    .local v5, "index":I
    if-ltz v5, :cond_4

    .line 1018
    move v6, v5

    .local v6, "j":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 1019
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1020
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, -0x1

    iput-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1021
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, -0x1

    iput-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1018
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1023
    :cond_3
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1024
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1025
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1026
    const-string/jumbo v8, "AnimatorSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cycle found in AnimatorSet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .end local v6    # "j":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1030
    :cond_4
    iget-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1031
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 1032
    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1033
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1034
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1046
    :cond_5
    :goto_4
    invoke-direct {p0, v0, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1036
    :cond_6
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    .line 1037
    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1038
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1041
    :cond_7
    iget-object v8, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v2

    .line 1042
    .local v2, "duration":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-nez v8, :cond_8

    .line 1043
    const-wide/16 v8, -0x1

    .line 1042
    :goto_5
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_4

    .line 1043
    :cond_8
    iget-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v8, v2

    goto :goto_5

    .line 1048
    .end local v0    # "child":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "duration":J
    .end local v5    # "index":I
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 996
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 845
    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    if-nez v3, :cond_0

    .line 846
    return v8

    .line 849
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 850
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 851
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 852
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->canReverse()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 853
    :cond_1
    return v8

    .line 850
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public cancel()V
    .locals 6

    .prologue
    .line 353
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 354
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 355
    const/4 v4, 0x0

    .line 356
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 357
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 358
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 359
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 360
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    .end local v3    # "size":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 364
    .local v1, "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 365
    .local v2, "setSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 366
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_1
    if-eqz v4, :cond_2

    .line 369
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 370
    .restart local v3    # "size":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 371
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    .end local v3    # "size":I
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 352
    .end local v0    # "i":I
    .end local v1    # "playingSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "setSize":I
    :cond_3
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 683
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 692
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 693
    .local v8, "nodeCount":I
    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 694
    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 695
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 696
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    iput-object v10, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    .line 697
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 698
    iget-boolean v10, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    iput-boolean v10, v0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 699
    new-instance v10, Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v10, v0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v10, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 705
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 706
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 707
    .local v6, "node":Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v6}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v7

    .line 708
    .local v7, "nodeClone":Landroid/animation/AnimatorSet$Node;
    invoke-static {v6, v7}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    .line 709
    iget-object v10, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v10, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v12, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v10, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v10, v7, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 714
    .local v1, "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v1, :cond_1

    .line 715
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 716
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 717
    .local v4, "listener":Landroid/animation/Animator$AnimatorListener;
    instance-of v10, v4, Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v10, :cond_0

    .line 718
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 715
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 705
    .end local v2    # "i":I
    .end local v4    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "cloneListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v7    # "nodeClone":Landroid/animation/AnimatorSet$Node;
    :cond_2
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    iput-object v10, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    .line 725
    iget-object v10, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, v10, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v10, Landroid/animation/ValueAnimator;

    iput-object v10, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 729
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v8, :cond_a

    .line 730
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    .line 732
    .restart local v6    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v12

    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v10, :cond_3

    move-object v10, v11

    :goto_3
    iput-object v10, v12, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 734
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v10, :cond_4

    const/4 v9, 0x0

    .line 735
    .local v9, "size":I
    :goto_4
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    if-ge v3, v9, :cond_5

    .line 736
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 733
    .end local v3    # "j":I
    .end local v9    # "size":I
    :cond_3
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    goto :goto_3

    .line 734
    :cond_4
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .restart local v9    # "size":I
    goto :goto_4

    .line 738
    .restart local v3    # "j":I
    :cond_5
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v10, :cond_6

    const/4 v9, 0x0

    .line 739
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_7

    .line 740
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 738
    :cond_6
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_6

    .line 742
    :cond_7
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v10, :cond_8

    const/4 v9, 0x0

    .line 743
    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v9, :cond_9

    .line 744
    invoke-static {v6}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    invoke-static {v10}, Landroid/animation/AnimatorSet$Node;->-get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    invoke-virtual {v12, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 743
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 742
    :cond_8
    iget-object v10, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_8

    .line 729
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 748
    .end local v3    # "j":I
    .end local v6    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v9    # "size":I
    :cond_a
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v8, :cond_b

    .line 749
    iget-object v10, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    invoke-static {v10, v11}, Landroid/animation/AnimatorSet$Node;->-set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;

    .line 748
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 751
    :cond_b
    return-object v0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 386
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 390
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endRemainingAnimations()V

    .line 393
    :cond_1
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 395
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 396
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 397
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":I
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    return-void

    .line 400
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 385
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    .prologue
    .line 282
    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    .line 283
    .local v0, "conf":I
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 284
    .local v2, "nodeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 285
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 247
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 248
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 249
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v4, :cond_0

    .line 250
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 519
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    .prologue
    .line 1080
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1081
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1082
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 4

    .prologue
    .line 440
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 441
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 442
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 443
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    const/4 v3, 0x1

    return v3

    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 565
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 566
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 567
    if-nez v2, :cond_0

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v4, :cond_0

    .line 568
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 570
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->pause()V

    .line 564
    :cond_0
    return-void

    .line 572
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 573
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 574
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 575
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v4, :cond_2

    .line 576
    iget-object v4, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->pause()V

    .line 573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 338
    if-eqz p1, :cond_0

    .line 339
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    .line 341
    :cond_0
    return-object v0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .line 224
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 226
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 223
    :cond_0
    return-void

    .line 228
    :cond_1
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 230
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 4
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 205
    if-eqz p1, :cond_0

    .line 206
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 207
    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 204
    :cond_0
    return-void

    .line 209
    :cond_1
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 211
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 189
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    goto :goto_0

    .line 192
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 185
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3
    .param p1, "items"    # [Landroid/animation/Animator;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 174
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 175
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 585
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 586
    .local v2, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 587
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v4, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 590
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 593
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 594
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 595
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v4, :cond_3

    .line 596
    iget-object v4, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    .line 593
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 4

    .prologue
    .line 864
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 866
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 867
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 868
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->reverse()V

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "size":I
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 531
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 532
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    .line 537
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 538
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 301
    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 300
    return-void
.end method

.method public setStartDelay(J)V
    .locals 13
    .param p1, "startDelay"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    .line 476
    cmp-long v5, p1, v10

    if-gez v5, :cond_0

    .line 477
    const-string/jumbo v5, "AnimatorSet"

    const-string/jumbo v6, "Start delay should always be non-negative"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-wide/16 p1, 0x0

    .line 480
    :cond_0
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v0, p1, v6

    .line 481
    .local v0, "delta":J
    cmp-long v5, v0, v10

    if-nez v5, :cond_1

    .line 482
    return-void

    .line 484
    :cond_1
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 485
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 486
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversible:Z

    .line 488
    :cond_2
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v5, :cond_7

    .line 490
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 491
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 492
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 493
    .local v3, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v3, v5, :cond_3

    .line 494
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 491
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    :cond_3
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    move-wide v6, v8

    :goto_2
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 498
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    move-wide v6, v8

    :goto_3
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_1

    .line 497
    :cond_4
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v6, v0

    goto :goto_2

    .line 499
    :cond_5
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v6, v0

    goto :goto_3

    .line 503
    .end local v3    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_6
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    .line 504
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    .line 474
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_7
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 265
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 266
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 267
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 268
    .local v2, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 269
    .local v0, "animation":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 270
    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .restart local v0    # "animation":Landroid/animation/Animator;
    :cond_1
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    .line 272
    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0    # "animation":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_1

    .line 264
    .end local v2    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    .line 554
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 556
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 557
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    .line 558
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    .line 543
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 544
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 545
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 546
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    .line 547
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public shouldPlayTogether()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1072
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 1073
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 1075
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 613
    iput-boolean v7, p0, Landroid/animation/AnimatorSet;->mTerminated:Z

    .line 614
    iput-boolean v10, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    .line 615
    iput-boolean v7, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    .line 617
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 618
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 619
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 620
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iput-boolean v7, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 621
    iget-object v6, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v6, :cond_1

    .line 625
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 626
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 627
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v6, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v7, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    .line 632
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    .line 635
    const/4 v3, 0x0

    .line 636
    .local v3, "setIsEmpty":Z
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 637
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p0, v6}, Landroid/animation/AnimatorSet;->start(Landroid/animation/AnimatorSet$Node;)V

    .line 646
    :goto_2
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 648
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 649
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 650
    .local v2, "numListeners":I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 651
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 638
    .end local v2    # "numListeners":I
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 640
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v6}, Landroid/animation/AnimatorSet;->onChildAnimatorEnded(Landroid/animation/Animator;)V

    goto :goto_2

    .line 643
    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    .line 654
    :cond_4
    if-eqz v3, :cond_5

    .line 656
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v6}, Landroid/animation/AnimatorSet;->onChildAnimatorEnded(Landroid/animation/Animator;)V

    .line 612
    :cond_5
    return-void
.end method

.method start(Landroid/animation/AnimatorSet$Node;)V
    .locals 2
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 675
    iget-object v0, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 676
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 678
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 674
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AnimatorSet@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "returnVal":Ljava/lang/String;
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 877
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 878
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 879
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
