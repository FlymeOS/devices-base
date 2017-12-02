.class public Lcom/android/server/wifi/util/ApConfigUtil;
.super Ljava/lang/Object;
.source "ApConfigUtil.java"


# static fields
.field public static final DEFAULT_AP_BAND:I = 0x0

.field public static final DEFAULT_AP_CHANNEL:I = 0x6

.field public static final ERROR_GENERIC:I = 0x2

.field public static final ERROR_NO_CHANNEL:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApConfigUtil"

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseApChannel(ILjava/util/ArrayList;[I)I
    .locals 5
    .param p0, "apBand"    # I
    .param p2, "allowed5GFreqList"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 73
    if-eqz p0, :cond_0

    .line 74
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 75
    const-string/jumbo v1, "ApConfigUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid band: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v4

    .line 79
    :cond_0
    if-nez p0, :cond_3

    .line 81
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 82
    :cond_1
    const-string/jumbo v1, "ApConfigUtil"

    const-string/jumbo v2, "2GHz allowed channel list not specified"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x6

    return v1

    .line 88
    :cond_2
    sget-object v1, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 89
    .local v0, "index":I
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 93
    .end local v0    # "index":I
    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    .line 96
    sget-object v1, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v1, p2, v1

    .line 95
    invoke-static {v1}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToChannel(I)I

    move-result v1

    return v1

    .line 99
    :cond_4
    const-string/jumbo v1, "ApConfigUtil"

    const-string/jumbo v2, "No available channels on 5GHz band"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v4
.end method

.method public static convertFrequencyToChannel(I)I
    .locals 1
    .param p0, "frequency"    # I

    .prologue
    .line 51
    const/16 v0, 0x96c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9a8

    if-gt p0, v0, :cond_0

    .line 52
    add-int/lit16 v0, p0, -0x96c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 53
    :cond_0
    const/16 v0, 0x9b4

    if-ne p0, v0, :cond_1

    .line 54
    const/16 v0, 0xe

    return v0

    .line 55
    :cond_1
    const/16 v0, 0x1432

    if-lt p0, v0, :cond_2

    const/16 v0, 0x16c1

    if-gt p0, v0, :cond_2

    .line 57
    add-int/lit16 v0, p0, -0x1432

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x22

    return v0

    .line 60
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/WifiNative;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iput v2, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 119
    iput v5, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 120
    return v2

    .line 124
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v0, v3, :cond_1

    .line 125
    if-nez p1, :cond_1

    .line 126
    const-string/jumbo v0, "ApConfigUtil"

    const-string/jumbo v1, "5GHz band is not allowed without country code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v4

    .line 131
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v0, :cond_3

    .line 133
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 134
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 132
    invoke-static {v0, p2, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->chooseApChannel(ILjava/util/ArrayList;[I)I

    move-result v0

    iput v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 135
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string/jumbo v0, "ApConfigUtil"

    const-string/jumbo v1, "Failed to get available channel."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v3

    .line 143
    :cond_2
    iput v2, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 144
    iput v5, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 148
    :cond_3
    return v2
.end method
