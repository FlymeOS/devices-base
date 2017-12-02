.class Lcom/android/server/connectivity/NetdEventListenerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetdEventListenerService;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-static {v1}, Lcom/android/server/connectivity/NetdEventListenerService;->-get0(Lcom/android/server/connectivity/NetdEventListenerService;)Ljava/util/SortedMap;

    move-result-object v1

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;

    .line 125
    .local v0, "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;->logAndClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 122
    return-void

    .line 123
    .end local v0    # "batch":Lcom/android/server/connectivity/NetdEventListenerService$DnsEventBatch;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
