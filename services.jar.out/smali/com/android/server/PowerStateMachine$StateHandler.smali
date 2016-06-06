.class Lcom/android/server/PowerStateMachine$StateHandler;
.super Landroid/os/Handler;
.source "PowerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerStateMachine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    .line 450
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 451
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 455
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 502
    const-string v0, "MzPowerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerStateMachine;->access$800(Lcom/android/server/PowerStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/PowerStateMachine;->isScreenLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    iget-object v1, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PowerStateMachine;->access$800(Lcom/android/server/PowerStateMachine;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/PowerStateMachine;->isLockPasswordEnabled(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$900(Lcom/android/server/PowerStateMachine;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    goto :goto_0

    .line 472
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    goto :goto_0

    .line 476
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    .line 479
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    goto :goto_0

    .line 483
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    .line 486
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x5

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    goto :goto_0

    .line 490
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x6

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    goto :goto_0

    .line 494
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1000(Lcom/android/server/PowerStateMachine;I)V

    goto :goto_0

    .line 498
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    iget-object v1, p0, Lcom/android/server/PowerStateMachine$StateHandler;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mPlugStatus:Z
    invoke-static {v1}, Lcom/android/server/PowerStateMachine;->access$1100(Lcom/android/server/PowerStateMachine;)Z

    move-result v1

    # invokes: Lcom/android/server/PowerStateMachine;->handlePlug(Z)V
    invoke-static {v0, v1}, Lcom/android/server/PowerStateMachine;->access$1200(Lcom/android/server/PowerStateMachine;Z)V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
