.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$1;,
        Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    }
.end annotation


# static fields
.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final CONNECT_LATENCY_MAXIMUM_RECORDS:I = 0x4e20

.field private static final DBG:Z = false

.field private static final MAX_LOOKUPS_PER_DNS_EVENT:I = 0x64

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private mConnectStats:Lcom/android/server/connectivity/ConnectStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mEventBatches:Ljava/util/SortedMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mNetdEventCallback:Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/NetdEventListenerService;)Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/NetdEventListenerService;)Landroid/net/metrics/IpConnectivityLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v1}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;Landroid/net/metrics/IpConnectivityLog;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/metrics/IpConnectivityLog;)V
    .locals 4
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "log"    # Landroid/net/metrics/IpConnectivityLog;

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 112
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    .line 120
    new-instance v1, Lcom/android/server/connectivity/NetdEventListenerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/NetdEventListenerService$1;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 134
    new-instance v1, Lcom/android/internal/util/TokenBucket;

    const/16 v2, 0x3a98

    const/16 v3, 0x1388

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    .line 133
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 136
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->makeConnectStats()Lcom/android/server/connectivity/ConnectStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectStats:Lcom/android/server/connectivity/ConnectStats;

    .line 160
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 161
    iput-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 162
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 163
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 158
    return-void
.end method

.method private flushConnectStats()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    .line 208
    .local v0, "ev":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectStats:Lcom/android/server/connectivity/ConnectStats;

    invoke-virtual {v1}, Lcom/android/server/connectivity/ConnectStats;->toProto()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->connectStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    .line 210
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->makeConnectStats()Lcom/android/server/connectivity/ConnectStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectStats:Lcom/android/server/connectivity/ConnectStats;

    .line 211
    return-object v0
.end method

.method private makeConnectStats()Lcom/android/server/connectivity/ConnectStats;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/android/server/connectivity/ConnectStats;

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    const/16 v2, 0x4e20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/ConnectStats;-><init>(Lcom/android/internal/util/TokenBucket;I)V

    return-object v0
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 229
    return-void
.end method

.method private static varargs maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 233
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 215
    :try_start_0
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    invoke-direct {v2, p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 216
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 218
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "batch$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;

    .line 219
    .local v0, "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    .end local v1    # "batch$iterator":Ljava/util/Iterator;
    .end local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 222
    .restart local v1    # "batch$iterator":Ljava/util/Iterator;
    .restart local v2    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 214
    return-void
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->flushConnectStats()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 201
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 192
    :try_start_0
    const-string/jumbo v0, "onConnectEvent(%d, %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectStats:Lcom/android/server/connectivity/ConnectStats;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/connectivity/ConnectStats;->addEvent(IILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p4

    move v3, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 191
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 172
    :try_start_0
    const-string/jumbo v0, "onDnsEvent(%d, %d, %d, %dms)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;

    .line 175
    .local v7, "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    if-nez v7, :cond_0

    .line 176
    new-instance v7, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;

    .end local v7    # "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    invoke-direct {v7, p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;I)V

    .line 177
    .restart local v7    # "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mEventBatches:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    int-to-byte v0, p2

    int-to-byte v1, p3

    invoke-virtual {v7, v0, v1, p4}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->addResult(BBI)V

    .line 181
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p5

    move-object v2, p6

    move v3, p7

    move/from16 v6, p8

    .line 182
    invoke-interface/range {v0 .. v6}, Landroid/net/INetdEventCallback;->onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 171
    return-void

    .end local v7    # "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/net/INetdEventCallback;

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterNetdEventCallback()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 149
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
