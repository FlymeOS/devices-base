.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1475
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1481
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1499
    const/4 v0, 0x0

    return v0

    .line 1483
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    .line 1501
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1486
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1490
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "not available"

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 1496
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1481
    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_3
        0x27012 -> :sswitch_3
        0x27018 -> :sswitch_2
        0x27019 -> :sswitch_2
        0x27106 -> :sswitch_0
        0x27107 -> :sswitch_1
        0x2710b -> :sswitch_3
        0x2710c -> :sswitch_3
    .end sparse-switch
.end method
