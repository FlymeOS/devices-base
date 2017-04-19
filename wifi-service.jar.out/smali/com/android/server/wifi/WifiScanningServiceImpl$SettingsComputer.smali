.class Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsComputer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    }
.end annotation


# static fields
.field private static final DEFAULT_BASE_PERIOD_MS:I = 0x1388

.field private static final DEFAULT_REPORT_THRESHOLD_NUM_SCANS:I = 0xa

.field private static final DEFAULT_REPORT_THRESHOLD_PERCENT:I = 0x64

.field private static final MAX_CHANNELS:I = 0x20


# instance fields
.field mChannelToBucketMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    const/16 v6, 0x19

    const/4 v4, 0x1

    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 927
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    .line 942
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v3, p0, v4, v7, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v3, v2, v7

    .line 943
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v3, p0, v8, v8, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v3, v2, v4

    .line 944
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    invoke-direct {v3, p0, v9, v9, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 945
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v4, 0x1e

    const/16 v5, 0x37

    invoke-direct {v3, p0, v4, v6, v5}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 946
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v4, 0x3c

    const/16 v5, 0x37

    const/16 v6, 0xf0

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 947
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v4, 0x12c

    const/16 v5, 0xf0

    const/16 v6, 0x1f4

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    aput-object v3, v2, v8

    .line 948
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v4, 0x258

    const/16 v5, 0x1f4

    const/16 v6, 0x5dc

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 949
    new-instance v3, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    const/16 v4, 0x708

    const/16 v5, 0x5dc

    const v6, 0xfa000

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;III)V

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 941
    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    .line 958
    new-instance v2, Lcom/android/server/wifi/WifiNative$ScanSettings;

    invoke-direct {v2}, Lcom/android/server/wifi/WifiNative$ScanSettings;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 959
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 960
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/16 v3, 0x1388

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 961
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    const/16 v3, 0x64

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    .line 962
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v9, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 964
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    new-array v3, v3, [Lcom/android/server/wifi/WifiNative$BucketSettings;

    iput-object v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 965
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 966
    new-instance v0, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    .line 967
    .local v0, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput v1, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    .line 968
    iput v7, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 969
    const/16 v2, 0x20

    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 970
    iput v7, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 971
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aput-object v0, v2, v1

    .line 965
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 975
    .end local v0    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    .line 927
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    return-void
.end method

.method private getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 13
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 983
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 984
    .local v3, "channels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    if-nez v3, :cond_0

    .line 986
    iget v7, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v3

    .line 989
    :cond_0
    if-nez v3, :cond_1

    .line 991
    const-string/jumbo v7, "No channels to scan!!"

    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 992
    return v12

    .line 995
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    array-length v6, v7

    .line 997
    .local v6, "mostFrequentBucketIndex":I
    array-length v10, v3

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v4, v3, v9

    .line 998
    .local v4, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 999
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1000
    .local v1, "bucket":I
    if-ge v1, v6, :cond_2

    .line 1001
    move v6, v1

    .line 997
    .end local v1    # "bucket":I
    :cond_2
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 1006
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    const/4 v0, -0x1

    .line 1007
    .local v0, "bestBucketIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 1008
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    aget-object v2, v7, v5

    .line 1009
    .local v2, "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    iget v7, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMinInSecond:I

    mul-int/lit16 v7, v7, 0x3e8

    iget v9, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-gt v7, v9, :cond_5

    .line 1010
    iget v7, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    iget v9, v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMaxInSecond:I

    mul-int/lit16 v9, v9, 0x3e8

    if-ge v7, v9, :cond_5

    .line 1012
    move v0, v5

    .line 1017
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_4
    if-ge v6, v0, :cond_7

    .line 1018
    array-length v7, v3

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v4, v3, v8

    .line 1019
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v9, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1007
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1021
    .end local v2    # "bucket":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "returning mf bucket number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 1022
    return v6

    .line 1023
    :cond_7
    if-eq v0, v12, :cond_9

    .line 1024
    array-length v9, v3

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_8

    aget-object v4, v3, v7

    .line 1025
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget-object v8, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1027
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "returning best bucket number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 1028
    return v0

    .line 1031
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find suitable bucket for period "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 1032
    return v12
.end method


# virtual methods
.method addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 14
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v2

    .line 1042
    .local v2, "bucketIndex":I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_0

    .line 1043
    const-string/jumbo v10, "Ignoring invalid settings"

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 1044
    const/4 v10, -0x1

    return v10

    .line 1047
    :cond_0
    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1048
    .local v6, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v10, :cond_1

    .line 1049
    if-nez v6, :cond_2

    .line 1052
    :cond_1
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v6

    .line 1053
    if-nez v6, :cond_3

    .line 1055
    const-string/jumbo v10, "No channels to scan!!"

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap5(Ljava/lang/String;)V

    .line 1056
    const/4 v10, -0x1

    return v10

    .line 1050
    :cond_2
    array-length v10, v6

    if-eqz v10, :cond_1

    .line 1061
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "merging "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " channels "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1062
    const-string/jumbo v11, " for period "

    .line 1061
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1062
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1061
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1063
    const-string/jumbo v11, " maxScans "

    .line 1061
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1063
    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 1061
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 1065
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v10, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v1, v10, v2

    .line 1066
    .local v1, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-nez v10, :cond_7

    .line 1067
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-nez v10, :cond_6

    const/4 v0, 0x1

    .line 1068
    .local v0, "added":Z
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "existing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " channels "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 1070
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1071
    .local v9, "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    const/4 v10, 0x0

    array-length v11, v6

    :goto_1
    if-ge v10, v11, :cond_9

    aget-object v4, v6, v10

    .line 1075
    .local v4, "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v7, 0x0

    .line 1076
    .local v7, "found":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget v12, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-ge v8, v12, :cond_4

    .line 1077
    iget v12, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iget-object v13, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v13, v13, v8

    iget v13, v13, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-ne v12, v13, :cond_8

    .line 1078
    const/4 v7, 0x1

    .line 1083
    :cond_4
    if-nez v7, :cond_5

    .line 1084
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1067
    .end local v0    # "added":Z
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v7    # "found":Z
    .end local v8    # "i":I
    .end local v9    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "added":Z
    goto :goto_0

    .line 1066
    .end local v0    # "added":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "added":Z
    goto :goto_0

    .line 1076
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v7    # "found":Z
    .restart local v8    # "i":I
    .restart local v9    # "newChannels":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/wifi/WifiScanner$ChannelSpec;>;"
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1090
    .end local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v7    # "found":Z
    .end local v8    # "i":I
    :cond_9
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v10, :cond_a

    .line 1091
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    array-length v11, v11

    if-le v10, v11, :cond_10

    .line 1093
    :cond_a
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 1094
    iget-object v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap2([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v10

    .line 1095
    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap1([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v11

    .line 1094
    or-int/2addr v10, v11

    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    .line 1096
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iput-object v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .line 1097
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "switching to using band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 1111
    :cond_b
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    if-ge v10, v11, :cond_c

    .line 1113
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 1118
    :cond_c
    if-eqz v0, :cond_d

    .line 1119
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mTimeBuckets:[Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;

    aget-object v10, v10, v2

    iget v10, v10, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodInSecond:I

    mul-int/lit16 v10, v10, 0x3e8

    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 1120
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 1123
    :cond_d
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-eqz v10, :cond_e

    .line 1124
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v10, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    if-le v10, v11, :cond_e

    .line 1125
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    iput v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 1129
    :cond_e
    iget v10, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-eqz v10, :cond_f

    .line 1130
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v10, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    if-le v10, v11, :cond_f

    .line 1131
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v11, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    iput v11, v10, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 1135
    :cond_f
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    return v10

    .line 1099
    :cond_10
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "desiredChannelSpec$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1101
    .restart local v4    # "desiredChannelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "adding new channel spec "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 1103
    new-instance v3, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v3}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 1104
    .local v3, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget v10, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iput v10, v3, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 1105
    iget-object v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iget v11, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    aput-object v3, v10, v11

    .line 1106
    iget v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    .line 1107
    iget-object v10, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mChannelToBucketMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v3, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public compressBuckets()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1143
    const/4 v1, 0x0

    .line 1144
    .local v1, "num_buckets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1145
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    if-nez v2, :cond_0

    .line 1146
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-eqz v2, :cond_1

    .line 1147
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 1148
    add-int/lit8 v1, v1, 0x1

    .line 1144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1153
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1156
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput v1, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    .line 1157
    if-eqz v1, :cond_4

    .line 1158
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iput v3, v2, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 1142
    :cond_4
    return-void
.end method

.method public getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->mSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    return-object v0
.end method

.method prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getBestBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    .line 1035
    return-void
.end method
