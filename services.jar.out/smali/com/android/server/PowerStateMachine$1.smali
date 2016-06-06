.class Lcom/android/server/PowerStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/PowerStateMachine;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "strAction":Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 515
    const-string v5, "MzPowerStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "power state machine receive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 518
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # setter for: Lcom/android/server/PowerStateMachine;->mScreenState:I
    invoke-static {v4, v0}, Lcom/android/server/PowerStateMachine;->access$1302(Lcom/android/server/PowerStateMachine;I)I

    .line 519
    const-string v4, "MzPowerStateMachine"

    const-string v5, "ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # invokes: Lcom/android/server/PowerStateMachine;->removeAllMessages()V
    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->access$1400(Lcom/android/server/PowerStateMachine;)V

    .line 521
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 522
    .local v1, "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # setter for: Lcom/android/server/PowerStateMachine;->mScreenState:I
    invoke-static {v5, v4}, Lcom/android/server/PowerStateMachine;->access$1302(Lcom/android/server/PowerStateMachine;I)I

    .line 525
    const-string v5, "MzPowerStateMachine"

    const-string v6, "ACTION_SCREEN_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 527
    .restart local v1    # "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 528
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 529
    const-string v4, "MzPowerStateMachine"

    const-string v5, "ACTION_USER_PRESENT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mScreenState:I
    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->access$1300(Lcom/android/server/PowerStateMachine;)I

    move-result v4

    if-nez v4, :cond_1

    .line 531
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # invokes: Lcom/android/server/PowerStateMachine;->removeAllMessages()V
    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->access$1400(Lcom/android/server/PowerStateMachine;)V

    .line 532
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 533
    .restart local v1    # "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 535
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 536
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 537
    .local v2, "plugged":I
    if-eq v2, v4, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6

    :cond_5
    move v0, v4

    .line 544
    .local v0, "curPlugStatus":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mPlugStatus:Z
    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->access$1100(Lcom/android/server/PowerStateMachine;)Z

    move-result v4

    if-eq v4, v0, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    # setter for: Lcom/android/server/PowerStateMachine;->mPlugStatus:Z
    invoke-static {v4, v0}, Lcom/android/server/PowerStateMachine;->access$1102(Lcom/android/server/PowerStateMachine;Z)Z

    .line 547
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 548
    .restart local v1    # "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
