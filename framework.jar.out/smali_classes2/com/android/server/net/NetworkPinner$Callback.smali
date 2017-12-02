.class Lcom/android/server/net/NetworkPinner$Callback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPinner$Callback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPinner$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 91
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get2()Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq p0, v0, :cond_0

    monitor-exit v1

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    if-nez v0, :cond_1

    .line 95
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 96
    sput-object p1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    .line 97
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wifi alternate reality enabled on network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 105
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get2()Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq p0, v0, :cond_0

    monitor-exit v1

    return-void

    .line 108
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->unpin()V

    .line 110
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wifi alternate reality disabled on network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
