.class public abstract Lcom/android/server/wifi/scanner/ChannelHelper;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    }
.end annotation


# static fields
.field protected static final NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public static final SCAN_PERIOD_PER_CHANNEL_MS:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    sput-object v0, Lcom/android/server/wifi/scanner/ChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "band"    # I

    .prologue
    .line 297
    packed-switch p0, :pswitch_data_0

    .line 314
    :pswitch_0
    const-string/jumbo v0, "invalid band"

    return-object v0

    .line 299
    :pswitch_1
    const-string/jumbo v0, "unspecified"

    return-object v0

    .line 301
    :pswitch_2
    const-string/jumbo v0, "24Ghz"

    return-object v0

    .line 303
    :pswitch_3
    const-string/jumbo v0, "5Ghz (no DFS)"

    return-object v0

    .line 305
    :pswitch_4
    const-string/jumbo v0, "5Ghz (DFS only)"

    return-object v0

    .line 307
    :pswitch_5
    const-string/jumbo v0, "5Ghz (DFS incl)"

    return-object v0

    .line 309
    :pswitch_6
    const-string/jumbo v0, "24Ghz & 5Ghz (no DFS)"

    return-object v0

    .line 311
    :pswitch_7
    const-string/jumbo v0, "24Ghz & 5Ghz (DFS incl)"

    return-object v0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static toString(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 242
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString([Landroid/net/wifi/WifiScanner$ChannelSpec;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcom/android/server/wifi/WifiNative$BucketSettings;)Ljava/lang/String;
    .locals 2
    .param p0, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    .prologue
    .line 255
    iget v0, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    iget v1, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString([Lcom/android/server/wifi/WifiNative$ChannelSettings;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-static {v0}, Lcom/android/server/wifi/scanner/ChannelHelper;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toString([Landroid/net/wifi/WifiScanner$ChannelSpec;)Ljava/lang/String;
    .locals 3
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    const-string/jumbo v2, "null"

    return-object v2

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 270
    aget-object v2, p0, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 272
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toString([Lcom/android/server/wifi/WifiNative$ChannelSettings;I)Ljava/lang/String;
    .locals 3
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;
    .param p1, "numChannels"    # I

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    const-string/jumbo v2, "null"

    return-object v2

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 287
    aget-object v2, p0, v0

    iget v2, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_1

    .line 289
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.end method

.method public abstract estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I
.end method

.method public abstract getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
.end method

.method public abstract settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z
.end method

.method public updateChannels()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
