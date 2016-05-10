.class Landroid/media/RemoteControlClient$EventHandler;
.super Landroid/os/Handler;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method public constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "rcc"    # Landroid/media/RemoteControlClient;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1009
    iput-object p1, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    .line 1010
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1011
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1015
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1020
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in RemoteControlClient handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :goto_0
    return-void

    .line 1017
    :pswitch_0
    iget-object v0, p0, Landroid/media/RemoteControlClient$EventHandler;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->onPositionDriftCheck()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$1000(Landroid/media/RemoteControlClient;)V

    goto :goto_0

    .line 1015
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
