.class Landroid/media/AudioManager$2;
.super Landroid/media/IRecordingConfigDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .prologue
    .line 2912
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IRecordingConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchRecordingConfigChange(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2915
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get3(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2916
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2917
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2918
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    .line 2919
    .local v0, "arci":Landroid/media/AudioManager$AudioRecordingCallbackInfo;
    iget-object v3, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2920
    iget-object v3, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    .line 2922
    new-instance v5, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    iget-object v6, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-direct {v5, v6, p1}, Landroid/media/AudioManager$RecordConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Ljava/util/List;)V

    .line 2921
    const/4 v6, 0x1

    .line 2920
    invoke-virtual {v3, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2923
    .local v2, "m":Landroid/os/Message;
    iget-object v3, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arci":Landroid/media/AudioManager$AudioRecordingCallbackInfo;
    .end local v1    # "i":I
    :cond_1
    monitor-exit v4

    .line 2914
    return-void

    .line 2915
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
