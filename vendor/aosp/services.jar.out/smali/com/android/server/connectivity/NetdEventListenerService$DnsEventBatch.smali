.class Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsEventBatch"
.end annotation


# instance fields
.field private mEventCount:I

.field private final mEventTypes:[B

.field private final mLatenciesMs:[I

.field private final mNetId:I

.field private final mReturnCodes:[B

.field final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetdEventListenerService;
    .param p2, "netId"    # I

    .prologue
    const/16 v1, 0x64

    .line 74
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventTypes:[B

    .line 70
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mReturnCodes:[B

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    .line 75
    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mNetId:I

    .line 74
    return-void
.end method


# virtual methods
.method public addResult(BBI)V
    .locals 2
    .param p1, "eventType"    # B
    .param p2, "returnCode"    # B
    .param p3, "latencyMs"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventTypes:[B

    iget v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    aput-byte p1, v0, v1

    .line 80
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mReturnCodes:[B

    iget v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    aput-byte p2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    iget v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    aput p3, v0, v1

    .line 82
    iget v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    .line 83
    iget v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->logAndClear()V

    .line 78
    :cond_0
    return-void
.end method

.method public logAndClear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 90
    iget v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    if-nez v3, :cond_0

    .line 91
    return-void

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventTypes:[B

    iget v4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 96
    .local v0, "eventTypes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mReturnCodes:[B

    iget v4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 97
    .local v2, "returnCodes":[B
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mLatenciesMs:[I

    iget v4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 98
    .local v1, "latenciesMs":[I
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-static {v3}, Lcom/android/server/connectivity/NetdEventListenerService;->-get1(Lcom/android/server/connectivity/NetdEventListenerService;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v3

    new-instance v4, Landroid/net/metrics/DnsEvent;

    iget v5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mNetId:I

    invoke-direct {v4, v5, v0, v2, v1}, Landroid/net/metrics/DnsEvent;-><init>(I[B[B[I)V

    invoke-virtual {v3, v4}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 99
    const-string/jumbo v3, "Logging %d results for netId %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mNetId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->-wrap0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput v7, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    const-string/jumbo v0, "%s %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mNetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->mEventCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
