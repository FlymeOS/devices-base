.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8247
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8250
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8252
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8279
    const/4 v2, 0x0

    .line 8281
    :goto_0
    return v2

    .line 8254
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Stopping Soft AP"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8257
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8261
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v3, 0xb

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 8262
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$25100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8281
    :cond_1
    :goto_2
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 8258
    :catch_0
    move-exception v0

    .line 8259
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Exception in stopAccessPoint()"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 8269
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Cannot start supplicant with a running soft AP"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8270
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_2

    .line 8273
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 8274
    .local v1, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v1, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$25200(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8275
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$25300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$25400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 8252
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_3
    .end sparse-switch
.end method
