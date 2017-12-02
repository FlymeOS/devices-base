.class public final Landroid/app/usage/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mEndTimeStamp:J

.field private mEnumerationIndex:I

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStartTimeStamp:J

.field private mSummary:Landroid/net/NetworkStats;

.field private mTag:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "startTimestamp"    # J
    .param p5, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 69
    iput v3, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 81
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 86
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 91
    iput v3, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 96
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 97
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 103
    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    .line 105
    .local v0, "statsService":Landroid/net/INetworkStatsService;
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 106
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 108
    iput-wide p3, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 109
    iput-wide p5, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 101
    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .locals 2
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    .line 491
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap3(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set9(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 492
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap2(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set6(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 493
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap1(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set5(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 494
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap0(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set2(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 495
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set0(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 496
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set1(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 497
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set3(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 498
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set4(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 499
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set7(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 500
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set8(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 490
    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 4
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    const/4 v3, -0x1

    .line 535
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 536
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 538
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 539
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap3(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set9(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 540
    iget v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->-wrap2(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->-set6(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 541
    invoke-static {p1, v3}, Landroid/app/usage/NetworkStats$Bucket;->-set5(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 542
    invoke-static {p1, v3}, Landroid/app/usage/NetworkStats$Bucket;->-set2(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 543
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set0(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 544
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 545
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 544
    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set1(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 546
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set3(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 547
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set4(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 548
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set7(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 549
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->-set8(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 550
    const/4 v0, 0x1

    return v0

    .line 551
    :cond_0
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 553
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    .line 556
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 3
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    .line 509
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 511
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getUid()I
    .locals 3

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mUids.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    aget v0, v0, v1

    return v0

    .line 579
    :cond_2
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    return v0
.end method

.method private hasNextUid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 566
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUidEnumeration()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSingleUidTag(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "tag"    # I

    .prologue
    .line 583
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 584
    iput p2, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 582
    return-void
.end method

.method private stepHistory()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 475
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v2

    .line 481
    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 480
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 481
    const/4 v5, -0x1

    .line 479
    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    iput v11, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 474
    :cond_0
    return-void

    .line 482
    :catch_0
    move-exception v10

    .line 483
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NetworkStats"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stepUid()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    .line 589
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 587
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_0

    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 389
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 379
    :cond_1
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 119
    throw v0
.end method

.method getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 405
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 407
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 1
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .prologue
    .line 354
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    .line 357
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0
.end method

.method getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-nez v1, :cond_0

    .line 519
    return-object v2

    .line 521
    :cond_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 522
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    if-nez v1, :cond_1

    .line 523
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 525
    :cond_1
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 526
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 527
    return-object v0
.end method

.method public hasNextBucket()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v2, :cond_1

    .line 367
    iget v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 368
    :cond_1
    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_3

    .line 369
    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 370
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    .line 369
    :cond_2
    return v0

    .line 372
    :cond_3
    return v1
.end method

.method startHistoryEnumeration(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(II)V

    .line 423
    return-void
.end method

.method startHistoryEnumeration(II)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "tag"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 433
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 435
    iget-wide v6, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v8, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 434
    const/4 v3, -0x1

    .line 435
    const/4 v5, -0x1

    move v2, p1

    move v4, p2

    .line 433
    invoke-interface/range {v0 .. v9}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 436
    invoke-direct {p0, p1, p2}, Landroid/app/usage/NetworkStats;->setSingleUidTag(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 430
    return-void

    .line 437
    :catch_0
    move-exception v10

    .line 438
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "NetworkStats"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startSummaryEnumeration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 415
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 417
    iput v6, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 414
    return-void
.end method

.method startUserUidEnumeration()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    move-result-object v15

    .line 453
    .local v15, "uids":[I
    new-instance v13, Landroid/util/IntArray;

    array-length v2, v15

    invoke-direct {v13, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 454
    .local v13, "filteredUids":Landroid/util/IntArray;
    const/4 v2, 0x0

    array-length v0, v15

    move/from16 v17, v0

    move/from16 v16, v2

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget v4, v15, v16

    .line 456
    .local v4, "uid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 458
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 457
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 458
    const/4 v7, -0x1

    .line 456
    invoke-interface/range {v2 .. v11}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .line 459
    .local v14, "history":Landroid/net/NetworkStatsHistory;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 460
    invoke-virtual {v13, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v14    # "history":Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_1
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_0

    .line 462
    :catch_0
    move-exception v12

    .line 463
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while getting history of uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 466
    .end local v4    # "uid":I
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {v13}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 467
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 468
    invoke-direct/range {p0 .. p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 448
    return-void
.end method
