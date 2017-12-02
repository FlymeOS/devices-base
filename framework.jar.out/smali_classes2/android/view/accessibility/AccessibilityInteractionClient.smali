.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field private static final CHECK_INTEGRITY:Z = true

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NO_ID:I = -0x1

.field private static final TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static final sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

.field private static final sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceLock:Ljava/lang/Object;

.field private volatile mInteractionId:I

.field private final mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPerformAccessibilityActionResult:Z

.field private mSameThreadMessage:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 86
    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 103
    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/view/accessibility/AccessibilityCache;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityCache;-><init>()V

    .line 106
    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 136
    return-void
.end method

.method private checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_0

    .line 780
    return-void

    .line 783
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 784
    .local v13, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 785
    .local v11, "infoCount":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_3

    .line 786
    move v12, v10

    .local v12, "j":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 787
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 788
    .local v2, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v16

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_2

    .line 789
    move-object v13, v2

    .line 785
    .end local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 786
    .restart local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 794
    .end local v2    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "j":I
    :cond_3
    if-nez v13, :cond_4

    .line 795
    const-string/jumbo v15, "AccessibilityInteractionClient"

    const-string/jumbo v16, "No root."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_4
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 799
    .local v14, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 800
    .local v9, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v9, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_5
    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 802
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 803
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 804
    const-string/jumbo v15, "AccessibilityInteractionClient"

    const-string/jumbo v16, "Duplicate node."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 807
    :cond_6
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    .line 808
    .local v4, "childCount":I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_5

    .line 809
    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v6

    .line 810
    .local v6, "childId":J
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    if-ge v12, v11, :cond_8

    .line 811
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 812
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v16

    cmp-long v15, v16, v6

    if-nez v15, :cond_7

    .line 813
    invoke-interface {v9, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 808
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 818
    .end local v4    # "childCount":I
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childId":J
    .end local v12    # "j":I
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v16

    sub-int v8, v15, v16

    .line 819
    .local v8, "disconnectedCount":I
    if-lez v8, :cond_a

    .line 820
    const-string/jumbo v15, "AccessibilityInteractionClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " Disconnected nodes."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_a
    return-void
.end method

.method private clearResultLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 653
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 654
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 651
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I

    .prologue
    .line 700
    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 703
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 699
    :cond_0
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    .locals 3
    .param p2, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 716
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 717
    .local v2, "infosCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 718
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 719
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "infosCount":I
    :cond_0
    return-void
.end method

.method private getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "interactionId"    # I

    .prologue
    .line 549
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 550
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 551
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 552
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 553
    return-object v0

    .line 551
    :cond_0
    const/4 v0, 0x0

    .local v0, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 549
    .end local v0    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .locals 4
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 580
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 581
    .local v1, "success":Z
    const/4 v0, 0x0

    .line 582
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v1, :cond_1

    .line 583
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 587
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 588
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 589
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 591
    return-object v0

    .line 585
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_0

    .line 579
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 114
    .local v0, "threadId":J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 4
    .param p0, "threadId"    # J

    .prologue
    .line 126
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 128
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    .line 130
    .restart local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 132
    return-object v0

    .line 126
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getPerformAccessibilityActionResultAndClear(I)Z
    .locals 4
    .param p1, "interactionId"    # I

    .prologue
    .line 627
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 628
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 629
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 630
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 631
    return v0

    .line 629
    :cond_0
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 627
    .end local v0    # "result":Z
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getSameProcessMessageAndClear()Landroid/os/Message;
    .locals 3

    .prologue
    .line 731
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 733
    .local v0, "result":Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 734
    return-object v0

    .line 731
    .end local v0    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 11
    .param p1, "interactionId"    # I

    .prologue
    const/4 v10, 0x0

    .line 665
    const-wide/16 v6, 0x1388

    .line 666
    .local v6, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 669
    .local v4, "startTimeMillis":J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v3

    .line 670
    .local v3, "sameProcessMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 671
    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 674
    :cond_0
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v8, p1, :cond_1

    .line 675
    const/4 v8, 0x1

    return v8

    .line 677
    :cond_1
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le v8, p1, :cond_2

    .line 678
    return v10

    .line 680
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 681
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v8, 0x1388

    sub-long v6, v8, v0

    .line 682
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3

    .line 683
    return v10

    .line 685
    :cond_3
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    .end local v0    # "elapsedTimeMillis":J
    .end local v3    # "sameProcessMessage":Landroid/os/Message;
    :catch_0
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .param p1, "connectionId"    # I
    .param p2, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .prologue
    .line 757
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 758
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 756
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 535
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 534
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 19
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I

    .prologue
    .line 263
    and-int/lit8 v5, p6, 0x2

    if-eqz v5, :cond_0

    .line 264
    and-int/lit8 v5, p6, 0x1

    if-nez v5, :cond_0

    .line 265
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "FLAG_PREFETCH_SIBLINGS requires FLAG_PREFETCH_PREDECESSORS"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v4

    .line 270
    .local v4, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v4, :cond_2

    .line 271
    if-nez p5, :cond_1

    .line 272
    sget-object v5, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 274
    .local v13, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v13, :cond_1

    .line 278
    return-object v13

    .line 284
    .end local v13    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    .line 285
    .local v8, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 288
    .local v14, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p0

    move/from16 v10, p6

    .line 286
    invoke-interface/range {v4 .. v12}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v18

    .line 289
    .local v18, "success":Z
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    if-eqz v18, :cond_2

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v16

    .line 294
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V

    .line 295
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    .end local v4    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "interactionId":I
    .end local v14    # "identityToken":J
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "success":Z
    :cond_2
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 296
    .restart local v4    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v8    # "interactionId":I
    .restart local v14    # "identityToken":J
    .restart local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v18    # "success":Z
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 304
    .end local v4    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "interactionId":I
    .end local v14    # "identityToken":J
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "success":Z
    :catch_0
    move-exception v17

    .line 305
    .local v17, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "AccessibilityInteractionClient"

    const-string/jumbo v6, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 379
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 381
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 384
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    .line 382
    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 385
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    if-eqz v15, :cond_0

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v11

    .line 389
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v11, :cond_0

    .line 390
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    return-object v11

    .line 399
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :catch_0
    move-exception v14

    .line 400
    .local v14, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityInteractionClient"

    const-string/jumbo v4, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 331
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 333
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 336
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    .line 334
    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 337
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    if-eqz v15, :cond_0

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v11

    .line 341
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v11, :cond_0

    .line 342
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    return-object v11

    .line 351
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :catch_0
    move-exception v14

    .line 352
    .local v14, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityInteractionClient"

    const-string/jumbo v4, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    .prologue
    .line 425
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 426
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 428
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 431
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v8, p0

    .line 429
    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 432
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    if-eqz v15, :cond_0

    .line 434
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 436
    .local v11, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    return-object v11

    .line 444
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :catch_0
    move-exception v14

    .line 445
    .local v14, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityInteractionClient"

    const-string/jumbo v4, "Error while calling remote findFocus"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    .prologue
    .line 469
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 470
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_0

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 472
    .local v7, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 475
    .local v12, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v8, p0

    .line 473
    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v15

    .line 476
    .local v15, "success":Z
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    if-eqz v15, :cond_0

    .line 478
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 480
    .local v11, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return-object v11

    .line 488
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "identityToken":J
    .end local v15    # "success":Z
    :catch_0
    move-exception v14

    .line 489
    .local v14, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityInteractionClient"

    const-string/jumbo v4, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 745
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 746
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "connectionId"    # I

    .prologue
    .line 161
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v3, 0x7fffffff

    .line 162
    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v1, p0

    move v2, p1

    .line 160
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 8
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .prologue
    const/4 v7, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 177
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1

    .line 178
    sget-object v5, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v5, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 180
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_0

    .line 184
    return-object v4

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 190
    .local v2, "identityToken":J
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 191
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    if-eqz v4, :cond_1

    .line 193
    sget-object v5, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-object v4

    .line 201
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "identityToken":J
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "AccessibilityInteractionClient"

    const-string/jumbo v6, "Error while calling remote getWindow"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    return-object v7
.end method

.method public getWindows(I)Ljava/util/List;
    .locals 7
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 216
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1

    .line 217
    sget-object v5, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityCache;->getWindows()Ljava/util/List;

    move-result-object v4

    .line 218
    .local v4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v4, :cond_0

    .line 222
    return-object v4

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 228
    .local v2, "identityToken":J
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Ljava/util/List;

    move-result-object v4

    .line 229
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 230
    if-eqz v4, :cond_1

    .line 231
    sget-object v5, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityCache;->setWindows(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-object v4

    .line 239
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "identityToken":J
    .end local v4    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catch_0
    move-exception v1

    .line 240
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "AccessibilityInteractionClient"

    const-string/jumbo v6, "Error while calling remote getWindows"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 539
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityCache:Landroid/view/accessibility/AccessibilityCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 538
    return-void
.end method

.method public performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .locals 15
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 512
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 513
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 514
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 515
    .local v6, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 518
    .local v10, "identityToken":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v7, p0

    .line 516
    invoke-interface/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v13

    .line 519
    .local v13, "success":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    if-eqz v13, :cond_0

    .line 521
    invoke-direct {p0, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 528
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    .end local v10    # "identityToken":J
    .end local v13    # "success":Z
    :catch_0
    move-exception v12

    .line 529
    .local v12, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccessibilityInteractionClient"

    const-string/jumbo v2, "Error while calling remote performAccessibilityAction"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v12    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeConnection(I)V
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 768
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 769
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 767
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .prologue
    .line 562
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    :try_start_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_0

    .line 564
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 565
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 561
    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 4
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 601
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 602
    if-eqz p1, :cond_3

    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    .line 606
    .local v0, "isIpcCall":Z
    :goto_0
    if-nez v0, :cond_2

    .line 607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 614
    .end local v0    # "isIpcCall":Z
    :goto_1
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 616
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 599
    return-void

    .line 605
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isIpcCall":Z
    goto :goto_0

    .line 609
    :cond_2
    :try_start_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 600
    .end local v0    # "isIpcCall":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 612
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .locals 2
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .prologue
    .line 639
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_0

    .line 641
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 642
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 644
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 638
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSameThreadMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 149
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
