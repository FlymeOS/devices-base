.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 944
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    .line 941
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 949
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1001
    :goto_0
    :sswitch_0
    return v6

    .line 954
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get13(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get9(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/Clock;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/wifi/scanner/WifiScannerImpl$WifiScannerImplFactory;->create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/WifiScannerImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    .line 956
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/ChannelHelper;)Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v2, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/ChannelHelper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;-><init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-set0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    .line 962
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    .line 963
    .local v0, "capabilities":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    const-string/jumbo v2, "could not get scan capabilities"

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Ljava/lang/String;)V

    .line 965
    return v6

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->setMaxBuckets(I)V

    .line 968
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->setMaxApPerScan(I)V

    .line 970
    const-string/jumbo v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifi driver loaded with scan capabilities: max buckets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 971
    iget v3, v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    .line 970
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$StartedState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/internal/util/IState;)V

    .line 974
    return v6

    .line 976
    .end local v0    # "capabilities":Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    :sswitch_2
    const-string/jumbo v1, "WifiScanningService"

    const-string/jumbo v2, "wifi driver unloaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->-wrap11(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 986
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiBackgroundScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v2, "not available"

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 949
    :sswitch_data_0
    .sparse-switch
        0x27002 -> :sswitch_3
        0x27003 -> :sswitch_3
        0x27004 -> :sswitch_3
        0x27006 -> :sswitch_3
        0x27007 -> :sswitch_3
        0x27015 -> :sswitch_3
        0x27016 -> :sswitch_3
        0x27100 -> :sswitch_0
        0x27101 -> :sswitch_0
        0x27106 -> :sswitch_1
        0x27107 -> :sswitch_2
    .end sparse-switch
.end method
