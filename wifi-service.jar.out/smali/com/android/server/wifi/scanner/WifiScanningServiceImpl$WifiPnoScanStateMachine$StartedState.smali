.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1507
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1514
    const-string/jumbo v1, "Scan was interrupted"

    const/4 v2, -0x1

    .line 1513
    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;ILjava/lang/String;)V

    .line 1512
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 1519
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1520
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1542
    const/4 v3, 0x0

    return v3

    .line 1522
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1523
    .local v1, "pnoParams":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1524
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v4, "params null"

    const/4 v5, -0x3

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 1525
    return v6

    .line 1527
    :cond_0
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1529
    const-string/jumbo v3, "PnoSettings"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1531
    .local v2, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v3, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Landroid/os/Message;)V

    .line 1532
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v3

    iget-boolean v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->isHwPnoSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1533
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    .line 1544
    .end local v1    # "pnoParams":Landroid/os/Bundle;
    .end local v2    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    :goto_0
    return v6

    .line 1535
    .restart local v1    # "pnoParams":Landroid/os/Bundle;
    .restart local v2    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1539
    .end local v1    # "pnoParams":Landroid/os/Bundle;
    .end local v2    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v4, "no scan running"

    const/4 v5, -0x1

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 1520
    nop

    :pswitch_data_0
    .packed-switch 0x27018
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
