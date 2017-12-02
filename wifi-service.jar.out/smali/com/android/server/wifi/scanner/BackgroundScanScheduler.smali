.class public Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;,
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_MAX_AP_PER_SCAN:I = 0x20

.field public static final DEFAULT_MAX_BUCKETS:I = 0x8

.field public static final DEFAULT_MAX_CHANNELS_PER_BUCKET:I = 0x10

.field public static final DEFAULT_MAX_SCANS_TO_BATCH:I = 0xa

.field private static final DEFAULT_PERIOD_MS:I = 0x7530

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENTAGE:I = 0x64

.field private static final EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

.field private static final NUM_OF_REGULAR_BUCKETS:I

.field private static final PERIOD_MIN_GCD_MS:I = 0x2710

.field private static final PREDEFINED_BUCKET_PERIODS:[I

.field private static final TAG:Ljava/lang/String; = "BackgroundScanScheduler"


# instance fields
.field private final mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private mMaxApPerScan:I

.field private mMaxBatch:I

.field private mMaxBuckets:I

.field private mMaxChannelsPerBucket:I

.field private mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mSettingsToScheduledBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    return v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "requestedPeriod"    # I
    .param p1, "maxNumBuckets"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    .line 123
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 122
    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    .line 125
    sget-object v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 124
    sput v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    .line 61
    return-void

    .line 109
    :array_0
    .array-data 4
        0x7530
        0x1d4c0
        0x75300
        0x2710
        0xea60
        0x1d4c00
        0x3a980
        0xea600
        0x3a9800
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V
    .locals 2
    .param p1, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    .line 325
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    .line 326
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    .line 327
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    .line 363
    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    .line 370
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    .line 369
    return-void
.end method

.method private addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 510
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v1, v2, :cond_0

    .line 512
    sget v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    .line 517
    .local v0, "bucketIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 507
    return-void

    .line 514
    .end local v0    # "bucketIndex":I
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    sget v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v0

    .restart local v0    # "bucketIndex":I
    goto :goto_0
.end method

.method private cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 2
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 569
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 570
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 571
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 572
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    iput-object v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    .line 573
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 574
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 575
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 576
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 577
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 578
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 579
    iget-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 580
    return-object v0
.end method

.method private compactBuckets(I)V
    .locals 7
    .param p1, "maxBuckets"    # I

    .prologue
    .line 546
    move v1, p1

    .line 550
    .local v1, "maxRegularBuckets":I
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    sget v6, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    add-int/lit8 v1, p1, -0x1

    .line 553
    :cond_0
    sget v5, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    add-int/lit8 v0, v5, -0x1

    .line 554
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getActiveRegularBucketCount()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 555
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 556
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "scanRequest$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 557
    .local v3, "scanRequest":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-static {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->findBestRegularBucketIndex(II)I

    move-result v2

    .line 558
    .local v2, "newBucketIndex":I
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    goto :goto_1

    .line 560
    .end local v2    # "newBucketIndex":I
    .end local v3    # "scanRequest":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clear(I)V

    .line 554
    .end local v4    # "scanRequest$iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 545
    :cond_3
    return-void
.end method

.method private createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, "currentBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v4

    .line 591
    .local v4, "currentBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x0

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 592
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "chanIdx":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 595
    .local v2, "channel":Ljava/lang/Integer;
    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "chanIdx":I
    .local v1, "chanIdx":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v5, v0

    move v0, v1

    .end local v1    # "chanIdx":I
    .restart local v0    # "chanIdx":I
    goto :goto_0

    .line 597
    .end local v2    # "channel":Ljava/lang/Integer;
    :cond_0
    return-object v4
.end method

.method private createSchedule(Ljava/util/List;I)V
    .locals 17
    .param p2, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v12, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v12}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    .line 439
    .local v12, "schedule":Lcom/android/server/wifi/WifiNative$ScanSettings;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 440
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 442
    const/4 v15, 0x0

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBatch()I

    move-result v15

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 444
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v8, "hiddenNetworkIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 448
    .local v4, "bucketId":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "bucket$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 449
    .local v2, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 450
    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;

    move-result-object v16

    .line 449
    aput-object v16, v15, v4

    .line 451
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "settings$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 453
    .local v13, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iget v0, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 454
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 457
    :cond_1
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-eqz v15, :cond_2

    .line 458
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iget v0, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 459
    iget v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 462
    :cond_2
    iget-object v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    if-eqz v15, :cond_0

    .line 463
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget-object v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    array-length v15, v15

    if-ge v9, v15, :cond_0

    .line 464
    iget-object v15, v13, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    aget v15, v15, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 468
    .end local v9    # "j":I
    .end local v13    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v14    # "settings$iterator":Ljava/util/Iterator;
    :cond_4
    const/16 v15, 0x64

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    .line 473
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-eqz v15, :cond_5

    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 474
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxApPerScan()I

    move-result v15

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 476
    :cond_6
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 477
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v15

    new-array v15, v15, [I

    iput-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    .line 478
    const/4 v10, 0x0

    .line 479
    .local v10, "numHiddenNetworks":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "hiddenNetworkId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 480
    .local v6, "hiddenNetworkId":Ljava/lang/Integer;
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "numHiddenNetworks":I
    .local v11, "numHiddenNetworks":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v15, v10

    move v10, v11

    .end local v11    # "numHiddenNetworks":I
    .restart local v10    # "numHiddenNetworks":I
    goto :goto_2

    .line 485
    .end local v6    # "hiddenNetworkId":Ljava/lang/Integer;
    .end local v7    # "hiddenNetworkId$iterator":Ljava/util/Iterator;
    .end local v10    # "numHiddenNetworks":I
    :cond_7
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-lez v15, :cond_a

    .line 486
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    iget v5, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 487
    .local v5, "gcd":I
    const/4 v1, 0x1

    .local v1, "b":I
    :goto_3
    iget v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v1, v15, :cond_8

    .line 488
    iget-object v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v15, v15, v1

    iget v15, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    invoke-static {v15, v5}, Landroid/util/Rational;->gcd(II)I

    move-result v5

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 491
    :cond_8
    const/16 v15, 0x2710

    if-ge v5, v15, :cond_9

    .line 492
    const-string/jumbo v15, "BackgroundScanScheduler"

    const-string/jumbo v16, "found gcd less than min gcd"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v5, 0x2710

    .line 496
    :cond_9
    iput v5, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 501
    .end local v1    # "b":I
    .end local v5    # "gcd":I
    :goto_4
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 437
    return-void

    .line 498
    :cond_a
    const/16 v15, 0x7530

    iput v15, v12, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    goto :goto_4
.end method

.method private createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "originalBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    .local p2, "channelSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v7, "splitBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v4, 0x0

    .line 802
    .local v4, "channelSetIdx":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "channelSet$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 804
    .local v2, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v4, :cond_0

    .line 807
    move-object v5, p1

    .line 811
    .local v5, "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v6

    .line 812
    .local v6, "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v6}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    .line 813
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 814
    .local v0, "channel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    goto :goto_2

    .line 809
    .end local v0    # "channel":Ljava/lang/Integer;
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    .end local v5    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v6    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_0
    new-instance v5, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V

    .restart local v5    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    goto :goto_1

    .line 816
    .restart local v1    # "channel$iterator":Ljava/util/Iterator;
    .restart local v6    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 817
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    .end local v2    # "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5    # "splitBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v6    # "splitBucketChannelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_2
    return-object v7
.end method

.method private createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;
    .locals 5
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "targetBucketChannelCol"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getMissingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    move-result-object v0

    .line 633
    .local v0, "currentBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p2, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getContainingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;

    move-result-object v2

    .line 636
    .local v2, "targetBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createCurrentBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v1

    .line 638
    .local v1, "currentBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v3

    .line 639
    .local v3, "targetBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private createTargetBucketSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Ljava/util/Set;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 8
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    .prologue
    .line 607
    .local p2, "targetBucketChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->cloneScanSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v4

    .line 610
    .local v4, "targetBucketSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x0

    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 611
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "chanIdx":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 614
    .local v2, "channel":Ljava/lang/Integer;
    iget-object v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "chanIdx":I
    .local v1, "chanIdx":I
    new-instance v6, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v6, v5, v0

    move v0, v1

    .end local v1    # "chanIdx":I
    .restart local v0    # "chanIdx":I
    goto :goto_0

    .line 617
    .end local v2    # "channel":Ljava/lang/Integer;
    :cond_0
    iget v5, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    and-int/lit8 v5, v5, 0x6

    .line 616
    iput v5, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 620
    return-object v4
.end method

.method private static findBestRegularBucketIndex(II)I
    .locals 7
    .param p0, "requestedPeriod"    # I
    .param p1, "maxNumBuckets"    # I

    .prologue
    .line 524
    sget v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->NUM_OF_REGULAR_BUCKETS:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 525
    const/4 v2, -0x1

    .line 526
    .local v2, "index":I
    const v3, 0x7fffffff

    .line 527
    .local v3, "minDiff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 528
    sget-object v4, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->PREDEFINED_BUCKET_PERIODS:[I

    aget v4, v4, v1

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 529
    .local v0, "diff":I
    if-ge v0, v3, :cond_0

    .line 530
    move v3, v0

    .line 531
    move v2, v1

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "diff":I
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 535
    const-string/jumbo v4, "BackgroundScanScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not find best bucket for period "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 536
    const-string/jumbo v6, " buckets"

    .line 535
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_2
    return v2
.end method

.method private fixBuckets(Ljava/util/List;II)Ljava/util/List;
    .locals 12
    .param p2, "maxBuckets"    # I
    .param p3, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "originalBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v5, "fixedBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 833
    .local v10, "totalNumBuckets":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "originalBucket$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 834
    .local v7, "originalBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v2

    .line 835
    .local v2, "channelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getChannelSet()Ljava/util/Set;

    move-result-object v3

    .line 836
    .local v3, "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v11

    if-le v11, p3, :cond_2

    .line 838
    invoke-direct {p0, v3, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;

    move-result-object v4

    .line 839
    .local v4, "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v10

    add-int/lit8 v6, v11, -0x1

    .line 840
    .local v6, "newTotalNumBuckets":I
    if-gt v6, p2, :cond_1

    .line 841
    invoke-direct {p0, v7, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitBuckets(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 842
    .local v9, "splitBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bucket$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 843
    .local v0, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 845
    .end local v0    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_0
    move v10, v6

    goto :goto_0

    .line 847
    .end local v1    # "bucket$iterator":Ljava/util/Iterator;
    .end local v9    # "splitBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 850
    .end local v4    # "channelSetList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v6    # "newTotalNumBuckets":I
    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 853
    .end local v2    # "channelCollection":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v3    # "channelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "originalBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_3
    return-object v5
.end method

.method private mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;
    .locals 7
    .param p1, "originalSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "currentBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    .local p3, "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v1, 0x0

    .line 657
    .local v1, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x0

    .line 658
    .local v5, "wasMerged":Z
    move-object v0, p2

    .line 660
    .end local v1    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .local v0, "maxScheduledBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 661
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 662
    .local v3, "targetBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v4

    .line 663
    .local v4, "targetBucketChannelCol":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 664
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 666
    move-object v0, v3

    .line 667
    const/4 v5, 0x1

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->partiallyContainsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 670
    if-nez v1, :cond_2

    .line 671
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    move-result-object v2

    .line 676
    .local v2, "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_1
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    .line 679
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 680
    .local v1, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v5, 0x1

    goto :goto_0

    .line 674
    .end local v1    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v2    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSplitSettings(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;)Landroid/util/Pair;

    move-result-object v2

    .restart local v2    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    goto :goto_1

    .line 685
    .end local v2    # "splitSettings":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "targetBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v4    # "targetBucketChannelCol":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method private optimizeBuckets()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->getSortedActiveRegularBucketList()Ljava/util/List;

    move-result-object v12

    .line 704
    .local v12, "sortedBuckets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-interface {v12}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 708
    .local v5, "iterBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v2, "currentBucketSplitSettingsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 717
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 718
    .local v1, "currentBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 720
    .local v6, "iterSettings":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 722
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 723
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 725
    .local v3, "currentSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-interface {v5}, Ljava/util/ListIterator;->previousIndex()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 728
    .local v7, "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v7}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mergeSettingsToLowerBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;Ljava/util/ListIterator;)Landroid/util/Pair;

    move-result-object v8

    .line 731
    .local v8, "mergeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 732
    .local v15, "wasMerged":Z
    if-eqz v15, :cond_0

    .line 734
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 735
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 736
    .local v9, "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v9, :cond_0

    .line 738
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 743
    .end local v3    # "currentSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v7    # "iterTargetBuckets":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    .end local v8    # "mergeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v9    # "remainingSplitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v15    # "wasMerged":Z
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "splitSettings$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 744
    .local v13, "splitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v1, v13}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    goto :goto_2

    .line 746
    .end local v13    # "splitSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 747
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    goto :goto_0

    .line 755
    .end local v1    # "currentBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v6    # "iterSettings":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v14    # "splitSettings$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    move-object/from16 v16, v0

    sget v17, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    move-object/from16 v16, v0

    sget v17, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->EXPONENTIAL_BACK_OFF_BUCKET_IDX:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    move-result-object v4

    .line 757
    .local v4, "exponentialBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "settings$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 758
    .local v10, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 760
    .end local v10    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v4    # "exponentialBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .end local v11    # "settings$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v12
.end method

.method private partitionChannelSet(Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .param p2, "maxChannelsPerBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "originalChannelSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v1, "channelSetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 774
    .local v0, "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 776
    .local v2, "iterChannels":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 779
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    new-instance v0, Landroid/util/ArraySet;

    .end local v0    # "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .restart local v0    # "channelSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 784
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 785
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_2
    return-object v1
.end method


# virtual methods
.method public filterResultsForSettings([Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2
    .param p1, "scanDatas"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 418
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    .line 417
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->filterResultsForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;[Landroid/net/wifi/WifiScanner$ScanData;Landroid/net/wifi/WifiScanner$ScanSettings;I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApPerScan()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    return v0
.end method

.method public getMaxBatch()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    return v0
.end method

.method public getMaxBuckets()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    return v0
.end method

.method public getMaxChannelsPerBucket()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    return v0
.end method

.method public getSchedule()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSchedule:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method public getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mSettingsToScheduledBucket:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .line 426
    .local v0, "maxScheduledBucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    if-eqz v0, :cond_0

    .line 427
    iget v1, v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    return v1

    .line 429
    :cond_0
    const-string/jumbo v1, "BackgroundScanScheduler"

    const-string/jumbo v2, "No bucket found for settings"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v1, -0x1

    return v1
.end method

.method public setMaxApPerScan(I)V
    .locals 0
    .param p1, "maxApPerScan"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxApPerScan:I

    .line 359
    return-void
.end method

.method public setMaxBatch(I)V
    .locals 0
    .param p1, "maxBatch"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBatch:I

    .line 351
    return-void
.end method

.method public setMaxBuckets(I)V
    .locals 0
    .param p1, "maxBuckets"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxBuckets:I

    .line 333
    return-void
.end method

.method public setMaxChannelsPerBucket(I)V
    .locals 0
    .param p1, "maxChannels"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mMaxChannelsPerBucket:I

    .line 342
    return-void
.end method

.method public shouldReportFullScanResultForSettings(Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bucketsScanned"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 408
    invoke-virtual {p0, p3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getScheduledBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v1

    .line 407
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/wifi/scanner/ScanScheduleUtil;->shouldReportFullScanResultForSettings(Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/net/wifi/ScanResult;ILandroid/net/wifi/WifiScanner$ScanSettings;I)Z

    move-result v0

    return v0
.end method

.method public updateSchedule(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    iget-object v4, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->mBuckets:Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->clearAll()V

    .line 380
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "request$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 381
    .local v2, "request":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->addScanToBuckets(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    .line 384
    .end local v2    # "request":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->compactBuckets(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->optimizeBuckets()Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxBuckets()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->fixBuckets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, "fixedBucketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->getMaxChannelsPerBucket()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->createSchedule(Ljava/util/List;I)V

    .line 377
    return-void
.end method
