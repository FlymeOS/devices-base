.class Lcom/android/server/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mLastOperationMode:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6634
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 6638
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    .line 6637
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6642
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 6644
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 6686
    return v3

    .line 6646
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_3

    .line 6648
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    if-ne v1, v2, :cond_2

    .line 6649
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6652
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 6653
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x20083

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6661
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6662
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, -0x5

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 6666
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    .line 6667
    const/4 v2, -0x1

    .line 6666
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 6669
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6670
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6688
    :cond_1
    :goto_1
    return v4

    .line 6655
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 6673
    :cond_3
    return v4

    .line 6679
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto :goto_1

    .line 6682
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 6683
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SupplicantState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 6644
    nop

    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_0
        0x24006 -> :sswitch_2
    .end sparse-switch
.end method
