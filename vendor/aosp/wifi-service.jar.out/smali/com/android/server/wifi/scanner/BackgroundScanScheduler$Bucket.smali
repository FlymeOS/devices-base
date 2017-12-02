.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bucket"
.end annotation


# instance fields
.field public bucketId:I

.field private final mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field private final mScanSettingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public period:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .param p2, "period"    # I

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    .line 138
    iput p2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    invoke-static {p1}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get3(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 137
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
    .param p2, "originalBucket"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    .prologue
    .line 148
    iget v2, p2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    .line 149
    invoke-virtual {p2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->getSettingsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 150
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method

.method private createChannelSettings(I)Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    .line 159
    .local v0, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iput p1, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    .line 160
    return-object v0
.end method


# virtual methods
.method public addSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createBucketSettings(II)Lcom/android/server/wifi/WifiNative$BucketSettings;
    .locals 10
    .param p1, "bucketId"    # I
    .param p2, "maxChannels"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->bucketId:I

    .line 199
    const/4 v4, 0x4

    .line 200
    .local v4, "reportEvents":I
    const/4 v3, 0x0

    .line 201
    .local v3, "maxPeriodInMs":I
    const/4 v7, 0x0

    .line 202
    .local v7, "stepCount":I
    const/4 v0, 0x0

    .line 204
    .local v0, "bucketIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 205
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 206
    .local v6, "setting":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget v5, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 207
    .local v5, "requestedReportEvents":I
    and-int/lit8 v8, v5, 0x4

    if-nez v8, :cond_0

    .line 208
    and-int/lit8 v4, v4, -0x5

    .line 210
    :cond_0
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_1

    .line 211
    or-int/lit8 v4, v4, 0x1

    .line 213
    :cond_1
    and-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_2

    .line 214
    or-int/lit8 v4, v4, 0x2

    .line 220
    :cond_2
    if-nez v2, :cond_3

    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    if-eqz v8, :cond_3

    .line 221
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v9, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v8, v9, :cond_3

    .line 225
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 226
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get1()I

    move-result v9

    .line 225
    invoke-static {v8, v9}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-wrap0(II)I

    move-result v0

    .line 227
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    move-result-object v8

    aget v8, v8, v0

    iput v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    .line 228
    iget v8, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    iget v9, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    if-ge v8, v9, :cond_4

    .line 229
    iget v3, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    .line 231
    :goto_1
    iget v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 204
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_4
    iget v3, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    goto :goto_1

    .line 235
    .end local v5    # "requestedReportEvents":I
    .end local v6    # "setting":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    new-instance v1, Lcom/android/server/wifi/WifiNative$BucketSettings;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$BucketSettings;-><init>()V

    .line 236
    .local v1, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iput p1, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->bucket:I

    .line 237
    iput v4, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    .line 238
    iget v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->period:I

    iput v8, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 239
    iput v3, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->max_period_ms:I

    .line 240
    iput v7, v1, Lcom/android/server/wifi/WifiNative$BucketSettings;->step_count:I

    .line 241
    iget-object v8, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v8, v1, p2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V

    .line 242
    return-object v1
.end method

.method public getChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    return-object v0
.end method

.method public getSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    return-object v0
.end method

.method public removeSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->updateChannelCollection()V

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateChannelCollection()V
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->clear()V

    .line 185
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mScanSettingsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 186
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;->mChannelCollection:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    .line 183
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method
