.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 5387
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5392
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5394
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 5395
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 5398
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 5401
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5402
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    .line 5405
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    .line 5390
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5411
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5412
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 5413
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 5416
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5417
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    .line 5420
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    .line 5409
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 48
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 5435
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    sparse-switch v43, :sswitch_data_0

    .line 6343
    const/16 v43, 0x0

    return v43

    .line 5437
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 5438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5439
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 5440
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 5442
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 5444
    :cond_1
    if-eqz v6, :cond_2

    .line 5446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    if-eqz v43, :cond_2

    .line 5447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    .line 5448
    const/16 v45, 0x0

    .line 5447
    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;Z)Z

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5452
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    .line 5453
    const/16 v45, 0x2

    .line 5452
    invoke-virtual/range {v43 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 5456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v43

    const v44, 0x2402b

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    .line 5459
    const/16 v44, 0x2

    .line 5460
    const/16 v45, 0x1

    .line 5458
    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    .line 5463
    const/16 v45, 0x1

    .line 5461
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6345
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v43, 0x1

    return v43

    .line 5466
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v43

    const/16 v44, 0x2

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 5467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v43

    const v44, 0x24007

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_4

    .line 5469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    .line 5470
    const/16 v45, 0x3

    .line 5469
    invoke-virtual/range {v43 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 5474
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    .line 5475
    const/16 v44, 0x3

    .line 5476
    const/16 v45, 0x1

    .line 5474
    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    .line 5478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 5479
    const/16 v46, 0x2

    .line 5477
    invoke-virtual/range {v43 .. v46}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 5482
    :sswitch_2
    const-string/jumbo v43, "WifiStateMachine"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Supplicant SSID temporary disabled:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    .line 5482
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5485
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 5486
    const/16 v45, 0x3

    .line 5484
    invoke-virtual/range {v43 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 5488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    .line 5489
    const/16 v44, 0x4

    .line 5490
    const/16 v45, 0x1

    .line 5488
    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    .line 5492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 5493
    const/16 v46, 0x2

    .line 5491
    invoke-virtual/range {v43 .. v46}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 5496
    :sswitch_3
    const-string/jumbo v43, "WifiStateMachine"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Supplicant SSID reenable:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    .line 5496
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5502
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v35

    .line 5505
    .local v35, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v43

    if-nez v43, :cond_6

    .line 5506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v43

    sget-object v44, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_5

    .line 5507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5509
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Detected an interface down, restart driver"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x2000d

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5520
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v43

    if-nez v43, :cond_8

    sget-object v43, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_8

    .line 5521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v43

    sget-object v44, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_8

    .line 5522
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v43

    if-eqz v43, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5523
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5530
    :cond_8
    sget-object v43, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_3

    .line 5531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    goto/16 :goto_0

    .line 5535
    .end local v35    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_9

    .line 5536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 5539
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 5540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 5545
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5546
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 5545
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    if-nez v43, :cond_a

    .line 5547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v45

    .line 5547
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5549
    const-string/jumbo v45, " sendingUserId="

    .line 5547
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5549
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5547
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5554
    :cond_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 5556
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 5557
    const/16 v45, 0x0

    .line 5556
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v43

    if-nez v43, :cond_b

    .line 5558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Not authorized to update network  config="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5559
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 5558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5560
    const-string/jumbo v45, " cnid="

    .line 5558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5560
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 5558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5561
    const-string/jumbo v45, " uid="

    .line 5558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5561
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5558
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5566
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v28

    .line 5567
    .local v28, "res":I
    if-gez v28, :cond_d

    .line 5568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5597
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x20034

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5570
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 5571
    .local v11, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_c

    if-eqz v9, :cond_c

    .line 5573
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v21

    .line 5574
    .local v21, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v43, v0

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 5575
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v43

    if-nez v43, :cond_c

    .line 5579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 5580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 5581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5582
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 5581
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v24

    .line 5583
    .local v24, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    if-eqz v43, :cond_e

    .line 5584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    .line 5589
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 5593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    sget-object v44, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    const/16 v45, -0x3

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v46

    move-object/from16 v3, v47

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_1

    .line 5601
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v24    # "persist":Z
    .end local v28    # "res":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5602
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 5601
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    if-nez v43, :cond_f

    .line 5603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v45

    .line 5603
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5605
    const-string/jumbo v45, " sendingUserId="

    .line 5603
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5605
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5603
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5609
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5611
    .local v19, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 5612
    const/16 v45, 0x0

    .line 5611
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v19

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    move-result v43

    if-nez v43, :cond_10

    .line 5613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Not authorized to remove network  cnid="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5615
    const-string/jumbo v45, " uid="

    .line 5613
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5615
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5613
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5620
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    move-result v23

    .line 5621
    .local v23, "ok":Z
    if-nez v23, :cond_11

    .line 5622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5624
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    if-eqz v23, :cond_12

    const/16 v43, 0x1

    :goto_2
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/16 v43, -0x1

    goto :goto_2

    .line 5628
    .end local v19    # "netId":I
    .end local v23    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5629
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 5628
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    if-nez v43, :cond_13

    .line 5630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v45

    .line 5630
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5632
    const-string/jumbo v45, " sendingUserId="

    .line 5630
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5632
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5630
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5637
    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_14

    const/4 v13, 0x1

    .line 5638
    .local v13, "disableOthers":Z
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5639
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5640
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_15

    .line 5641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "No network with id = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5637
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v19    # "netId":I
    :cond_14
    const/4 v13, 0x0

    .restart local v13    # "disableOthers":Z
    goto :goto_3

    .line 5648
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v19    # "netId":I
    :cond_15
    if-eqz v13, :cond_16

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 5654
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "any"

    move-object/from16 v0, v43

    move/from16 v1, v19

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 5656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5657
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 5656
    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v13, v1}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v23

    .line 5658
    .restart local v23    # "ok":Z
    if-nez v23, :cond_17

    .line 5659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5667
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    if-eqz v23, :cond_19

    const/16 v43, 0x1

    :goto_5
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5661
    :cond_17
    if-eqz v13, :cond_18

    .line 5662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5664
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    goto :goto_4

    .line 5667
    :cond_19
    const/16 v43, -0x1

    goto :goto_5

    .line 5670
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v19    # "netId":I
    .end local v23    # "ok":Z
    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 5671
    .local v36, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v44

    sub-long v44, v36, v44

    const-wide/32 v46, 0x927c0

    cmp-long v43, v44, v46

    if-lez v43, :cond_3

    .line 5672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    .line 5673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set16(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 5677
    .end local v36    # "time":J
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 5678
    const/16 v45, 0x9

    .line 5677
    invoke-virtual/range {v43 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v43

    if-eqz v43, :cond_1a

    .line 5679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25013

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 5681
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25012

    .line 5683
    const/16 v45, 0x0

    .line 5682
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5687
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5688
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    .line 5689
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_3

    .line 5691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x20049

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5696
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5699
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->clearBssidBlacklist()V

    goto/16 :goto_0

    .line 5702
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    move-result v23

    .line 5704
    .restart local v23    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v43

    if-eqz v43, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "did save config "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5705
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    if-eqz v23, :cond_1c

    const/16 v43, 0x1

    :goto_6
    const v45, 0x2003a

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 5708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    goto/16 :goto_0

    .line 5705
    :cond_1c
    const/16 v43, -0x1

    goto :goto_6

    .line 5711
    .end local v23    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    .line 5712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v45

    .line 5711
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5715
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    .line 5716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->hasCarrierNetworks()Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    .line 5715
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5719
    :sswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 5720
    .local v20, "networkId":I
    const/16 v16, 0x0

    .line 5721
    .local v16, "identitySent":Z
    const/4 v14, -0x1

    .line 5723
    .local v14, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    if-eqz v43, :cond_1d

    .line 5724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1d

    .line 5725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    .line 5729
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    if-eqz v43, :cond_1f

    .line 5730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    .line 5731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v43, v0

    .line 5732
    const/16 v44, 0x3

    .line 5731
    invoke-virtual/range {v43 .. v44}, Ljava/util/BitSet;->get(I)Z

    move-result v43

    if-nez v43, :cond_1e

    .line 5733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v43, v0

    .line 5734
    const/16 v44, 0x2

    .line 5733
    invoke-virtual/range {v43 .. v44}, Ljava/util/BitSet;->get(I)Z

    move-result v43

    .line 5729
    if-eqz v43, :cond_1f

    .line 5735
    :cond_1e
    invoke-static {v14}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    move-result v43

    .line 5729
    if-eqz v43, :cond_1f

    .line 5736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-static {v0, v14}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimIdentity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    .line 5737
    .local v15, "identity":Ljava/lang/String;
    if-eqz v15, :cond_1f

    .line 5738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 5739
    const/16 v16, 0x1

    .line 5742
    .end local v15    # "identity":Ljava/lang/String;
    :cond_1f
    if-nez v16, :cond_3

    .line 5744
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 5745
    .local v34, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    if-eqz v43, :cond_20

    if-eqz v34, :cond_20

    .line 5746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_20

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "\""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "\""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    .line 5745
    if-eqz v43, :cond_20

    .line 5748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    .line 5749
    const/16 v45, 0x7

    .line 5748
    invoke-virtual/range {v43 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 5754
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5755
    const/16 v44, -0x1

    .line 5754
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 5756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 5760
    .end local v14    # "eapMethod":I
    .end local v16    # "identitySent":Z
    .end local v20    # "networkId":I
    .end local v34    # "ssid":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5761
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 5762
    .local v27, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v27, :cond_23

    .line 5763
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v43, v0

    const/16 v44, 0x4

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_21

    .line 5764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 5765
    :cond_21
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v43, v0

    const/16 v44, 0x5

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_22

    .line 5766
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v43, v0

    const/16 v44, 0x6

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_3

    .line 5767
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 5770
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Invalid sim auth request"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5774
    .end local v27    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    .line 5775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getPrivilegedSavedNetworks()Ljava/util/List;

    move-result-object v45

    .line 5774
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5778
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    .line 5779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    .line 5778
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5782
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    if-eqz v43, :cond_3

    .line 5783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    goto/16 :goto_0

    .line 5787
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_0

    .line 5791
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->needsUnlockedKeyStore()Z

    move-result v43

    if-eqz v43, :cond_3

    .line 5792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_0

    .line 5799
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5800
    const/16 v43, 0x1

    return v43

    .line 5810
    :sswitch_19
    const/4 v12, 0x0

    .line 5811
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_24

    .line 5815
    const/4 v12, 0x1

    .line 5816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5820
    :cond_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5821
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5824
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v45

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5826
    const-string/jumbo v45, " my state "

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v45

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5827
    const-string/jumbo v45, " nid="

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5827
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5828
    const-string/jumbo v45, " roam="

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v45

    .line 5824
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5829
    if-nez v9, :cond_25

    .line 5830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5835
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 5838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5839
    const-string/jumbo v45, " nid="

    .line 5838
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5839
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 5838
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    const/16 v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v29

    .line 5841
    .local v29, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 5842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5843
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 5842
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5847
    if-nez v9, :cond_26

    .line 5848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5851
    :cond_26
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v43, v0

    move/from16 v0, v19

    move/from16 v1, v43

    if-eq v0, v1, :cond_27

    .line 5852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5853
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 5852
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5853
    const-string/jumbo v45, " but got"

    .line 5852
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5853
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 5852
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5857
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v43

    if-nez v43, :cond_3

    .line 5859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v43, v0

    .line 5860
    const/16 v44, 0x2

    .line 5859
    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_28

    .line 5861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 5862
    const/16 v45, 0x9

    .line 5861
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5870
    :cond_28
    const/16 v17, -0x1

    .line 5874
    .local v17, "lastConnectUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    .line 5875
    const/16 v45, 0x5

    .line 5874
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 5876
    if-nez v12, :cond_29

    .line 5878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v43

    .line 5879
    const/16 v44, 0x1

    .line 5878
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    .line 5882
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v43

    if-eqz v43, :cond_2a

    .line 5883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5884
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 5883
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    .line 5882
    if-eqz v43, :cond_2a

    .line 5885
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v17, v0

    .line 5886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v43

    .line 5887
    const/16 v44, 0x4

    .line 5886
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    .line 5889
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v43

    if-eqz v43, :cond_2f

    .line 5890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v43

    .line 5889
    if-eqz v43, :cond_2f

    .line 5891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 5893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5894
    if-eqz v9, :cond_2b

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v43

    if-eqz v43, :cond_2d

    .line 5912
    :cond_2b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v43

    if-nez v43, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v43

    if-eqz v43, :cond_2e

    .line 5914
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5908
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5910
    const/16 v44, -0x1

    .line 5908
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    goto :goto_7

    .line 5915
    :cond_2e
    if-eqz v12, :cond_3

    .line 5916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5919
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Failed to connect config: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " netId: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 5921
    const/16 v45, 0x0

    .line 5920
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 5922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    .line 5923
    const/16 v44, 0x5

    .line 5924
    const/16 v45, 0x1

    .line 5922
    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 5930
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v17    # "lastConnectUid":I
    .end local v19    # "netId":I
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Ljava/util/Set;

    move-result-object v26

    .line 5931
    .local v26, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_30

    .line 5932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v43

    .line 5931
    if-eqz v43, :cond_3

    .line 5934
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x20049

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5939
    .end local v26    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForUser(I)Ljava/util/Set;

    move-result-object v26

    .line 5940
    .restart local v26    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_31

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v43

    .line 5940
    if-eqz v43, :cond_3

    .line 5943
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x20049

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5949
    .end local v26    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5950
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 5949
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    if-nez v43, :cond_32

    .line 5951
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_32

    .line 5952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v45

    .line 5952
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5954
    const-string/jumbo v45, " sendingUserId="

    .line 5952
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5954
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5952
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 5956
    const/16 v45, 0x9

    .line 5955
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5966
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5967
    .restart local v19    # "netId":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 5968
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 5969
    const/16 v39, 0x0

    .line 5972
    .local v39, "updatedExisting":Z
    if-eqz v9, :cond_35

    .line 5977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 5978
    const/16 v45, 0x1

    .line 5977
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v43

    if-nez v43, :cond_33

    .line 5979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Not authorized to update network  config="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5980
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 5979
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5981
    const-string/jumbo v45, " cnid="

    .line 5979
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5981
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 5979
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5982
    const-string/jumbo v45, " uid="

    .line 5979
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5982
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5979
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 5984
    const/16 v45, 0x9

    .line 5983
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5987
    :cond_33
    const/16 v43, 0x1

    move/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 5989
    .local v10, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    .line 5990
    .local v30, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v30, :cond_34

    .line 5994
    move-object/from16 v9, v30

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5996
    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 5995
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 5996
    const-string/jumbo v45, " configKey="

    .line 5995
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5997
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 5998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 5999
    const/16 v44, 0x0

    .line 5998
    move-object/from16 v0, v43

    move-object/from16 v1, v30

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 6001
    const/16 v39, 0x1

    .line 6004
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v29

    .line 6005
    .restart local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 6007
    .end local v10    # "configKey":Ljava/lang/String;
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v30    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 6008
    if-nez v9, :cond_36

    .line 6009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v45

    .line 6009
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6010
    const-string/jumbo v45, " my state "

    .line 6009
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v45

    .line 6009
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 6013
    const/16 v45, 0x0

    .line 6012
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6016
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "any"

    move-object/from16 v0, v43

    move/from16 v1, v19

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 6018
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v43, v0

    const/16 v44, 0x3f2

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_37

    .line 6019
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v43, v0

    const/16 v44, 0x3e8

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_38

    .line 6026
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "CONNECT_NETWORK"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 6029
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v43

    if-nez v43, :cond_3

    .line 6031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v43, v0

    .line 6032
    const/16 v44, 0x2

    .line 6031
    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_39

    .line 6033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 6034
    const/16 v45, 0x9

    .line 6033
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6038
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v24

    .line 6046
    .restart local v24    # "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 6047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    if-eqz v43, :cond_3a

    .line 6048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    .line 6050
    :cond_3a
    const/4 v12, 0x0

    .line 6051
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_3b

    .line 6052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    move/from16 v0, v43

    move/from16 v1, v19

    if-eq v0, v1, :cond_3b

    .line 6056
    const/4 v12, 0x1

    .line 6057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6062
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    .line 6063
    const/16 v45, 0x4

    .line 6062
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 6064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 6065
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 6064
    const/16 v45, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v43

    if-eqz v43, :cond_3e

    .line 6065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v43

    .line 6064
    if-eqz v43, :cond_3e

    .line 6066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v43

    const v44, 0x25001

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25003

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6072
    if-eqz v12, :cond_3c

    .line 6074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6075
    :cond_3c
    if-eqz v39, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_3d

    .line 6076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v19

    if-ne v0, v1, :cond_3d

    .line 6079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 6085
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6088
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Failed to connect config: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " netId: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25002

    .line 6090
    const/16 v45, 0x0

    .line 6089
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    .line 6092
    const/16 v44, 0x5

    .line 6093
    const/16 v45, 0x1

    .line 6091
    invoke-static/range {v43 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 6098
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v19    # "netId":I
    .end local v24    # "persist":Z
    .end local v39    # "updatedExisting":Z
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 6102
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 6103
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 6102
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    if-nez v43, :cond_3f

    .line 6104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v45

    .line 6104
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6106
    const-string/jumbo v45, " sendingUserId="

    .line 6104
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6106
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 6104
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25008

    .line 6108
    const/16 v45, 0x9

    .line 6107
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6112
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6113
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 6114
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_40

    .line 6115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v45

    .line 6115
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6117
    const-string/jumbo v45, " my state "

    .line 6115
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v45

    .line 6115
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25008

    .line 6120
    const/16 v45, 0x0

    .line 6119
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6123
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v44

    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6124
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    .line 6125
    .local v22, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "SAVE_NETWORK id="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6126
    const-string/jumbo v45, " config="

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6126
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6127
    const-string/jumbo v45, " nid="

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6127
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6128
    const-string/jumbo v45, " supstate="

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v45

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6129
    const-string/jumbo v45, " my state "

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v45

    .line 6125
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6132
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const v44, 0x25007

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_46

    const/4 v8, 0x1

    .line 6133
    .local v8, "checkUid":Z
    :goto_8
    if-eqz v8, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 6134
    const/16 v45, 0x0

    .line 6133
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v43

    if-eqz v43, :cond_47

    .line 6144
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    const/16 v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v29

    .line 6145
    .restart local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v43

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_49

    .line 6146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v43

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_43

    .line 6147
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v43

    if-eqz v43, :cond_42

    .line 6151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Reconfiguring IP on connection"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6156
    :cond_42
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v43

    if-eqz v43, :cond_43

    .line 6157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Reconfiguring proxy on connection"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v43

    .line 6159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getProxyProperties(I)Landroid/net/ProxyInfo;

    move-result-object v44

    .line 6158
    invoke-virtual/range {v43 .. v44}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 6162
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25009

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 6165
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v43

    if-eqz v43, :cond_44

    .line 6166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Success save network nid="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6167
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 6166
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6175
    :cond_44
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const v44, 0x25007

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_48

    const/16 v40, 0x1

    .line 6179
    .local v40, "user":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 6180
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 6179
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v25

    .line 6182
    .local v25, "persistConnect":Z
    if-eqz v40, :cond_45

    .line 6183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 6184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 6187
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    if-eqz v43, :cond_3

    .line 6188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v43

    .line 6189
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v44

    .line 6188
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    goto/16 :goto_0

    .line 6132
    .end local v8    # "checkUid":Z
    .end local v25    # "persistConnect":Z
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v40    # "user":Z
    :cond_46
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 6135
    .restart local v8    # "checkUid":Z
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Not authorized to update network  config="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6136
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 6135
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6137
    const-string/jumbo v45, " cnid="

    .line 6135
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6137
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    .line 6135
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6138
    const-string/jumbo v45, " uid="

    .line 6135
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6138
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6135
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25008

    .line 6140
    const/16 v45, 0x9

    .line 6139
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6175
    .restart local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_48
    const/16 v40, 0x0

    .restart local v40    # "user":Z
    goto/16 :goto_9

    .line 6192
    .end local v40    # "user":Z
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Failed to save network"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25008

    .line 6195
    const/16 v45, 0x0

    .line 6194
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6200
    .end local v8    # "checkUid":Z
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v22    # "nid":I
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 6201
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    .line 6200
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v43

    if-nez v43, :cond_4a

    .line 6202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v45

    .line 6202
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6204
    const-string/jumbo v45, " sendingUserId="

    .line 6202
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6204
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 6202
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25005

    .line 6206
    const/16 v45, 0x9

    .line 6205
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6212
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v38

    .line 6213
    .local v38, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v38, :cond_4b

    .line 6214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6219
    :goto_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 6221
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    .line 6222
    const/16 v45, 0x0

    .line 6221
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v19

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    move-result v43

    if-nez v43, :cond_4c

    .line 6223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Not authorized to forget network  cnid="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6225
    const-string/jumbo v45, " uid="

    .line 6223
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 6225
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6223
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25005

    .line 6227
    const/16 v45, 0x9

    .line 6226
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6216
    .end local v19    # "netId":I
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_a

    .line 6231
    .restart local v19    # "netId":I
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->forgetNetwork(I)Z

    move-result v43

    if-eqz v43, :cond_4d

    .line 6232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25006

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 6234
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/net/wifi/WifiConfiguration;

    .line 6233
    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap13(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 6236
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Failed to forget network"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x25005

    .line 6238
    const/16 v45, 0x0

    .line 6237
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6242
    .end local v19    # "netId":I
    .end local v38    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/net/wifi/WpsInfo;

    .line 6244
    .local v41, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v43, v0

    packed-switch v43, :pswitch_data_0

    .line 6255
    new-instance v42, Landroid/net/wifi/WpsResult;

    sget-object v43, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v42 .. v43}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 6256
    .local v42, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Invalid setup for WPS"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6259
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    .line 6260
    const/16 v44, -0x1

    .line 6259
    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 6261
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v43, v0

    sget-object v44, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_4e

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x2500b

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 6263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6246
    .end local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v42

    .restart local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    .line 6249
    .end local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v42

    .restart local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    .line 6252
    .end local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v42

    .restart local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    .line 6265
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Failed to start WPS with config "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x2500c

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6272
    .end local v41    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v42    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 6273
    .local v32, "someBssid":Ljava/lang/String;
    if-eqz v32, :cond_4f

    .line 6276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 6278
    .local v33, "someConf":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v31

    .line 6280
    .local v31, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v31, :cond_4f

    .line 6281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v43

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiMetrics;->setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V

    .line 6285
    .end local v31    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v33    # "someConf":Landroid/net/wifi/WifiConfiguration;
    :cond_4f
    const/16 v43, 0x0

    return v43

    .line 6287
    .end local v32    # "someBssid":Ljava/lang/String;
    :sswitch_22
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v43

    if-eqz v43, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "Network connection established"

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6288
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 6293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    move-result-object v43

    .line 6294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    .line 6293
    invoke-virtual/range {v43 .. v45}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    .line 6295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get30(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6308
    :sswitch_23
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v43

    if-eqz v43, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const-string/jumbo v44, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6309
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6313
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v28

    .line 6314
    .restart local v28    # "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6317
    .end local v28    # "res":I
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    if-eqz v43, :cond_52

    .line 6318
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 6320
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v43, "MOS"

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 6321
    .local v18, "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v43

    const-string/jumbo v44, "FQDN"

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->modifyPasspointMo(Ljava/lang/String;Ljava/util/List;)I

    move-result v28

    .line 6325
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v18    # "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .restart local v28    # "res":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6323
    .end local v28    # "res":I
    :cond_52
    const/16 v28, 0x0

    .restart local v28    # "res":I
    goto :goto_c

    .line 6329
    .end local v28    # "res":I
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6330
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/Bundle;

    const-string/jumbo v45, "BSSID"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v46

    .line 6331
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/Bundle;

    const-string/jumbo v45, "FILENAME"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 6329
    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->queryPasspointIcon(JLjava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_53

    .line 6332
    const/16 v28, 0x1

    .line 6336
    .restart local v28    # "res":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6334
    .end local v28    # "res":I
    :cond_53
    const/16 v28, 0x0

    .restart local v28    # "res":I
    goto :goto_d

    .line 6339
    .end local v28    # "res":I
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v28

    .line 6340
    .restart local v28    # "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    move/from16 v2, v44

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5435
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_6
        0x20035 -> :sswitch_7
        0x20036 -> :sswitch_8
        0x20037 -> :sswitch_9
        0x20038 -> :sswitch_c
        0x20039 -> :sswitch_d
        0x2003a -> :sswitch_e
        0x2003b -> :sswitch_f
        0x2003e -> :sswitch_13
        0x20040 -> :sswitch_10
        0x2004a -> :sswitch_15
        0x2004b -> :sswitch_16
        0x20061 -> :sswitch_1a
        0x20062 -> :sswitch_b
        0x20063 -> :sswitch_14
        0x20066 -> :sswitch_24
        0x20067 -> :sswitch_25
        0x20068 -> :sswitch_26
        0x20069 -> :sswitch_27
        0x2008e -> :sswitch_17
        0x2008f -> :sswitch_19
        0x20091 -> :sswitch_18
        0x20092 -> :sswitch_1e
        0x20093 -> :sswitch_21
        0x20098 -> :sswitch_1b
        0x2300c -> :sswitch_5
        0x24003 -> :sswitch_22
        0x24004 -> :sswitch_23
        0x24006 -> :sswitch_4
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_3
        0x2400f -> :sswitch_11
        0x24010 -> :sswitch_12
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1c
        0x25004 -> :sswitch_1f
        0x25007 -> :sswitch_1d
        0x2500a -> :sswitch_20
        0x25011 -> :sswitch_a
    .end sparse-switch

    .line 6244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
