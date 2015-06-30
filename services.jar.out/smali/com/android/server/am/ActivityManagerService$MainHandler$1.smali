.class Lcom/android/server/am/ActivityManagerService$MainHandler$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    .line 1609
    new-instance v24, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 1611
    .local v24, "infoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessMemInfo;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, "N":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 1613
    .local v4, "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1611
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 1615
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1616
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    .line 1617
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v19

    .line 1618
    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v29

    .line 1620
    .local v29, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v29

    iget-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_1

    .line 1621
    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v32

    .line 1622
    .local v32, "pss":J
    const-wide/16 v12, 0x0

    cmp-long v5, v32, v12

    if-lez v5, :cond_1

    .line 1623
    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 1624
    new-instance v4, Lcom/android/server/am/ProcessMemInfo;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v7, -0x11

    const/4 v8, -0x1

    const-string v9, "native"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1626
    .restart local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    move-wide/from16 v0, v32

    iput-wide v0, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1627
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v32    # "pss":J
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 1632
    .end local v29    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    const-wide/16 v36, 0x0

    .line 1635
    .local v36, "totalPss":J
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1636
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 1637
    .restart local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_3

    .line 1638
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1640
    :cond_3
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v36, v36, v10

    .line 1635
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 1632
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    .end local v36    # "totalPss":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1642
    .restart local v36    # "totalPss":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$MainHandler$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler$1;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1654
    new-instance v35, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1655
    .local v35, "tag":Ljava/lang/StringBuilder;
    new-instance v34, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1656
    .local v34, "stack":Ljava/lang/StringBuilder;
    const-string v5, "Low on memory -- "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    const-string v5, "total"

    const/4 v6, 0x0

    move-object/from16 v0, v35

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1658
    const-string v5, "total"

    const/4 v6, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1660
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1661
    .local v28, "logBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Low on memory:\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    const/16 v22, 0x1

    .line 1664
    .local v22, "firstLine":Z
    const/high16 v27, -0x80000000

    .line 1665
    .local v27, "lastOomAdj":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 1666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    .line 1668
    .restart local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v6, -0x11

    if-eq v5, v6, :cond_e

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_e

    .line 1672
    :cond_5
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v27

    if-eq v0, v5, :cond_c

    .line 1673
    iget v0, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v27, v0

    .line 1674
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_6

    .line 1675
    const-string v5, " / "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    :cond_6
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_b

    .line 1678
    if-eqz v22, :cond_7

    .line 1679
    const-string v5, ":"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const/16 v22, 0x0

    .line 1682
    :cond_7
    const-string v5, "\n\t at "

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    :goto_4
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v5, :cond_8

    .line 1691
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v10, v11, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1693
    :cond_8
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-static {v0, v10, v11, v5, v6}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1694
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v5, :cond_e

    add-int/lit8 v5, v23, 0x1

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->val$memInfos:Ljava/util/ArrayList;

    add-int/lit8 v6, v23, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    iget v5, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v27

    if-eq v5, v0, :cond_e

    .line 1696
    :cond_9
    const-string v5, "("

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_5
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v5, v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_d

    .line 1698
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v5, v5, v26

    iget v6, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v5, v6, :cond_a

    .line 1699
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v5, v5, v26

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    const-string v5, ":"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v5, v5, v26

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1697
    :cond_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 1684
    .end local v26    # "k":I
    :cond_b
    const-string v5, "$"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1687
    :cond_c
    const-string v5, " "

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    const-string v5, "$"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1704
    .restart local v26    # "k":I
    :cond_d
    const-string v5, ")"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    .end local v26    # "k":I
    :cond_e
    const-string v5, "  "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    const/16 v5, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1711
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->procState:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    const/16 v5, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1713
    iget-wide v10, v4, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, v28

    invoke-static {v0, v10, v11}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1714
    const-string v5, " kB: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    const-string v5, " ("

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    iget v5, v4, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1718
    const-string v5, ") "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    const/16 v5, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1721
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 1722
    const-string v5, "                      "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    iget-object v5, v4, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    const/16 v5, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1665
    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 1728
    .end local v4    # "mi":Lcom/android/server/am/ProcessMemInfo;
    :cond_10
    const-string v5, "           "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1730
    const-string v5, " kB: TOTAL\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    const/16 v5, 0x9

    new-array v0, v5, [J

    move-object/from16 v25, v0

    .line 1733
    .local v25, "infos":[J
    invoke-static/range {v25 .. v25}, Landroid/os/Debug;->getMemInfo([J)V

    .line 1734
    const-string v5, "  MemInfo: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    const/4 v5, 0x5

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB slab, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    const/4 v5, 0x4

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB shmem, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    const/4 v5, 0x2

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB buffers, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    const/4 v5, 0x3

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB cached, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    const/4 v5, 0x1

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kB free\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const/16 v5, 0x8

    aget-wide v10, v25, v5

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_11

    .line 1741
    const-string v5, "  ZRAM: "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    const/16 v5, 0x8

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1743
    const-string v5, " kB RAM, "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    const/4 v5, 0x6

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1745
    const-string v5, " kB swap total, "

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    const/4 v5, 0x7

    aget-wide v10, v25, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1747
    const-string v5, " kB swap free\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    :cond_11
    const-string v5, "ActivityManager"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1762
    .local v21, "dropBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1763
    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1764
    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1765
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1766
    const/16 v5, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1771
    new-instance v20, Ljava/io/StringWriter;

    invoke-direct/range {v20 .. v20}, Ljava/io/StringWriter;-><init>()V

    .line 1772
    .local v20, "catSw":Ljava/io/StringWriter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v13, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 1773
    :try_start_2
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    const/4 v5, 0x0

    const/16 v6, 0x100

    move-object/from16 v0, v20

    invoke-direct {v7, v0, v5, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1774
    .local v7, "catPw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/String;

    .line 1775
    .local v8, "emptyArgs":[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    .line 1777
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1778
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActiveServices;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1780
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1781
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1782
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 1783
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1784
    invoke-virtual/range {v20 .. v20}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "lowmem"

    const/4 v11, 0x0

    const-string v12, "system_server"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1790
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 1791
    .local v30, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v10, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v5, v10, v30

    if-gez v5, :cond_12

    .line 1792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;->this$1:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1794
    :cond_12
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1795
    return-void

    .line 1783
    .end local v7    # "catPw":Ljava/io/PrintWriter;
    .end local v8    # "emptyArgs":[Ljava/lang/String;
    .end local v30    # "now":J
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1794
    .restart local v7    # "catPw":Ljava/io/PrintWriter;
    .restart local v8    # "emptyArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method
