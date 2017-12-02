.class final Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;
.super Lcom/android/server/wm/InputConsumerImpl;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$InputConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HideNavInputConsumer"
.end annotation


# instance fields
.field private final mInputEventReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .prologue
    .line 10359
    const-string/jumbo v0, "input consumer"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 10361
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mClientChannel:Landroid/view/InputChannel;

    .line 10360
    invoke-interface {p3, v0, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 10358
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 10366
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->removeInputConsumer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10367
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 10368
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 10369
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$HideNavInputConsumer;->disposeChannelsLw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 10365
    :cond_0
    return-void

    .line 10367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
