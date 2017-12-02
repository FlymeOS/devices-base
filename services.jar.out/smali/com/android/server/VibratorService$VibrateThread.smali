.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 662
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 663
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 664
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 665
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 661
    return-void
.end method

.method private delay(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 669
    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    .line 670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, p1, v4

    .line 673
    .local v0, "bedtime":J
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_1

    .line 668
    .end local v0    # "bedtime":J
    :cond_0
    return-void

    .line 675
    .restart local v0    # "bedtime":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 680
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v0, v4

    .line 681
    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 686
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 687
    monitor-enter p0

    .line 688
    :try_start_0
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 689
    .local v5, "pattern":[J
    array-length v4, v5

    .line 690
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 691
    .local v6, "repeat":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 692
    .local v7, "uid":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 693
    .local v8, "usageHint":I
    const/4 v2, 0x0

    .line 694
    .local v2, "index":I
    const-wide/16 v0, 0x0

    .local v0, "duration":J
    move v3, v2

    .line 696
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_7

    .line 698
    if-ge v3, v4, :cond_0

    .line 699
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v10, v5, v3

    add-long/2addr v0, v10

    move v3, v2

    .line 703
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 704
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v9, :cond_3

    move v2, v3

    .line 724
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 726
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10

    .line 727
    :try_start_1
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v9, p0, :cond_1

    .line 728
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 730
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_2

    .line 733
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9, v11}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 734
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v10

    .line 685
    return-void

    .line 708
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_3
    if-ge v3, v4, :cond_5

    .line 711
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    aget-wide v0, v5, v3

    .line 712
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_4

    .line 713
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9, v0, v1, v7, v8}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 716
    :cond_5
    if-gez v6, :cond_6

    move v2, v3

    .line 717
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 719
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_6
    move v2, v6

    .line 720
    .end local v3    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 687
    .end local v0    # "duration":J
    .end local v2    # "index":I
    .end local v4    # "len":I
    .end local v5    # "pattern":[J
    .end local v6    # "repeat":I
    .end local v7    # "uid":I
    .end local v8    # "usageHint":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 726
    .restart local v0    # "duration":J
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "pattern":[J
    .restart local v6    # "repeat":I
    .restart local v7    # "uid":I
    .restart local v8    # "usageHint":I
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_7
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method
