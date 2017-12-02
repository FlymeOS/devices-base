.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StationaryState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)[Landroid/net/wifi/ScanResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V

    .line 2204
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2212
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 2213
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2237
    const/4 v1, 0x0

    return v1

    .line 2215
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2216
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    .line 2239
    :goto_0
    :sswitch_1
    const/4 v1, 0x1

    return v1

    .line 2218
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v2, "bad request"

    const/4 v3, -0x3

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 2222
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_0

    .line 2226
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 2230
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/wifi/ScanResult;

    invoke-static {v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V

    .line 2231
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2213
    nop

    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_1
        0x2700b -> :sswitch_0
        0x2700c -> :sswitch_2
        0x2700d -> :sswitch_3
        0x27104 -> :sswitch_4
    .end sparse-switch
.end method
