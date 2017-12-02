.class public Lcom/android/server/connectivity/ConnectStats;
.super Ljava/lang/Object;
.source "ConnectStats.java"


# static fields
.field private static final EALREADY:I

.field private static final EINPROGRESS:I


# instance fields
.field private mConnectCount:I

.field private final mErrnos:Landroid/util/SparseIntArray;

.field private mIpv6ConnectCount:I

.field private final mLatencies:Landroid/util/IntArray;

.field private final mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field private final mMaxLatencyRecords:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget v0, Landroid/system/OsConstants;->EALREADY:I

    sput v0, Lcom/android/server/connectivity/ConnectStats;->EALREADY:I

    .line 34
    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    sput v0, Lcom/android/server/connectivity/ConnectStats;->EINPROGRESS:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/TokenBucket;I)V
    .locals 2
    .param p1, "tb"    # Lcom/android/internal/util/TokenBucket;
    .param p2, "maxLatencyRecords"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/ConnectStats;->mErrnos:Landroid/util/SparseIntArray;

    .line 39
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/ConnectStats;->mLatencies:Landroid/util/IntArray;

    .line 45
    iput v1, p0, Lcom/android/server/connectivity/ConnectStats;->mConnectCount:I

    .line 47
    iput v1, p0, Lcom/android/server/connectivity/ConnectStats;->mIpv6ConnectCount:I

    .line 50
    iput-object p1, p0, Lcom/android/server/connectivity/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    .line 51
    iput p2, p0, Lcom/android/server/connectivity/ConnectStats;->mMaxLatencyRecords:I

    .line 49
    return-void
.end method

.method private countConnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/connectivity/ConnectStats;->mConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/ConnectStats;->mConnectCount:I

    .line 74
    invoke-static {p1}, Lcom/android/server/connectivity/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/ConnectStats;->mIpv6ConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/ConnectStats;->mIpv6ConnectCount:I

    .line 72
    :cond_0
    return-void
.end method

.method private countError(I)V
    .locals 3
    .param p1, "errno"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/server/connectivity/ConnectStats;->mErrnos:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 95
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/android/server/connectivity/ConnectStats;->mErrnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    return-void
.end method

.method private countLatency(II)V
    .locals 2
    .param p1, "errno"    # I
    .param p2, "ms"    # I

    .prologue
    .line 78
    invoke-static {p1}, Lcom/android/server/connectivity/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/ConnectStats;->mLatencies:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/ConnectStats;->mMaxLatencyRecords:I

    if-lt v0, v1, :cond_2

    .line 88
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/ConnectStats;->mLatencies:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 77
    return-void
.end method

.method private static isIPv6(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isNonBlocking(I)Z
    .locals 2
    .param p0, "errno"    # I

    .prologue
    const/4 v0, 0x1

    .line 105
    sget v1, Lcom/android/server/connectivity/ConnectStats;->EINPROGRESS:I

    if-eq p0, v1, :cond_0

    sget v1, Lcom/android/server/connectivity/ConnectStats;->EALREADY:I

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSuccess(I)Z
    .locals 1
    .param p0, "errno"    # I

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/connectivity/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static toPairArrays(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    .locals 5
    .param p0, "counts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 114
    .local v3, "s":I
    new-array v2, v3, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    .line 115
    .local v2, "pairs":[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 116
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;-><init>()V

    .line 117
    .local v1, "p":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;->key:I

    .line 118
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;->value:I

    .line 119
    aput-object v1, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "p":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;)V
    .locals 1
    .param p1, "errno"    # I
    .param p2, "latencyMs"    # I
    .param p3, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/android/server/connectivity/ConnectStats;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/ConnectStats;->countConnect(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/ConnectStats;->countLatency(II)V

    .line 63
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/ConnectStats;->countError(I)V

    goto :goto_0
.end method

.method public toProto()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    .line 56
    .local v0, "stats":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;
    iget v1, p0, Lcom/android/server/connectivity/ConnectStats;->mConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 57
    iget v1, p0, Lcom/android/server/connectivity/ConnectStats;->mIpv6ConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 58
    iget-object v1, p0, Lcom/android/server/connectivity/ConnectStats;->mLatencies:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 59
    iget-object v1, p0, Lcom/android/server/connectivity/ConnectStats;->mErrnos:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/ConnectStats;->toPairArrays(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;

    .line 60
    return-object v0
.end method
