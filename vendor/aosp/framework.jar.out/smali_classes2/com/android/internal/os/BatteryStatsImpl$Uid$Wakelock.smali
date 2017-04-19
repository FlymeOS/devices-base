.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wakelock"
.end annotation


# instance fields
.field mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .prologue
    .line 5723
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    return-void
.end method

.method private readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6
    .param p1, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;"
        }
    .end annotation

    .prologue
    .line 5753
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 5754
    const/4 v0, 0x0

    return-object v0

    .line 5757
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 5823
    sparse-switch p1, :sswitch_data_0

    .line 5857
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5825
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5826
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_0

    .line 5827
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 5828
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5827
    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5829
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5831
    :cond_0
    return-object v0

    .line 5833
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5834
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_1

    .line 5835
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 5836
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5835
    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5837
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5839
    :cond_1
    return-object v0

    .line 5841
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5842
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_2

    .line 5843
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 5844
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5843
    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5845
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5847
    :cond_2
    return-object v0

    .line 5849
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5850
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_3

    .line 5851
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 5852
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5851
    const/16 v4, 0x12

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 5853
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5855
    :cond_3
    return-object v0

    .line 5823
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 5811
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 5812
    sparse-switch p1, :sswitch_data_0

    .line 5817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5813
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 5814
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 5815
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 5816
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 5812
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5797
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 5796
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5798
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5799
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5800
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5795
    return-void
.end method

.method reset()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 5761
    const/4 v0, 0x0

    .line 5762
    .local v0, "wlactive":Z
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_0

    .line 5763
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v1

    .line 5765
    .end local v0    # "wlactive":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_1

    .line 5766
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    .line 5768
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_2

    .line 5769
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_2
    or-int/2addr v0, v3

    .line 5771
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_3

    .line 5772
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    :goto_3
    or-int/2addr v0, v3

    .line 5774
    :cond_3
    if-nez v0, :cond_7

    .line 5775
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_4

    .line 5776
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5777
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5779
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_5

    .line 5780
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5781
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5783
    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_6

    .line 5784
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5785
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5787
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v3, :cond_7

    .line 5788
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5789
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5792
    :cond_7
    if-eqz v0, :cond_c

    :goto_4
    return v1

    .restart local v0    # "wlactive":Z
    :cond_8
    move v0, v2

    .line 5763
    goto :goto_0

    .end local v0    # "wlactive":Z
    :cond_9
    move v3, v2

    .line 5766
    goto :goto_1

    :cond_a
    move v3, v2

    .line 5769
    goto :goto_2

    :cond_b
    move v3, v2

    .line 5772
    goto :goto_3

    :cond_c
    move v1, v2

    .line 5792
    goto :goto_4
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 5804
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5805
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5806
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5807
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5803
    return-void
.end method
