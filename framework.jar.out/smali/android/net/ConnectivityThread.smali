.class public final Landroid/net/ConnectivityThread;
.super Landroid/os/HandlerThread;
.source "ConnectivityThread.java"


# static fields
.field private static sInstance:Landroid/net/ConnectivityThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "ConnectivityThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static get()Landroid/net/ConnectivityThread;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/net/ConnectivityThread;->getInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstance()Landroid/net/ConnectivityThread;
    .locals 2

    .prologue
    const-class v1, Landroid/net/ConnectivityThread;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/net/ConnectivityThread;

    invoke-direct {v0}, Landroid/net/ConnectivityThread;-><init>()V

    sput-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;

    .line 39
    sget-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;

    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->start()V

    .line 41
    :cond_0
    sget-object v0, Landroid/net/ConnectivityThread;->sInstance:Landroid/net/ConnectivityThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstanceLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/net/ConnectivityThread;->getInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
