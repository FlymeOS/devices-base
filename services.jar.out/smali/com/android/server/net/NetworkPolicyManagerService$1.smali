.class Lcom/android/server/net/NetworkPolicyManagerService$1;
.super Landroid/app/IUidObserver$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    return-void
.end method

.method public onUidGone(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 694
    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUidIdle(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 703
    return-void
.end method

.method public onUidStateChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/32 v2, 0x200000

    .line 684
    const-string/jumbo v0, "onUidStateChanged"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 687
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 690
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 683
    return-void

    .line 686
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 689
    :catchall_1
    move-exception v0

    .line 690
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 689
    throw v0
.end method
