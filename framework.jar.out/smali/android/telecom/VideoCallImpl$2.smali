.class Landroid/telecom/VideoCallImpl$2;
.super Landroid/os/Handler;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 103
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v6

    if-nez v6, :cond_0

    .line 151
    :goto_0
    return-void

    .line 111
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/VideoProfile;

    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Listener;->onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 118
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 119
    .local v4, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 120
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 122
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v6

    invoke-virtual {v6, v4, v2, v3}, Landroid/telecom/InCallService$VideoCall$Listener;->onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "status":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 129
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Listener;->onCallSessionEvent(I)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 134
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 135
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    .local v1, "height":I
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Landroid/telecom/InCallService$VideoCall$Listener;->onPeerDimensionsChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v1    # "height":I
    .end local v5    # "width":I
    :catchall_1
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 142
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/telecom/InCallService$VideoCall$Listener;->onCallDataUsageChanged(I)V

    goto :goto_0

    .line 145
    :pswitch_5
    iget-object v6, p0, Landroid/telecom/VideoCallImpl$2;->this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/CameraCapabilities;

    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Listener;->onCameraCapabilitiesChanged(Landroid/telecom/CameraCapabilities;)V

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
