.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 294
    const-string/jumbo v2, "RttService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DefaultState got"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 320
    const/4 v2, 0x0

    return v2

    .line 297
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    invoke-static {v2, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    .line 322
    :goto_0
    return v5

    .line 300
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v2, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 303
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v3, "Try later"

    invoke-virtual {v2, p1, v6, v3}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 306
    :sswitch_3
    return v5

    .line 308
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .line 309
    .local v0, "client":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    .line 310
    const-string/jumbo v2, "RttService"

    const-string/jumbo v3, "client not connected yet!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 314
    .local v1, "key":I
    invoke-virtual {v0, v1, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportResponderEnableFailed(II)V

    goto :goto_0

    .line 318
    .end local v0    # "client":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    .end local v1    # "key":I
    :sswitch_5
    return v5

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_2
        0x27201 -> :sswitch_3
        0x27205 -> :sswitch_4
        0x27206 -> :sswitch_5
        0x27300 -> :sswitch_0
        0x27302 -> :sswitch_1
    .end sparse-switch
.end method
