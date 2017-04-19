.class final Landroid/app/Instrumentation$SyncRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private mComplete:Z

.field private final mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Runnable;

    .prologue
    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1893
    iput-object p1, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 1892
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1898
    monitor-enter p0

    .line 1899
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z

    .line 1900
    invoke-virtual {p0}, Landroid/app/Instrumentation$SyncRunnable;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1896
    return-void

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForComplete()V
    .locals 2

    .prologue
    .line 1905
    monitor-enter p0

    .line 1906
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1908
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Instrumentation$SyncRunnable;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    .line 1904
    return-void

    .line 1905
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
