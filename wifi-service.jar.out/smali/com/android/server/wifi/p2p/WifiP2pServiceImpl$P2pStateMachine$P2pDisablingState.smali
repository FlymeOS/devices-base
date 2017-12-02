.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pDisablingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 964
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get6()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set2(I)I

    move-result v2

    .line 963
    const v3, 0x23006

    .line 964
    const/4 v4, 0x0

    .line 963
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 964
    const-wide/16 v2, 0x1388

    .line 963
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 961
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20085

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 992
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 970
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 986
    const/4 v0, 0x0

    return v0

    .line 973
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 988
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 977
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 980
    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get6()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v1, "P2p disable timed out"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 970
    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_1
        0x23006 -> :sswitch_2
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method
