.class public final Lcom/android/server/connectivity/IpConnectivityMetrics;
.super Lcom/android/server/SystemService;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/IpConnectivityMetrics$-void__clinit___LambdaImpl0;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x7d0

.field private static final ERROR_RATE_LIMITED:I = -0x1

.field private static final MAXIMUM_BUFFER_SIZE:I = 0x4e20

.field private static final MAXIMUM_CONNECT_LATENCY_RECORDS:I = 0x4e20

.field private static final NYC:I = 0x0

.field private static final NYC_MR1:I = 0x1

.field private static final NYC_MR2:I = 0x2

.field private static final READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:I = 0x2


# instance fields
.field public final impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

.field private final mBuckets:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mBuffer:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCapacityGetter:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDropped:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method static synthetic -com_android_server_connectivity_IpConnectivityMetrics_lambda$1(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x7d0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 305
    const-string/jumbo v2, "connectivity_metrics_buffer_size"

    .line 304
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 307
    return v3

    .line 309
    :cond_0
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method static synthetic -get0(Lcom/android/server/connectivity/IpConnectivityMetrics;)Lcom/android/server/connectivity/NetdEventListenerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->append(Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdDefault(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdFlush(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    .line 303
    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$-void__clinit___LambdaImpl0;

    invoke-direct {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$-void__clinit___LambdaImpl0;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;-><init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/ToIntFunction",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "capacityGetter":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/content/Context;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 88
    invoke-static {}, Lcom/android/server/connectivity/IpConnectivityMetrics;->makeRateLimitingBuckets()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    .line 94
    iput-object p2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    .line 95
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 92
    return-void
.end method

.method private append(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 5
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    iget-object v3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    sub-int v0, v1, v3

    .line 135
    .local v0, "left":I
    if-nez p1, :cond_0

    monitor-exit v2

    .line 136
    return v0

    .line 138
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const/4 v1, -0x1

    monitor-exit v2

    return v1

    .line 142
    :cond_1
    if-nez v0, :cond_2

    .line 143
    :try_start_2
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 144
    return v4

    .line 146
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    add-int/lit8 v1, v0, -0x1

    monitor-exit v2

    return v1

    .line 133
    .end local v0    # "left":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private cmdDefault(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 224
    array-length v0, p3

    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, "No command"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private cmdFlush(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->flushEncodedOutput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private cmdList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 196
    iget-object v5, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 197
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    monitor-exit v5

    .line 200
    array-length v4, p3

    if-le v4, v6, :cond_1

    aget-object v4, p3, v6

    const-string/jumbo v5, "proto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ev$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    .line 202
    .local v1, "ev":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v1    # "ev":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .end local v2    # "ev$iterator":Ljava/util/Iterator;
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 204
    .restart local v2    # "ev$iterator":Ljava/util/Iterator;
    .restart local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    :cond_0
    return-void

    .line 207
    .end local v2    # "ev$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "ev$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityMetricsEvent;

    .line 208
    .local v0, "ev":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v0}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v0    # "ev":Landroid/net/ConnectivityMetricsEvent;
    :cond_2
    return-void
.end method

.method private cmdStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Buffered events: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Buffer capacity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropped events: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 218
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->dump(Ljava/io/PrintWriter;)V

    .line 212
    :cond_0
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private flushEncodedOutput()Ljava/lang/String;
    .locals 7

    .prologue
    .line 159
    iget-object v6, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 161
    .local v3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 162
    .local v1, "dropped":I
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 165
    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 167
    .local v4, "protoEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v5, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->flushStatistics(Ljava/util/List;)V

    .line 173
    :cond_0
    :try_start_1
    invoke-static {v1, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 179
    .local v0, "data":[B
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 159
    .end local v0    # "data":[B
    .end local v1    # "dropped":I
    .end local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    .end local v4    # "protoEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 174
    .restart local v1    # "dropped":I
    .restart local v3    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    .restart local v4    # "protoEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "could not serialize events"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const-string/jumbo v5, ""

    return-object v5
.end method

.method private initBuffer()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 126
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->bufferCapacity()I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/TokenBucket;

    .line 153
    .local v0, "tb":Lcom/android/internal/util/TokenBucket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static makeRateLimitingBuckets()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 315
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Lcom/android/internal/util/TokenBucket;>;"
    const-class v1, Landroid/net/metrics/ApfProgramEvent;

    new-instance v2, Lcom/android/internal/util/TokenBucket;

    const v3, 0xea60

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object v0
.end method


# virtual methods
.method public bufferCapacity()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 109
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 113
    const-string/jumbo v0, "connmetrics"

    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    const-string/jumbo v0, "netd_listener"

    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
