.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 496
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-result v1

    const v2, 0x82006

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 500
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 502
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 504
    :cond_1
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 505
    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 492
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 581
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 580
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v9, 0x927c0

    const v8, 0x82002

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 510
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 575
    :pswitch_0
    return v3

    .line 512
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get13(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    :cond_0
    return v2

    .line 531
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 532
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 531
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 533
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v4, "Network would not satisfy default request, not validating"

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap9(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap8(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 535
    return v2

    .line 537
    :cond_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    .line 544
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .line 545
    .local v1, "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 546
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap8(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 568
    :cond_3
    :goto_0
    return v2

    .line 547
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 548
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 549
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    iget-object v6, v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 548
    invoke-virtual {v4, v8, v2, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-set1(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 551
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get0(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap8(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 553
    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get11(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    move-result v5

    const v6, 0x82006

    invoke-virtual {v4, v6, v5, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 555
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap4(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 556
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 557
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    .line 558
    iget-object v6, v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 556
    invoke-virtual {v4, v8, v2, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-lt v3, v7, :cond_6

    .line 561
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 563
    :cond_6
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    .line 564
    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    if-le v3, v9, :cond_3

    .line 565
    iput v9, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    goto :goto_0

    .line 573
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "probeResult":Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
    :pswitch_2
    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-ge v4, v7, :cond_7

    :goto_1
    return v2

    :cond_7
    move v2, v3

    goto :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x82006
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
