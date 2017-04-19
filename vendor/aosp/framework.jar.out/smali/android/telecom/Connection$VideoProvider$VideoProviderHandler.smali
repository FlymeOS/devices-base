.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 573
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    .line 574
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 577
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    .line 578
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 583
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 582
    :goto_0
    return-void

    .line 585
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 587
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    .line 586
    invoke-static {v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    .line 588
    .local v2, "callback":Lcom/android/internal/telecom/IVideoCallback;
    if-nez v2, :cond_0

    .line 589
    const-string/jumbo v3, "addVideoProvider - skipped; callback is null."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_0
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    const-string/jumbo v3, "addVideoProvider - skipped; already present."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 601
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 603
    .restart local v1    # "binder":Landroid/os/IBinder;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    .line 602
    invoke-static {v3}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    .line 604
    .restart local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 605
    const-string/jumbo v3, "removeVideoProvider - skipped; not present."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 608
    :cond_2
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->-get1(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 612
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Lcom/android/internal/telecom/IVideoCallback;
    :pswitch_2
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :pswitch_3
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 618
    :pswitch_4
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 621
    :pswitch_5
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    goto/16 :goto_0

    .line 624
    :pswitch_6
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    goto/16 :goto_0

    .line 627
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 629
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 630
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/VideoProfile;

    .line 629
    invoke-virtual {v5, v3, v4}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 631
    :catchall_0
    move-exception v3

    .line 632
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 631
    throw v3

    .line 637
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 640
    :pswitch_9
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_0

    .line 643
    :pswitch_a
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto/16 :goto_0

    .line 646
    :pswitch_b
    iget-object v4, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$1:Landroid/telecom/Connection$VideoProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method
