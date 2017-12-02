.class final Lcom/android/server/tv/TvInputManagerService$HardwareListener;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHardwareManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HardwareListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    .line 2734
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$HardwareListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method


# virtual methods
.method public onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 2744
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2745
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2747
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2748
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2750
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2751
    :catch_0
    move-exception v0

    .line 2752
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHardwareAdded"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2744
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    .line 2743
    return-void
.end method

.method public onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    .line 2760
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2761
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2763
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2764
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2766
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2767
    :catch_0
    move-exception v0

    .line 2768
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHardwareRemoved"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2760
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    .line 2759
    return-void
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 7
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 2776
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2777
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2779
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2780
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2782
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2783
    :catch_0
    move-exception v0

    .line 2784
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHdmiDeviceAdded"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2776
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    .line 2775
    return-void
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 7
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 2792
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2793
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 2795
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get7(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "serviceState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2796
    .local v1, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get5(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2798
    :try_start_1
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->-get7(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2799
    :catch_0
    move-exception v0

    .line 2800
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v6, "error in notifyHdmiDeviceRemoved"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2792
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "serviceState$iterator":Ljava/util/Iterator;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_1
    monitor-exit v5

    .line 2791
    return-void
.end method

.method public onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 2808
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2810
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2821
    const/4 v0, 0x0

    .line 2824
    :goto_0
    if-eqz v0, :cond_0

    .line 2825
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v4

    invoke-static {v1, p1, v3, v4}, Lcom/android/server/tv/TvInputManagerService;->-wrap19(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2807
    return-void

    .line 2812
    :pswitch_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "state":Ljava/lang/Integer;
    goto :goto_0

    .line 2817
    .end local v0    # "state":Ljava/lang/Integer;
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "state":Ljava/lang/Integer;
    goto :goto_0

    .line 2808
    .end local v0    # "state":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2810
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2738
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$HardwareListener;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    invoke-static {v0, p1, p2, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap19(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2736
    return-void

    .line 2737
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
