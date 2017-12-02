.class final Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ITvInputSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/ITvInputSessionWrapper;


# direct methods
.method public constructor <init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/ITvInputSessionWrapper;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 365
    iput-object p1, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    .line 366
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 365
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v3, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v3}, Landroid/media/tv/ITvInputSessionWrapper;->-get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v3

    if-nez v3, :cond_0

    .line 373
    invoke-virtual {p0, p1, v2}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 374
    return-void

    .line 377
    :cond_0
    iget-object v3, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v3}, Landroid/media/tv/ITvInputSessionWrapper;->-get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v3

    invoke-virtual {v3, p1, p0}, Landroid/media/tv/TvInputService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    .line 378
    .local v0, "handled":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 379
    if-ne v0, v1, :cond_2

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 370
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 379
    goto :goto_0
.end method
