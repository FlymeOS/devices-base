.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwPnoScanState"
.end annotation


# instance fields
.field private final mSwPnoFullScanResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->mSwPnoFullScanResults:Ljava/util/ArrayList;

    .line 1646
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->mSwPnoFullScanResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1650
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V

    .line 1656
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, -0x3

    const/4 v8, 0x1

    .line 1662
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1663
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1702
    const/4 v5, 0x0

    return v5

    .line 1665
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1666
    .local v1, "pnoParams":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1667
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v6, "params null"

    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 1668
    return v8

    .line 1670
    :cond_0
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1672
    const-string/jumbo v5, "PnoSettings"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    .line 1674
    .local v2, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    const-string/jumbo v5, "ScanSettings"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1675
    .local v4, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v0, v6, v4, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1676
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    .line 1704
    .end local v1    # "pnoParams":Landroid/os/Bundle;
    .end local v2    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .end local v4    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :goto_0
    return v8

    .line 1678
    .restart local v1    # "pnoParams":Landroid/os/Bundle;
    .restart local v2    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .restart local v4    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v6, "bad request"

    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 1679
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1683
    .end local v1    # "pnoParams":Landroid/os/Bundle;
    .end local v2    # "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    .end local v4    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v0, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    .line 1684
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1688
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->mSwPnoFullScanResults:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/ScanResult;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1691
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->mSwPnoFullScanResults:Ljava/util/ArrayList;

    .line 1692
    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->mSwPnoFullScanResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/ScanResult;

    .line 1691
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/ScanResult;

    .line 1693
    .local v3, "scanResults":[Landroid/net/wifi/ScanResult;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v5, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;[Landroid/net/wifi/ScanResult;)V

    .line 1694
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->mSwPnoFullScanResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1697
    .end local v3    # "scanResults":[Landroid/net/wifi/ScanResult;
    :sswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    .line 1698
    const-string/jumbo v6, "background scan failed"

    const/4 v7, -0x1

    .line 1697
    invoke-static {v5, v7, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;ILjava/lang/String;)V

    .line 1699
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1663
    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_3
        0x27012 -> :sswitch_4
        0x27014 -> :sswitch_2
        0x27018 -> :sswitch_0
        0x27019 -> :sswitch_1
    .end sparse-switch
.end method
