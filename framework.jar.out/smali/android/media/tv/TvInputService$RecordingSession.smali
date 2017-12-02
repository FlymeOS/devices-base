.class public abstract Landroid/media/tv/TvInputService$RecordingSession;
.super Ljava/lang/Object;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordingSession"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    .line 1521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    .line 1529
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    .line 1528
    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1790
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1791
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v0, :cond_0

    .line 1793
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1789
    return-void

    .line 1795
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1796
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1790
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1799
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    .prologue
    .line 1780
    iget-object v3, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1781
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    .line 1782
    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "runnable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1783
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1780
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "runnable$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1785
    .restart local v1    # "runnable$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1779
    return-void
.end method


# virtual methods
.method appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1776
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1775
    return-void
.end method

.method public notifyError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 1606
    if-ltz p1, :cond_0

    .line 1607
    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 1608
    :cond_0
    const-string/jumbo v1, "TvInputService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyError - invalid error code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1609
    const-string/jumbo v3, ") is changed to RECORDING_ERROR_UNKNOWN."

    .line 1608
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 p1, 0x0

    .line 1612
    :cond_1
    move v0, p1

    .line 1613
    .local v0, "validError":I
    new-instance v1, Landroid/media/tv/TvInputService$RecordingSession$3;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$RecordingSession$3;-><init>(Landroid/media/tv/TvInputService$RecordingSession;I)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1605
    return-void
.end method

.method public notifyRecordingStopped(Landroid/net/Uri;)V
    .locals 1
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .prologue
    .line 1572
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$2;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$2;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1571
    return-void
.end method

.method public notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    .prologue
    .line 1638
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession$4;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1637
    return-void
.end method

.method public notifyTuned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .prologue
    .line 1544
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$1;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$1;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1543
    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1737
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public abstract onStartRecording(Landroid/net/Uri;)V
.end method

.method public abstract onStopRecording()V
.end method

.method public abstract onTune(Landroid/net/Uri;)V
.end method

.method public onTune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1685
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;)V

    .line 1684
    return-void
.end method

.method release()V
    .locals 0

    .prologue
    .line 1753
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onRelease()V

    .line 1752
    return-void
.end method

.method startRecording(Landroid/net/Uri;)V
    .locals 0
    .param p1, "programUri"    # Landroid/net/Uri;

    .prologue
    .line 1761
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onStartRecording(Landroid/net/Uri;)V

    .line 1760
    return-void
.end method

.method stopRecording()V
    .locals 0

    .prologue
    .line 1769
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onStopRecording()V

    .line 1768
    return-void
.end method

.method tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1745
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1744
    return-void
.end method
