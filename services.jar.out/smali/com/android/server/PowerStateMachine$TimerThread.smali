.class Lcom/android/server/PowerStateMachine$TimerThread;
.super Ljava/lang/Thread;
.source "PowerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerStateMachine;)V
    .locals 4

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    .line 364
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    const-string v0, "MzPowerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start PowerStateMachine timer thread, current thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 372
    const-wide/16 v6, 0x0

    .line 377
    .local v6, "scanTime":J
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 378
    .local v2, "currentTime":J
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # invokes: Lcom/android/server/PowerStateMachine;->getStateMode()I
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$000(Lcom/android/server/PowerStateMachine;)I

    move-result v0

    .line 380
    .local v0, "currentState":I
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mPauseTimeThread:Z
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$100(Lcom/android/server/PowerStateMachine;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 382
    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_1
    :pswitch_0
    cmp-long v5, v6, v12

    if-nez v5, :cond_4

    .line 431
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$700(Lcom/android/server/PowerStateMachine;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$700(Lcom/android/server/PowerStateMachine;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 434
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .end local v0    # "currentState":I
    .end local v2    # "currentTime":J
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "currentState":I
    .restart local v2    # "currentTime":J
    :pswitch_1
    const-wide/16 v6, 0x0

    .line 385
    :try_start_3
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/PowerStateMachine;->mPauseStartTime:J
    invoke-static {v5, v10, v11}, Lcom/android/server/PowerStateMachine;->access$202(Lcom/android/server/PowerStateMachine;J)J

    .line 386
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/PowerStateMachine;->mIdleStartTime:J
    invoke-static {v5, v10, v11}, Lcom/android/server/PowerStateMachine;->access$302(Lcom/android/server/PowerStateMachine;J)J

    .line 387
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J
    invoke-static {v5, v10, v11}, Lcom/android/server/PowerStateMachine;->access$402(Lcom/android/server/PowerStateMachine;J)J

    goto :goto_1

    .line 390
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mPauseStartTime:J
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$200(Lcom/android/server/PowerStateMachine;)J

    move-result-wide v10

    sub-long v8, v2, v10

    .line 391
    .local v8, "stateTime":J
    const-wide/32 v10, 0x2bf20

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    .line 392
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 393
    .local v4, "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    const-wide/16 v6, 0x2710

    .line 396
    goto :goto_1

    .line 398
    .end local v8    # "stateTime":J
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mIdleStartTime:J
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$300(Lcom/android/server/PowerStateMachine;)J

    move-result-wide v10

    sub-long v8, v2, v10

    .line 399
    .restart local v8    # "stateTime":J
    const-wide/32 v10, 0x18b820

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    .line 400
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 401
    .restart local v4    # "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    const-wide/32 v6, 0xea60

    .line 404
    goto :goto_1

    .line 406
    .end local v8    # "stateTime":J
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # getter for: Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J
    invoke-static {v5}, Lcom/android/server/PowerStateMachine;->access$400(Lcom/android/server/PowerStateMachine;)J

    move-result-wide v10

    sub-long v8, v2, v10

    .line 407
    .restart local v8    # "stateTime":J
    const-wide/32 v10, 0x1b7740

    cmp-long v5, v8, v10

    if-ltz v5, :cond_2

    .line 408
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    iget-object v10, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    # invokes: Lcom/android/server/PowerStateMachine;->enterStandbyOrNight()I
    invoke-static {v10}, Lcom/android/server/PowerStateMachine;->access$600(Lcom/android/server/PowerStateMachine;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 409
    .restart local v4    # "msg":Landroid/os/Message;
    # getter for: Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/PowerStateMachine;->access$500()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    const-wide/32 v6, 0xea60

    .line 412
    goto/16 :goto_1

    .line 414
    .end local v8    # "stateTime":J
    :pswitch_5
    const-wide/16 v6, 0x0

    .line 415
    goto/16 :goto_1

    .line 417
    :pswitch_6
    const-wide/16 v6, 0x0

    .line 418
    goto/16 :goto_1

    .line 424
    :cond_3
    const-wide/16 v6, 0x0

    .line 425
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/PowerStateMachine;->mPauseStartTime:J
    invoke-static {v5, v10, v11}, Lcom/android/server/PowerStateMachine;->access$202(Lcom/android/server/PowerStateMachine;J)J

    .line 426
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/PowerStateMachine;->mIdleStartTime:J
    invoke-static {v5, v10, v11}, Lcom/android/server/PowerStateMachine;->access$302(Lcom/android/server/PowerStateMachine;J)J

    .line 427
    iget-object v5, p0, Lcom/android/server/PowerStateMachine$TimerThread;->this$0:Lcom/android/server/PowerStateMachine;

    const-wide/16 v10, 0x0

    # setter for: Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J
    invoke-static {v5, v10, v11}, Lcom/android/server/PowerStateMachine;->access$402(Lcom/android/server/PowerStateMachine;J)J

    goto/16 :goto_1

    .line 436
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
