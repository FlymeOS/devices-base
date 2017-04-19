.class Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 361
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 360
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    return-void

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->-wrap0(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 373
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/MediaFocusControl;->-wrap2(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V

    goto :goto_0

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->-wrap4(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 381
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 382
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteVolumeObserver;

    .line 381
    invoke-static {v1, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->-wrap5(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    .line 387
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    .line 388
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 387
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->-wrap1(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 392
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->-wrap3(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 396
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 366
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
