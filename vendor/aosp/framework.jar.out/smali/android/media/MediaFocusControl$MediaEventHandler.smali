.class Landroid/media/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 347
    iput-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 349
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 386
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$900(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/PlayerRecord;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/PlayerRecord;I)V
    invoke-static {v1, v0, v2}, Landroid/media/MediaFocusControl;->access$1000(Landroid/media/MediaFocusControl;Landroid/media/PlayerRecord;I)V

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1100(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    .line 368
    :pswitch_4
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteVolumeObserver;

    # invokes: Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v1, v2, v0}, Landroid/media/MediaFocusControl;->access$1200(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    .line 374
    :pswitch_5
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/media/MediaFocusControl;->access$1300(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 379
    :pswitch_6
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$1400(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    .line 383
    :pswitch_7
    iget-object v1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
