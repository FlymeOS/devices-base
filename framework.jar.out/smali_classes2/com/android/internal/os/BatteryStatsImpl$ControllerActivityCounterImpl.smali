.class public Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerActivityCounterImpl"
.end annotation


# instance fields
.field private final mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V
    .locals 3
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "numTxStates"    # I

    .prologue
    .line 2142
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 2143
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2144
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2145
    new-array v1, p2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2147
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 2146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2149
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2142
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V
    .locals 4
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "numTxStates"    # I
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2152
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 2153
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v2, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2154
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v2, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2155
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2156
    .local v1, "recordedTxStates":I
    if-eq v1, p2, :cond_0

    .line 2157
    new-instance v2, Landroid/os/ParcelFormatException;

    const-string/jumbo v3, "inconsistent tx state lengths"

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2160
    :cond_0
    new-array v2, p2, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 2162
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v3, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v0

    .line 2161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2164
    :cond_1
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v2, p1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 2152
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2182
    const/4 v0, 0x0

    return v0
.end method

.method public detach()V
    .locals 4

    .prologue
    .line 2216
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 2217
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 2218
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2219
    .local v0, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 2218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2221
    .end local v0    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 2215
    return-void
.end method

.method public bridge synthetic getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .prologue
    .line 2255
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .prologue
    .line 2238
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2168
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2169
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2171
    .local v1, "recordedTxStates":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 2172
    new-instance v2, Landroid/os/ParcelFormatException;

    const-string/jumbo v3, "inconsistent tx state lengths"

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2174
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 2175
    .local v0, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2177
    .end local v0    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2167
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "detachIfReset"    # Z

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 2208
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 2209
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2210
    .local v0, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 2209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2212
    .end local v0    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 2206
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 2186
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2187
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2188
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2189
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2190
    .local v0, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2192
    .end local v0    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2185
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2197
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 2198
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 2199
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 2201
    .local v0, "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 2200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2203
    .end local v0    # "counter":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 2196
    return-void
.end method
