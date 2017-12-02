.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/FgThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "android.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 34
    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 4

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/server/FgThread;

    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 41
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->start()V

    .line 42
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 38
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 50
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 57
    sget-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
