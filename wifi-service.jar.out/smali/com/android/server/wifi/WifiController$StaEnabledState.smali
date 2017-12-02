.class Lcom/android/server/wifi/WifiController$StaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 522
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 527
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 570
    const/4 v1, 0x0

    return v1

    .line 529
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 573
    :cond_0
    :goto_0
    return v6

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 541
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 546
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 554
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/FrameworkFacade;->getConfigWiFiDisableInECBM(Landroid/content/Context;)Z

    move-result v0

    .line 555
    .local v0, "getConfigWiFiDisableInECBM":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiController msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getConfigWiFiDisableInECBM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 557
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_0

    if-eqz v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 562
    .end local v0    # "getConfigWiFiDisableInECBM":Z
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiSettingsStore;->setWifiSavedState(I)V

    .line 565
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 566
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_3
        0x26008 -> :sswitch_0
        0x26009 -> :sswitch_1
        0x2600a -> :sswitch_4
        0x2600e -> :sswitch_3
        0x26010 -> :sswitch_2
    .end sparse-switch
.end method
