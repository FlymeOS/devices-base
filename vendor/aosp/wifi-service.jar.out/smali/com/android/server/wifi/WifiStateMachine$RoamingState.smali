.class Lcom/android/server/wifi/WifiStateMachine$RoamingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoamingState"
.end annotation


# instance fields
.field mAssociated:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8790
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8794
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8795
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RoamingState Enter mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8796
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get73(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 8795
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8798
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 8801
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 8802
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start Roam Watchdog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8803
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8804
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 8803
    const v3, 0x2005e

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 8804
    const-wide/16 v2, 0x3a98

    .line 8803
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8805
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    .line 8793
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 8928
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "WifiStateMachine: Leaving Roaming state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8927
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8809
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 8811
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 8921
    return v8

    .line 8813
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 8814
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 8815
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 8816
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    .line 8817
    sget v5, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    .line 8816
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wifi/WifiConfigStore;->noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V

    .line 8819
    :cond_0
    return v8

    .line 8821
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v5, "Roaming and Watchdog reports poor link -> ignore"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8822
    :cond_1
    return v7

    .line 8824
    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v5, "Roaming and CS doesnt want the network -> ignore"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8825
    :cond_2
    return v7

    .line 8827
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v7, :cond_3

    .line 8828
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 8923
    :cond_3
    :goto_0
    return v7

    .line 8839
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/StateChangeResult;

    .line 8840
    .local v2, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v5, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v4, v5, :cond_4

    .line 8841
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v5, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_7

    .line 8843
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8844
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_CHANGE_EVENT in roaming state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8845
    invoke-virtual {v2}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8844
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8847
    :cond_5
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 8848
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 8847
    if-eqz v4, :cond_6

    .line 8849
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8850
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8853
    :cond_6
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v5, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_3

    .line 8855
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    .line 8856
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 8857
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, v2, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set44(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 8842
    :cond_7
    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    sget-object v5, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_6

    goto :goto_1

    .line 8862
    .end local v2    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v4, v4, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_3

    .line 8863
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v5, "roaming watchdog! -> disconnect"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8864
    :cond_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set36(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8865
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8866
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8867
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8871
    :sswitch_6
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->mAssociated:Z

    if-eqz v4, :cond_a

    .line 8872
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v5, "roaming and Network connection established"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8873
    :cond_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8874
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8875
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get102(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8876
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get102(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8877
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    .line 8878
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8879
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8881
    :cond_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 8886
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8888
    .local v0, "bssid":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 8889
    .local v3, "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    .line 8890
    :cond_b
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NETWORK_DISCONNECTION_EVENT in roaming state BSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8892
    const-string/jumbo v6, " target="

    .line 8890
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8894
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8895
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8896
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8901
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :sswitch_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SSID_TEMP_DISABLED nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8902
    const-string/jumbo v6, " id="

    .line 8901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8902
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 8901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8903
    const-string/jumbo v6, " isRoaming="

    .line 8901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8903
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v6

    .line 8901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8904
    const-string/jumbo v6, " roam="

    .line 8901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8904
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 8901
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8905
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get52(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-ne v4, v5, :cond_d

    .line 8906
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 8907
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_c

    .line 8908
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 8910
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    .line 8911
    sget v5, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    .line 8910
    invoke-virtual {v4, v1, v5}, Lcom/android/server/wifi/WifiConfigStore;->noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V

    .line 8913
    :cond_c
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8914
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get28(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8916
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    return v8

    .line 8918
    :sswitch_9
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$RoamingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8811
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_3
        0x2005e -> :sswitch_5
        0x2008b -> :sswitch_0
        0x20090 -> :sswitch_2
        0x21015 -> :sswitch_1
        0x24003 -> :sswitch_6
        0x24004 -> :sswitch_7
        0x24006 -> :sswitch_4
        0x2400d -> :sswitch_8
    .end sparse-switch
.end method
