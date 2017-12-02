.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 776
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 778
    :cond_0
    const-string/jumbo v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 779
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 780
    :try_start_0
    const-string/jumbo v6, "connected"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 781
    .local v5, "usbConnected":Z
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string/jumbo v8, "rndis"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering;->-set1(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 783
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get13(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 784
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;ZI)V

    .line 786
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering;->-set2(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "usbConnected":Z
    :cond_2
    :goto_0
    :pswitch_0
    monitor-exit v7

    .line 775
    :cond_3
    :goto_1
    return-void

    .line 779
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 788
    :cond_4
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 790
    const-string/jumbo v6, "networkInfo"

    .line 789
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 791
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    .line 792
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_3

    .line 794
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x50003

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 796
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 797
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 798
    :try_start_1
    const-string/jumbo v6, "wifi_state"

    .line 799
    const/16 v8, 0xb

    .line 798
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 800
    .local v1, "curState":I
    packed-switch v1, :pswitch_data_0

    .line 820
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 822
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 821
    iget-object v4, v6, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 823
    .local v4, "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-virtual {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v6

    if-nez v6, :cond_7

    .line 825
    const v6, 0x50067

    .line 824
    invoke-virtual {v4, v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 831
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_6
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/connectivity/Tethering;->-set3(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 797
    .end local v1    # "curState":I
    .end local v2    # "i":I
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 806
    .restart local v1    # "curState":I
    :pswitch_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 807
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 820
    .restart local v2    # "i":I
    .restart local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 835
    .end local v1    # "curState":I
    .end local v2    # "i":I
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_8
    const-string/jumbo v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 836
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_1

    .line 800
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
