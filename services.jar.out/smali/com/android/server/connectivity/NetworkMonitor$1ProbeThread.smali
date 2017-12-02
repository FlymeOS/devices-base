.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mIsHttps:Z

.field private volatile mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "isHttps"    # Z
    .param p3, "val$proxy"    # Landroid/net/ProxyInfo;
    .param p4, "val$httpsUrl"    # Ljava/net/URL;
    .param p5, "val$httpUrl"    # Ljava/net/URL;
    .param p6, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 855
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 858
    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    .line 857
    return-void
.end method


# virtual methods
.method public result()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap0(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    .line 868
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 873
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap0(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    goto :goto_0

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 866
    return-void
.end method
