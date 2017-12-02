.class final Lcom/android/server/devicepolicy/NetworkLogger;
.super Ljava/lang/Object;
.source "NetworkLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/NetworkLogger$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private final mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field private final mPm:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;)V
    .locals 2
    .param p1, "dpm"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "pm"    # Landroid/content/pm/PackageManagerInternal;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLogger$1;-><init>(Lcom/android/server/devicepolicy/NetworkLogger;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 87
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 88
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 86
    return-void
.end method

.method private checkIpConnectivityMetricsService()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_0

    .line 93
    return v2

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 96
    .local v0, "service":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_1

    .line 97
    const/4 v1, 0x0

    return v1

    .line 99
    :cond_1
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 100
    return v2
.end method


# virtual methods
.method retrieveLogs(J)Ljava/util/List;
    .locals 1
    .param p1, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->retrieveFullLogBatch(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method startNetworkLogging()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Starting network logging."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to register callback with IIpConnectivityMetrics."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v5

    .line 111
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v1, v2}, Landroid/net/IIpConnectivityMetrics;->registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const/16 v3, 0xa

    .line 113
    const/4 v4, 0x0

    .line 112
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 114
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 115
    new-instance v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 115
    invoke-direct {v1, v2, v3}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 117
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 118
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    return v6

    .line 121
    :cond_1
    return v5

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to make remote calls to register the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return v5
.end method

.method stopNetworkLogging()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 130
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Stopping network logging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to unregister callback with IIpConnectivityMetrics."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 145
    return v3

    .line 140
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v1}, Landroid/net/IIpConnectivityMetrics;->unregisterNetdEventCallback()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 145
    return v3

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to make remote calls to unregister the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 145
    return v3

    .line 143
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 144
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 145
    return v3
.end method
