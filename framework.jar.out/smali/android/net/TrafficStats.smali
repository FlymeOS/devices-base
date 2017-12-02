.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final PB_IN_BYTES:J = 0x4000000000000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final TAG_SYSTEM_RESTORE:I = -0xfc

.field public static final TB_IN_BYTES:J = 0x10000000000L

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 190
    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 220
    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 333
    if-eqz p0, :cond_0

    .line 335
    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 336
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 337
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 719
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 732
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getMobileRxBytes()J
    .locals 8

    .prologue
    .line 404
    const-wide/16 v2, 0x0

    .line 405
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 406
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getMobileRxPackets()J
    .locals 8

    .prologue
    .line 370
    const-wide/16 v2, 0x0

    .line 371
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 372
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    .prologue
    .line 413
    const-wide/16 v4, 0x0

    .line 414
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    array-length v7, v6

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v0, v6, v1

    .line 415
    .local v0, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v0, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    .line 416
    .local v2, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 417
    add-long/2addr v4, v2

    .line 414
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "stat":J
    :cond_1
    return-wide v4
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    .prologue
    .line 425
    const-wide/16 v4, 0x0

    .line 426
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    array-length v7, v6

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v0, v6, v1

    .line 427
    .local v0, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v0, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    .line 428
    .local v2, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 429
    add-long/2addr v4, v2

    .line 426
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "stat":J
    :cond_1
    return-wide v4
.end method

.method public static getMobileTxBytes()J
    .locals 8

    .prologue
    .line 387
    const-wide/16 v2, 0x0

    .line 388
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 389
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getMobileTxPackets()J
    .locals 8

    .prologue
    .line 353
    const-wide/16 v2, 0x0

    .line 354
    .local v2, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 355
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 442
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 118
    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxBytes()J
    .locals 2

    .prologue
    .line 491
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxPackets()J
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 447
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 558
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 559
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 561
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidRxPackets(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 615
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 616
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 617
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 619
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 686
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 631
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 675
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 528
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 529
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 530
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 532
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidTxPackets(I)J
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 587
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-ne v0, p0, :cond_1

    .line 588
    :cond_0
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v2

    return-wide v2

    .line 590
    :cond_1
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 708
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 653
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    .prologue
    .line 310
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 311
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 309
    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 324
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 145
    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .locals 1

    .prologue
    .line 158
    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 157
    return-void
.end method

.method public static setThreadStatsTagRestore()V
    .locals 1

    .prologue
    .line 170
    const/16 v0, -0xfc

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 169
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 209
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 208
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 276
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 269
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_0
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_0

    .line 290
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 294
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 296
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 295
    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 297
    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 298
    return-object v0
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/DatagramSocket;)V

    .line 252
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 232
    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/DatagramSocket;)V

    .line 259
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 239
    return-void
.end method
