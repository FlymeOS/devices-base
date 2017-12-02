.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 7138
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7142
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    .line 7143
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7144
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter ConnectedState  mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7145
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 7144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7148
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7149
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    .line 7152
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    .line 7153
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7156
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7159
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7161
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7162
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7163
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectedState Enter start disconnect test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7164
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    .line 7163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7165
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 7166
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    .line 7165
    const v3, 0x20059

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 7166
    const-wide/16 v2, 0x3a98

    .line 7165
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7170
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    .line 7172
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7173
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7174
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiLastResortWatchdog;->connectedStateTransition(Z)V

    .line 7140
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7432
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "WifiStateMachine: Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7433
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7434
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    .line 7435
    const/4 v1, 0x3

    .line 7434
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->handleConnectionStateChanged(I)V

    .line 7438
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7439
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;

    .line 7440
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->connectedStateTransition(Z)V

    .line 7431
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7178
    const/4 v7, 0x0

    .line 7179
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 7181
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 7425
    const/16 v21, 0x0

    return v21

    .line 7183
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->updateAssociatedScanPermission()V

    .line 7427
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    const/16 v21, 0x1

    return v21

    .line 7186
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 7187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7213
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    const/16 v21, 0x1

    return v21

    .line 7189
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 7190
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 7191
    :cond_3
    const-string/jumbo v22, "WifiStateMachine"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 7192
    const-string/jumbo v21, "NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN"

    .line 7191
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7195
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_1

    .line 7197
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 7198
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 7201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 7202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    .line 7203
    const/16 v22, -0x1

    .line 7202
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 7205
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    .line 7206
    const/16 v22, 0x8

    .line 7205
    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 7209
    :cond_5
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 7210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    goto/16 :goto_1

    .line 7193
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const-string/jumbo v21, "NETWORK_STATUS_UNWANTED_VALIDATION_FAILED"

    goto :goto_2

    .line 7215
    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 7216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7217
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_7

    .line 7219
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v7, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 7220
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 7221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 7224
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/16 v21, 0x1

    return v21

    .line 7226
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    if-eqz v21, :cond_9

    const/4 v4, 0x1

    .line 7227
    .local v4, "accept":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7228
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    .line 7229
    iput-boolean v4, v7, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 7230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 7232
    :cond_8
    const/16 v21, 0x1

    return v21

    .line 7226
    .end local v4    # "accept":Z
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "accept":Z
    goto :goto_3

    .line 7235
    .end local v4    # "accept":Z
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 7236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 7242
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7243
    const/16 v21, 0x0

    return v21

    .line 7245
    :sswitch_6
    const-wide/16 v14, 0x0

    .line 7246
    .local v14, "lastRoam":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    .line 7247
    const/16 v22, 0x6

    .line 7248
    const/16 v23, 0x1

    .line 7246
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 7249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_a

    .line 7251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v24

    sub-long v14, v22, v24

    .line 7252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7254
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->unexpectedDisconnectedReason(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 7255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v21

    .line 7256
    const/16 v22, 0x5

    .line 7255
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 7258
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7259
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 7260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 7293
    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 7294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    .line 7294
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7296
    const-string/jumbo v23, " RSSI="

    .line 7294
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    .line 7294
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7297
    const-string/jumbo v23, " freq="

    .line 7294
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    .line 7294
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7298
    const-string/jumbo v23, " was debouncing="

    .line 7294
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v23

    .line 7294
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7299
    const-string/jumbo v23, " reason="

    .line 7294
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7299
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 7294
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7300
    const-string/jumbo v23, " Network Selection Status="

    .line 7294
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 7300
    if-nez v7, :cond_11

    const-string/jumbo v21, "Unavailable"

    .line 7294
    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7261
    :cond_d
    if-eqz v7, :cond_c

    .line 7262
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v21

    .line 7259
    if-eqz v21, :cond_c

    .line 7263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 7264
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 7265
    const-wide/16 v22, 0x0

    cmp-long v21, v14, v22

    if-lez v21, :cond_c

    const-wide/16 v22, 0x7d0

    cmp-long v21, v14, v22

    if-gez v21, :cond_c

    .line 7266
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 7267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v21

    .line 7268
    const/16 v22, -0x49

    .line 7267
    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    .line 7278
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 7279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    .line 7282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v23

    .line 7281
    const v24, 0x20057

    .line 7282
    const/16 v25, 0x0

    .line 7281
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v22

    .line 7282
    const-wide/16 v24, 0xfa0

    .line 7281
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7283
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 7284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7286
    const-string/jumbo v23, " RSSI="

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v23

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7287
    const-string/jumbo v23, " freq="

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v23

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7288
    const-string/jumbo v23, " reason="

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7288
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7289
    const-string/jumbo v23, " -> debounce"

    .line 7284
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7291
    :cond_f
    const/16 v21, 0x1

    return v21

    .line 7269
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 7270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v21

    .line 7271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    .line 7270
    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    goto/16 :goto_5

    .line 7301
    :cond_11
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    .line 7307
    .end local v14    # "lastRoam":J
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7318
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 7319
    .local v6, "candidate":Landroid/net/wifi/ScanResult;
    const-string/jumbo v5, "any"

    .line 7320
    .local v5, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 7321
    iget-object v5, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 7323
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 7324
    .local v16, "netId":I
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 7325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const-string/jumbo v22, "AUTO_ROAM and no config, bail out..."

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7328
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 7329
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_14

    .line 7330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const-string/jumbo v22, "AUTO_ROAM and invalid netowrk ID, bail out..."

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7335
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 7336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "CMD_AUTO_ROAM sup state "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v23

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7340
    const-string/jumbo v23, " my state "

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v23

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7341
    const-string/jumbo v23, " nid="

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7341
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7342
    const-string/jumbo v23, " config "

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7342
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v23

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7343
    const-string/jumbo v23, " targetRoamBSSID "

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 7343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v23

    .line 7338
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 7350
    .local v8, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_15

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 7352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v22

    .line 7353
    const/16 v23, 0x2

    .line 7352
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 7360
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 7361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    .line 7362
    const/16 v22, 0x5

    .line 7363
    const/16 v23, 0x1

    .line 7361
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 7356
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v22

    .line 7357
    const/16 v23, 0x3

    .line 7356
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    goto :goto_6

    .line 7365
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v21, v0

    .line 7366
    const/16 v22, 0x2

    .line 7365
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 7367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const v22, 0x25002

    .line 7368
    const/16 v23, 0x9

    .line 7367
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    .line 7370
    const/16 v22, 0x5

    .line 7371
    const/16 v23, 0x1

    .line 7369
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 7375
    :cond_17
    const/16 v19, 0x0

    .line 7376
    .local v19, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_19

    .line 7377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v21

    const/16 v22, 0x0

    .line 7378
    const/16 v23, -0x1

    .line 7377
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 7378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v21

    .line 7377
    if-eqz v21, :cond_18

    .line 7379
    const/16 v19, 0x1

    .line 7384
    .end local v19    # "ret":Z
    :cond_18
    :goto_7
    if-eqz v19, :cond_1a

    .line 7385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 7389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 7382
    .restart local v19    # "ret":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    move-result v19

    .local v19, "ret":Z
    goto :goto_7

    .line 7393
    .end local v19    # "ret":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Failed to connect config: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " netId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    const v22, 0x25002

    .line 7395
    const/16 v23, 0x0

    .line 7394
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 7396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    .line 7398
    const/16 v22, 0x5

    .line 7399
    const/16 v23, 0x1

    .line 7397
    invoke-static/range {v21 .. v23}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 7404
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v6    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v8    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "netId":I
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 7405
    .local v20, "slot":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 7406
    .local v13, "intervalSeconds":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/connectivity/KeepalivePacketData;

    .line 7410
    .local v17, "pkt":Lcom/android/server/connectivity/KeepalivePacketData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    move-object/from16 v22, v0

    .line 7409
    invoke-static/range {v21 .. v22}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    .line 7411
    .local v12, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 7412
    .local v10, "dstMacStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 7419
    .local v9, "dstMac":[B
    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    .line 7420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/wifi/WifiStateMachine;->startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    move-result v18

    .line 7421
    .local v18, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 7413
    .end local v9    # "dstMac":[B
    .end local v10    # "dstMacStr":Ljava/lang/String;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    .end local v18    # "result":I
    :catch_0
    move-exception v11

    .line 7414
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Can\'t find MAC address for next hop to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v21

    .line 7416
    const/16 v22, -0x15

    .line 7415
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 7181
    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_4
        0x20090 -> :sswitch_1
        0x20091 -> :sswitch_7
        0x20093 -> :sswitch_5
        0x20094 -> :sswitch_2
        0x20099 -> :sswitch_3
        0x2009e -> :sswitch_0
        0x200a0 -> :sswitch_8
        0x24004 -> :sswitch_6
    .end sparse-switch
.end method
