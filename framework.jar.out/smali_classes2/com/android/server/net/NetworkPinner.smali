.class public Lcom/android/server/net/NetworkPinner;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPinner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCM:Landroid/net/ConnectivityManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field protected static final sLock:Ljava/lang/Object;

.field protected static sNetwork:Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/net/NetworkPinner$Callback;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/server/net/NetworkPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private static maybeInitConnectivityManager(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 81
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    .line 82
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad luck, ConnectivityService not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method public static pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 118
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    if-nez v1, :cond_0

    .line 120
    invoke-static {p0}, Lcom/android/server/net/NetworkPinner;->maybeInitConnectivityManager(Landroid/content/Context;)V

    .line 121
    new-instance v1, Lcom/android/server/net/NetworkPinner$Callback;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/net/NetworkPinner$Callback;-><init>(Lcom/android/server/net/NetworkPinner$Callback;)V

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v1, p1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 117
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v1, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to register network callback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static unpin()V
    .locals 4

    .prologue
    .line 133
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 137
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    .line 142
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v2

    .line 132
    return-void

    .line 138
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_0
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/SecurityException;
    :try_start_3
    sget-object v1, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister network callback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
