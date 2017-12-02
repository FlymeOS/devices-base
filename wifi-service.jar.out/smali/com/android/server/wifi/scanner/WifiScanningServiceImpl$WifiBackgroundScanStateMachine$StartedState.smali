.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1014
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1015
    const-string/jumbo v1, "Scan was interrupted"

    .line 1014
    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1017
    const-string/jumbo v1, "Scan was interrupted"

    .line 1016
    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->cleanup()V

    .line 1013
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x3

    const/4 v7, 0x1

    .line 1023
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    .line 1025
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1088
    return v6

    .line 1027
    :sswitch_0
    return v6

    .line 1029
    :sswitch_1
    return v6

    .line 1031
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get17(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMetrics;->incrementBackgroundScanCount()V

    .line 1032
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1033
    .local v1, "scanParams":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1034
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v5, "params null"

    invoke-virtual {v4, p1, v8, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    .line 1035
    return v7

    .line 1037
    :cond_0
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1039
    const-string/jumbo v4, "ScanSettings"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1041
    .local v2, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const-string/jumbo v4, "WorkSource"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 1042
    .local v3, "workSource":Landroid/os/WorkSource;
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v0, v5, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1043
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    .line 1091
    .end local v1    # "scanParams":Landroid/os/Bundle;
    .end local v2    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "workSource":Landroid/os/WorkSource;
    :goto_0
    return v7

    .line 1045
    .restart local v1    # "scanParams":Landroid/os/Bundle;
    .restart local v2    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v3    # "workSource":Landroid/os/WorkSource;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v5, "bad request"

    invoke-virtual {v4, p1, v8, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 1050
    .end local v1    # "scanParams":Landroid/os/Bundle;
    .end local v2    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v3    # "workSource":Landroid/os/WorkSource;
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_0

    .line 1053
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1054
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_0

    .line 1057
    :sswitch_5
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-static {v5, v0, v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1058
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replySucceeded(Landroid/os/Message;)V

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v5, "bad request"

    invoke-virtual {v4, p1, v8, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 1064
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_0

    .line 1067
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_0

    .line 1070
    :sswitch_8
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v4, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Landroid/net/wifi/ScanResult;I)V

    goto :goto_0

    .line 1073
    :sswitch_9
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/net/wifi/ScanResult;

    const v6, 0x27009

    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;I[Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1076
    :sswitch_a
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/net/wifi/ScanResult;

    const v6, 0x2700a

    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;I[Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 1079
    :sswitch_b
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/net/wifi/WifiScanner$ScanData;

    invoke-static {v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1080
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$PausedState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1083
    :sswitch_c
    const-string/jumbo v4, "WifiScanningService"

    const-string/jumbo v5, "WifiScanner background scan gave CMD_SCAN_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .line 1085
    const-string/jumbo v5, "Background Scan failed"

    const/4 v6, -0x1

    .line 1084
    invoke-static {v4, v6, v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1025
    :sswitch_data_0
    .sparse-switch
        0x27002 -> :sswitch_2
        0x27003 -> :sswitch_3
        0x27004 -> :sswitch_4
        0x27006 -> :sswitch_5
        0x27007 -> :sswitch_6
        0x27100 -> :sswitch_7
        0x27101 -> :sswitch_8
        0x27102 -> :sswitch_9
        0x27103 -> :sswitch_a
        0x27106 -> :sswitch_0
        0x27107 -> :sswitch_1
        0x27108 -> :sswitch_b
        0x2710a -> :sswitch_c
    .end sparse-switch
.end method
