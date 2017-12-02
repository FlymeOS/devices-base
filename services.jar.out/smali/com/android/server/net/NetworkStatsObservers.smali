.class Lcom/android/server/net/NetworkStatsObservers;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsObservers$1;,
        Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;,
        Lcom/android/server/net/NetworkStatsObservers$RequestInfo;,
        Lcom/android/server/net/NetworkStatsObservers$StatsContext;,
        Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;
    }
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final MIN_THRESHOLD_BYTES:J = 0x200000L

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2

.field private static final MSG_UPDATE_STATS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NetworkStatsObservers"


# instance fields
.field private final mDataUsageRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/net/NetworkStatsObservers$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .locals 0
    .param p1, "requestInfo"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->handleRegister(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "callingUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsObservers;->handleUnregister(Landroid/net/DataUsageRequest;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsObservers;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 0
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->handleUpdateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsObservers$1;-><init>(Lcom/android/server/net/NetworkStatsObservers;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 53
    return-void
.end method

.method private buildRequest(Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;
    .locals 6
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .prologue
    .line 204
    iget-wide v2, p1, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 205
    .local v0, "thresholdInBytes":J
    iget-wide v2, p1, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 206
    const-string/jumbo v2, "NetworkStatsObservers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Threshold was too low for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string/jumbo v4, ". Overriding to a safer default of "

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string/jumbo v4, " bytes"

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v2, Landroid/net/DataUsageRequest;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsObservers;->mNextDataUsageRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 210
    iget-object v4, p1, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    .line 209
    invoke-direct {v2, v3, v4, v0, v1}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    return-object v2
.end method

.method private buildRequestInfo(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    .locals 7
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "accessLevel"    # I

    .prologue
    const/4 v0, 0x1

    .line 216
    if-gt p5, v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    return-object v0

    .line 221
    :cond_0
    const/4 v1, 0x2

    if-lt p5, v1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 222
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsObservers$NetworkUsageRequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    return-object v0

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandlerLooperLocked()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleRegister(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget v1, v1, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method private handleUnregister(Landroid/net/DataUsageRequest;I)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "callingUid"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .line 176
    .local v0, "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    const/16 v1, 0x3e8

    if-eq v1, p2, :cond_1

    iget v1, v0, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->mCallingUid:I

    if-eq v1, p2, :cond_1

    .line 181
    const-string/jumbo v1, "NetworkStatsObservers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not owner of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/DataUsageRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->-wrap1(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;)V

    .line 188
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->-wrap0(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;I)V

    .line 173
    return-void
.end method

.method private handleUpdateStats(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 3
    .param p1, "statsContext"    # Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mDataUsageRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    .line 198
    .local v1, "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    invoke-static {v1, p1}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;->-wrap2(Lcom/android/server/net/NetworkStatsObservers$RequestInfo;Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHandlerLooperLocked()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NetworkStatsObservers"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method public register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;
    .locals 7
    .param p1, "inputRequest"    # Landroid/net/DataUsageRequest;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "callingUid"    # I
    .param p5, "accessLevel"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsObservers;->buildRequest(Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    move-result-object v1

    .local v1, "request":Landroid/net/DataUsageRequest;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsObservers;->buildRequestInfo(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Lcom/android/server/net/NetworkStatsObservers$RequestInfo;

    move-result-object v6

    .line 89
    .local v6, "requestInfo":Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-object v1
.end method

.method public unregister(Landroid/net/DataUsageRequest;I)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;
    .param p2, "callingUid"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V
    .locals 8
    .param p1, "xtSnapshot"    # Landroid/net/NetworkStats;
    .param p2, "uidSnapshot"    # Landroid/net/NetworkStats;
    .param p5, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p6, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "activeIfaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p4, "activeUidIfaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    new-instance v0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsObservers$StatsContext;-><init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    .line 114
    .local v0, "statsContext":Lcom/android/server/net/NetworkStatsObservers$StatsContext;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsObservers;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method
