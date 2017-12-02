.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponderEnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 472
    const-string/jumbo v2, "RttService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ResponderEnabledState got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .line 474
    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 475
    .local v1, "key":I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 502
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 478
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addResponderRequest(I)V

    .line 479
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableSucceed(ILandroid/net/wifi/RttManager$ResponderConfig;)V

    .line 480
    return v5

    .line 482
    :pswitch_2
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->removeResponderRequest(I)V

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disableRttResponder()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    const-string/jumbo v2, "RttService"

    const-string/jumbo v3, "disable responder failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    const-string/jumbo v2, "RttService"

    const-string/jumbo v3, "mWifiNative.disableRttResponder called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-static {v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    .line 493
    :cond_2
    return v5

    .line 497
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    .line 499
    const-string/jumbo v3, "Initiator not allowed when responder is turned on"

    .line 498
    const/4 v4, -0x6

    .line 497
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 500
    return v5

    .line 475
    :pswitch_data_0
    .packed-switch 0x27200
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
