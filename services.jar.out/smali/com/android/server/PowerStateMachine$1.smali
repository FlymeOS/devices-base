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
    .param p1, "this$0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "strAction":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 515
    const-string/jumbo v4, "MzPowerStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "power state machine receive action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4, v7}, Lcom/android/server/PowerStateMachine;->-set3(Lcom/android/server/PowerStateMachine;I)I

    .line 519
    const-string/jumbo v4, "MzPowerStateMachine"

    const-string/jumbo v5, "ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->-wrap5(Lcom/android/server/PowerStateMachine;)V

    .line 521
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 522
    .local v1, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4, v8}, Lcom/android/server/PowerStateMachine;->-set3(Lcom/android/server/PowerStateMachine;I)I

    .line 525
    const-string/jumbo v4, "MzPowerStateMachine"

    const-string/jumbo v5, "ACTION_SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 527
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 528
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 529
    const-string/jumbo v4, "MzPowerStateMachine"

    const-string/jumbo v5, "ACTION_USER_PRESENT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->-get5(Lcom/android/server/PowerStateMachine;)I

    move-result v4

    if-nez v4, :cond_1

    .line 531
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->-wrap5(Lcom/android/server/PowerStateMachine;)V

    .line 532
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 533
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 535
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 537
    .local v2, "plugged":I
    if-eq v2, v8, :cond_5

    .line 538
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 537
    :cond_5
    const/4 v0, 0x1

    .line 544
    .local v0, "curPlugStatus":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4}, Lcom/android/server/PowerStateMachine;->-get4(Lcom/android/server/PowerStateMachine;)Z

    move-result v4

    if-eq v4, v0, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/server/PowerStateMachine$1;->this$0:Lcom/android/server/PowerStateMachine;

    invoke-static {v4, v0}, Lcom/android/server/PowerStateMachine;->-set2(Lcom/android/server/PowerStateMachine;Z)Z

    .line 547
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 548
    .restart local v1    # "msg":Landroid/os/Message;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->-get7()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 539
    .end local v0    # "curPlugStatus":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    const/4 v4, 0x4

    if-ne v2, v4, :cond_7

    const/4 v0, 0x1

    .restart local v0    # "curPlugStatus":Z
    goto :goto_1

    .end local v0    # "curPlugStatus":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "curPlugStatus":Z
    goto :goto_1
.end method
