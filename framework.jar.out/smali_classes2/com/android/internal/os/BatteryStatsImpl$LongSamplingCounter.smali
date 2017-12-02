.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounter"
.end annotation


# instance fields
.field mCount:J

.field mLoadedCount:J

.field mPluggedCount:J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field mUnpluggedCount:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 947
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 948
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 949
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 947
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 938
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 939
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    .line 941
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 944
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 938
    return-void
.end method


# virtual methods
.method addCountLocked(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 988
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 987
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 1002
    return-void
.end method

.method public getCountLocked(I)J
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 970
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 971
    .local v0, "val":J
    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 972
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    sub-long/2addr v0, v2

    .line 976
    :cond_0
    :goto_1
    return-wide v0

    .line 970
    .end local v0    # "val":J
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    .restart local v0    # "val":J
    goto :goto_0

    .line 973
    :cond_2
    if-eqz p1, :cond_0

    .line 974
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    sub-long/2addr v0, v2

    goto :goto_1
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    const-string/jumbo v1, " mLoadedCount="

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 981
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 983
    const-string/jumbo v1, " mUnpluggedCount="

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 983
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 981
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 984
    const-string/jumbo v1, " mPluggedCount="

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 984
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    .line 981
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 960
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 961
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 959
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 2
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 966
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    .line 965
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 1012
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 1013
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    .line 1010
    return-void
.end method

.method reset(Z)V
    .locals 2
    .param p1, "detachIfReset"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 995
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 996
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mPluggedCount:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    .line 997
    if-eqz p1, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 994
    :cond_0
    return-void
.end method

.method writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 1007
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1006
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 954
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mLoadedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 955
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mUnpluggedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 952
    return-void
.end method
