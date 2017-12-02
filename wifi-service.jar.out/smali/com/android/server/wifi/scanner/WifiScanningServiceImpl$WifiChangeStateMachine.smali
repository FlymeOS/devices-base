.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiChangeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;
    }
.end annotation


# static fields
.field private static final ACTION_TIMEOUT:Ljava/lang/String; = "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

.field private static final MAX_APS_TO_TRACK:I = 0x3

.field private static final MOVING_SCAN_PERIOD_MS:I = 0x2710

.field private static final MOVING_STATE_TIMEOUT_MS:I = 0x7530

.field private static final STATIONARY_SCAN_PERIOD_MS:I = 0x1388


# instance fields
.field private final mActiveWifiChangeHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBssids:[Landroid/net/wifi/ScanResult;

.field mDefaultState:Lcom/android/internal/util/State;

.field private mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

.field mMovingState:Lcom/android/internal/util/State;

.field mStationaryState:Lcom/android/internal/util/State;

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)[Landroid/net/wifi/ScanResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "period"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reconfigureScan([Landroid/net/wifi/WifiScanner$ScanData;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 2144
    const-string/jumbo v0, "SignificantChangeStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2131
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 2132
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    .line 2133
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    .line 2141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    .line 2147
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 2148
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 2149
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 2152
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 2143
    return-void
.end method

.method private addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v2, 0x0

    .line 2474
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    .line 2476
    const v1, 0x27002

    .line 2475
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    .line 2472
    :cond_0
    return-void
.end method

.method private addWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 2502
    if-nez p1, :cond_0

    .line 2503
    const-string/jumbo v0, "WifiScanningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing wifi change request ClientInfo not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const/4 v0, 0x0

    return v0

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2508
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-nez v0, :cond_1

    .line 2510
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    move-result v2

    new-instance v3, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    .line 2509
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    .line 2511
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->register()V

    .line 2513
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 10
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 2429
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v7, v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 2430
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "too few APs ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2431
    const-string/jumbo v9, ") available to track wifi change"

    .line 2430
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 2432
    return-void

    .line 2437
    :cond_0
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v7, v7

    new-array v7, v7, [Landroid/net/wifi/ScanResult;

    iput-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    .line 2438
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2440
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 2441
    new-instance v5, Landroid/net/wifi/ScanResult;

    invoke-direct {v5}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 2442
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    iput-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2443
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    aput-object v5, v7, v3

    .line 2444
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2448
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    .line 2451
    new-instance v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v6}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 2452
    .local v6, "settings2":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v7, 0x0

    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 2453
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 2454
    const/4 v3, 0x0

    .line 2455
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2456
    .local v0, "channel":Ljava/lang/Integer;
    iget-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    new-instance v8, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v8, v7, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 2459
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_2
    iget v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 2460
    invoke-direct {p0, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 2463
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 2427
    return-void
.end method

.method private reconfigureScan([Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 22
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "period"    # I

    .prologue
    .line 2343
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "too few APs ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ") available to track wifi change"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 2345
    return-void

    .line 2348
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    .line 2351
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2352
    .local v4, "bssidToScanResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    const/16 v17, 0x0

    aget-object v17, p1, v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v10, v18, v17

    .line 2353
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 2354
    .local v13, "saved":Landroid/net/wifi/ScanResult;
    if-nez v13, :cond_2

    .line 2355
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2356
    :cond_2
    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v20, v0

    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 2357
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2362
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v13    # "saved":Landroid/net/wifi/ScanResult;
    :cond_3
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v3, v0, [Landroid/net/wifi/ScanResult;

    .line 2363
    .local v3, "brightest":[Landroid/net/wifi/ScanResult;
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    .line 2364
    .local v12, "results2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "result$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 2365
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 2366
    aget-object v17, v3, v8

    if-eqz v17, :cond_5

    .line 2367
    aget-object v17, v3, v8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 2368
    :cond_5
    array-length v9, v3

    .local v9, "k":I
    :goto_4
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    if-le v9, v0, :cond_6

    .line 2369
    add-int/lit8 v17, v9, -0x1

    add-int/lit8 v18, v9, -0x2

    aget-object v18, v3, v18

    aput-object v18, v3, v17

    .line 2368
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 2371
    :cond_6
    aput-object v10, v3, v8

    goto :goto_2

    .line 2365
    .end local v9    # "k":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2378
    .end local v8    # "j":I
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v5, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_c

    .line 2380
    const/4 v6, 0x0

    .line 2381
    .local v6, "found":Z
    add-int/lit8 v8, v7, 0x1

    .restart local v8    # "j":I
    :goto_6
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 2382
    aget-object v17, v3, v8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    aget-object v18, v3, v7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2383
    const/4 v6, 0x1

    .line 2381
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2386
    :cond_a
    if-nez v6, :cond_b

    .line 2387
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2394
    .end local v6    # "found":Z
    .end local v8    # "j":I
    :cond_c
    new-instance v14, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v14}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 2395
    .local v14, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 2396
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 2397
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    .line 2398
    iget-object v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v19, v18, v7

    .line 2397
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 2401
    :cond_d
    move/from16 v0, p2

    iput v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 2402
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 2404
    new-instance v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v15}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    .line 2405
    .local v15, "settings2":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    .line 2406
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    .line 2407
    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    .line 2408
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    .line 2409
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/net/wifi/WifiScanner$BssidInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 2411
    const/4 v7, 0x0

    :goto_8
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_e

    .line 2412
    new-instance v2, Landroid/net/wifi/WifiScanner$BssidInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    .line 2413
    .local v2, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    .line 2414
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x64

    div-int/lit8 v17, v17, 0x20

    add-int/lit8 v16, v17, 0x2

    .line 2415
    .local v16, "threshold":I
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    .line 2416
    aget-object v17, v3, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    .line 2417
    iget-object v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    move-object/from16 v17, v0

    aput-object v2, v17, v7

    .line 2411
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2423
    .end local v2    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v16    # "threshold":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 2424
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    .line 2341
    return-void
.end method

.method private removeScanRequest()V
    .locals 2

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    .line 2483
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    .line 2484
    const v1, 0x27003

    .line 2483
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(I)V

    .line 2480
    :cond_0
    return-void
.end method

.method private removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 2517
    if-eqz p1, :cond_0

    .line 2518
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2519
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChangeOnEmpty()V

    .line 2516
    :cond_0
    return-void
.end method

.method private reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 7
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2539
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 2540
    .local v4, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2541
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2542
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2543
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 2544
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2545
    .local v2, "handler":I
    const v5, 0x2700f

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    goto :goto_0

    .line 2537
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    .end local v2    # "handler":I
    :cond_0
    return-void
.end method

.method private reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 7
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2552
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 2553
    .local v4, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2554
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2555
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2556
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 2557
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2558
    .local v2, "handler":I
    const v5, 0x27010

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    goto :goto_0

    .line 2550
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    .end local v2    # "handler":I
    :cond_0
    return-void
.end method

.method private trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->untrackSignificantWifiChange()V

    .line 2491
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z

    .line 2488
    :cond_0
    return-void
.end method

.method private untrackSignificantWifiChange()V
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->untrackSignificantWifiChange()V

    .line 2495
    :cond_0
    return-void
.end method

.method private untrackSignificantWifiChangeOnEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2524
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2526
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    .line 2527
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChange()V

    .line 2529
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    if-eqz v0, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->cleanup()V

    .line 2531
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 2523
    :cond_1
    return-void
.end method


# virtual methods
.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    .line 2469
    const v0, 0x27104

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2468
    return-void
.end method

.method public removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .prologue
    .line 2156
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2157
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2159
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 2160
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2163
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChangeOnEmpty()V

    .line 2155
    return-void
.end method
