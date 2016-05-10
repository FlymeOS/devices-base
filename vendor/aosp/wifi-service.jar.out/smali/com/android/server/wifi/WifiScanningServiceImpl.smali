.class public Lcom/android/server/wifi/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_HOTLIST_AP_FOUND:I = 0x27102

.field private static final CMD_HOTLIST_AP_LOST:I = 0x27103

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27105

.field private static final CMD_WIFI_CHANGE_DETECTED:I = 0x27104

.field private static final DBG:Z = true

.field private static final INVALID_KEY:I = 0x0

.field private static final MIN_PERIOD_PER_CHANNEL_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"


# instance fields
.field private mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

.field mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

.field mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 181
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 184
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiScanningServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceConnectivityInternalPermission()V

    return-void
.end method

.method static synthetic access$1300(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 1
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 1
    .param p0, "x0"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    return-object v0
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiScanningServiceImpl"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private static getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 7
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 1561
    const/4 v1, 0x0

    .line 1562
    .local v1, "band":I
    move-object v0, p0

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1563
    .local v2, "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/16 v5, 0x960

    iget v6, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-gt v5, v6, :cond_1

    iget v5, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v6, 0x9c4

    if-ge v5, v6, :cond_1

    .line 1564
    or-int/lit8 v1, v1, 0x1

    .line 1562
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1565
    :cond_1
    const/16 v5, 0x13ec

    iget v6, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-gt v5, v6, :cond_0

    iget v5, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v6, 0x1770

    if-ge v5, v6, :cond_0

    .line 1566
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1571
    .end local v2    # "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_2
    return v1
.end method

.method private static getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 7
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    .line 1574
    const/4 v1, 0x0

    .line 1575
    .local v1, "band":I
    move-object v0, p0

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$ChannelSettings;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1576
    .local v2, "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    const/16 v5, 0x960

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-gt v5, v6, :cond_1

    iget v5, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v6, 0x9c4

    if-ge v5, v6, :cond_1

    .line 1577
    or-int/lit8 v1, v1, 0x1

    .line 1575
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1578
    :cond_1
    const/16 v5, 0x13ec

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-gt v5, v6, :cond_0

    iget v5, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v6, 0x1770

    if-ge v5, v6, :cond_0

    .line 1579
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1584
    .end local v2    # "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_2
    return v1
.end method

.method private static getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 5
    .param p0, "band"    # I

    .prologue
    .line 1548
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 1549
    .local v1, "channels":[I
    if-eqz v1, :cond_0

    .line 1550
    array-length v3, v1

    new-array v0, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1551
    .local v0, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1552
    new-instance v3, Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget v4, v1, v2

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v3, v0, v2

    .line 1551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1556
    .end local v0    # "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    new-array v0, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    :cond_1
    return-object v0
.end method


# virtual methods
.method addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v1, 0x0

    .line 1019
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_0

    .line 1020
    const-string v2, "WifiScanningService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failing scan request because periodInMs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_0
    return v1

    .line 1024
    :cond_0
    const/4 v0, 0x0

    .line 1025
    .local v0, "minSupportedPeriodMs":I
    iget-object v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v2, :cond_2

    .line 1026
    iget-object v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    mul-int/lit16 v0, v2, 0xc8

    .line 1042
    :cond_1
    :goto_1
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-ge v2, v0, :cond_5

    .line 1043
    const-string v2, "WifiScanningService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failing scan request because minSupportedPeriodMs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the request wants "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1028
    :cond_2
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 1030
    add-int/lit16 v0, v0, 0x3e8

    .line 1032
    :cond_3
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 1034
    add-int/lit16 v0, v0, 0x3e8

    .line 1036
    :cond_4
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 1038
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_1

    .line 1048
    :cond_5
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1050
    const/4 v1, 0x1

    goto :goto_0

    .line 1052
    :cond_6
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1053
    const-string v2, "WifiScanningService"

    const-string v3, "Failing scan request because failed to reset scan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 1136
    return-void
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 8
    .param p1, "band"    # I

    .prologue
    .line 71
    invoke-static {p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v3

    .line 72
    .local v3, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 74
    .local v2, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v7, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, "b":Landroid/os/Bundle;
    const-string v7, "Channels"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    return-object v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method getScanResults(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .prologue
    .line 1064
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getScanResults()[Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 1065
    .local v0, "results":[Landroid/net/wifi/ScanResult;
    invoke-virtual {p1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/ScanResult;)V

    .line 1066
    return-object v0
.end method

.method removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1059
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    .line 1061
    return-void
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 726
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 727
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27012

    iput v1, v0, Landroid/os/Message;->what:I

    .line 728
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 729
    new-instance v1, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v1, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 732
    .restart local v0    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 709
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 710
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 711
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 712
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 713
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 715
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 716
    .restart local v0    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1139
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1140
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1141
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1143
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1146
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1147
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1148
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1150
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method resetBuckets()Z
    .locals 20

    .prologue
    .line 971
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$1;)V

    .line 972
    .local v2, "c":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 973
    .local v4, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 974
    .local v3, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    move-result-object v12

    .line 975
    .local v12, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 976
    .local v11, "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    .line 980
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v12    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 981
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScans()Ljava/util/Iterator;

    move-result-object v9

    .line 982
    .local v9, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 983
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 985
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 986
    .local v8, "id":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 987
    .restart local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v10

    .line 988
    .local v10, "newPeriodInMs":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_4

    .line 989
    const-string v13, "WifiScanningService"

    const-string v14, "could not find a good bucket"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v13, 0x0

    .line 1012
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v8    # "id":I
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "newPeriodInMs":I
    .end local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :goto_2
    return v13

    .line 992
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .restart local v8    # "id":I
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v10    # "newPeriodInMs":I
    .restart local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_4
    iget v13, v11, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v10, v13, :cond_3

    .line 993
    invoke-virtual {v3, v8, v11, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V

    goto :goto_1

    .line 998
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v8    # "id":I
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "newPeriodInMs":I
    .end local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->compressBuckets()V

    .line 1000
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v11

    .line 1001
    .local v11, "s":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget v13, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-nez v13, :cond_6

    .line 1002
    const-string v13, "WifiScanningService"

    const-string v14, "Stopping scan because there are no buckets"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 1004
    const/4 v13, 0x1

    goto :goto_2

    .line 1006
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v11, v13}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1007
    const-string v13, "WifiScanningService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Successfully started scan of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " buckets at"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v13, 0x1

    goto :goto_2

    .line 1011
    :cond_7
    const-string v13, "WifiScanningService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to start scan of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " buckets"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method resetHotlist()V
    .locals 13

    .prologue
    .line 1070
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1071
    .local v3, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    const/4 v8, 0x0

    .line 1073
    .local v8, "num_hotlist_ap":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1074
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v1

    .line 1075
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1076
    .local v9, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v12, v9, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    add-int/2addr v8, v12

    .line 1077
    goto :goto_0

    .line 1080
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_1
    if-nez v8, :cond_2

    .line 1081
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetHotlist()V

    .line 1099
    :goto_1
    return-void

    .line 1083
    :cond_2
    new-array v0, v8, [Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1084
    .local v0, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const/4 v7, 0x0

    .line 1085
    .local v7, "index":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1086
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v11

    .line 1087
    .local v11, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1088
    .restart local v9    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v12, v9, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    if-ge v4, v12, :cond_4

    .line 1089
    iget-object v12, v9, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v12, v12, v4

    aput-object v12, v0, v7

    .line 1088
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1094
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v4    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v11    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    :cond_5
    new-instance v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 1095
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v0, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1096
    const/4 v12, 0x3

    iput v12, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    .line 1097
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v10, v12}, Lcom/android/server/wifi/WifiNative;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    goto :goto_1
.end method

.method resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1107
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeHostlistSettings(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1109
    return-void
.end method

.method setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    .prologue
    .line 1102
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1104
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiScanningService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 193
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    .line 194
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .line 195
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    .line 197
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "wifi_scan_available"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->start()V

    .line 213
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->start()V

    .line 214
    return-void
.end method

.method trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->enable()V

    .line 1115
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addSignificantWifiChange(I)V

    .line 1116
    return-void
.end method

.method untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1119
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeSignificantWifiChange(I)V

    .line 1120
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1121
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1122
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getWifiChangeHandlers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->disable()V

    goto :goto_0
.end method
