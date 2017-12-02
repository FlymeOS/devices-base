.class Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 394
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap1(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v2

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->VALIDATED:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v1

    .line 393
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap5(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 395
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get1(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 396
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    .line 395
    const v3, 0x82002

    .line 396
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 395
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get15(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-set7(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 392
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get14(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap8(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 405
    const/4 v0, 0x1

    return v0

    .line 402
    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_0
    .end packed-switch
.end method
