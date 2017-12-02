.class Lcom/android/server/am/UserController$7;
.super Landroid/os/IRemoteCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field final synthetic val$dispatchStartedTime:J

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$newUserId:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;

.field final synthetic val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$dispatchStartedTime"    # J
    .param p4, "val$name"    # Ljava/lang/String;
    .param p6, "val$waitingCallbacksCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p7, "val$uss"    # Lcom/android/server/am/UserState;
    .param p8, "val$oldUserId"    # I
    .param p9, "val$newUserId"    # I

    .prologue
    .line 1116
    .local p5, "val$curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    iput-wide p2, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    iput-object p4, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object p6, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    iput p8, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    iput p9, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v2}, Lcom/android/server/am/UserController;->-get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    sub-long v0, v4, v6

    .line 1121
    .local v0, "delay":J
    const-wide/16 v4, 0xbb8

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 1122
    invoke-static {}, Lcom/android/server/am/UserController;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User switch timeout: observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1123
    const-string/jumbo v5, " sent result after "

    .line 1122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1123
    const-string/jumbo v5, " ms"

    .line 1122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1127
    iget-object v4, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v4}, Lcom/android/server/am/UserController;->-get1(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1126
    if-eq v2, v4, :cond_1

    monitor-exit v3

    .line 1119
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1128
    return-void

    .line 1130
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1132
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    iget-object v4, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    iget v5, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    iget v6, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    .line 1119
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1118
    return-void

    .line 1119
    .end local v0    # "delay":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
