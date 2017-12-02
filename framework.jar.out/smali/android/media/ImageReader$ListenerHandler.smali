.class final Landroid/media/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/ImageReader;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 669
    iput-object p1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    .line 670
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 669
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 676
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get4(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 677
    :try_start_0
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get3(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    monitor-exit v3

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "isReaderValid":Z
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get0(Landroid/media/ImageReader;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 684
    :try_start_1
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-static {v2}, Landroid/media/ImageReader;->-get2(Landroid/media/ImageReader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .local v0, "isReaderValid":Z
    monitor-exit v3

    .line 686
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 687
    iget-object v2, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    invoke-interface {v1, v2}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    .line 674
    :cond_0
    return-void

    .line 676
    .end local v0    # "isReaderValid":Z
    .end local v1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 683
    .local v0, "isReaderValid":Z
    .restart local v1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
