.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiHotplugEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    .line 1191
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get8(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1194
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap0(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1195
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 1196
    return-void

    .line 1198
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get5(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    .local v1, "inputId":Ljava/lang/String;
    if-nez v1, :cond_1

    monitor-exit v3

    .line 1200
    return-void

    .line 1202
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get4(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object v2

    .line 1203
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap3(Lcom/android/server/tv/TvInputHardwareManager;Z)I

    move-result v4

    .line 1202
    const/4 v5, 0x1

    .line 1203
    const/4 v6, 0x0

    .line 1202
    invoke-virtual {v2, v5, v4, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1190
    return-void

    .line 1191
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v1    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
