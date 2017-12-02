.class public Landroid/os/health/HealthStats;
.super Ljava/lang/Object;
.source "HealthStats.java"


# instance fields
.field private mDataType:Ljava/lang/String;

.field private mMeasurementKeys:[I

.field private mMeasurementValues:[J

.field private mMeasurementsKeys:[I

.field private mMeasurementsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsKeys:[I

.field private mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerCounts:[I

.field private mTimerKeys:[I

.field private mTimerTimes:[J

.field private mTimersKeys:[I

.field private mTimersValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "count":I
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    .line 138
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    .line 139
    new-array v2, v0, [J

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 141
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 142
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 143
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    .line 149
    new-array v2, v0, [J

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    .line 150
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 151
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 152
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    .line 158
    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    .line 159
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 160
    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 161
    iget-object v2, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    .line 167
    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    .line 168
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 169
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 170
    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    sget-object v3, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3}, Landroid/os/health/HealthStats;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    .line 176
    new-array v2, v0, [Landroid/util/ArrayMap;

    iput-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 177
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 178
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 179
    iget-object v2, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/health/HealthStats;->createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 129
    :cond_4
    return-void
.end method

.method private static createHealthStatsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    .local v0, "count":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 453
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStats;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/health/HealthStats;

    invoke-direct {v4, p0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_0
    return-object v2
.end method

.method private static createLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "count":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 479
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-object v2
.end method

.method private static createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .local v0, "count":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 467
    .local v2, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 468
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-object v2
.end method

.method private static getIndex([II)I
    .locals 1
    .param p0, "keys"    # [I
    .param p1, "key"    # I

    .prologue
    .line 444
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurement(I)J
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 285
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 286
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 287
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad measurement key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string/jumbo v3, " key="

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementValues:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method public getMeasurementKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 310
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasurementKeyCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getMeasurements(I)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 412
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 413
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad measurements key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 414
    const-string/jumbo v3, " key="

    .line 413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getMeasurementsKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 437
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMeasurementsKeyCount()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getStats(I)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 328
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad stats key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    const-string/jumbo v3, " key="

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getStatsKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 352
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStatsKeyCount()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getTimer(I)Landroid/os/health/TimerStat;
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 213
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 214
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 215
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    const-string/jumbo v3, " key="

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_0
    new-instance v1, Landroid/os/health/TimerStat;

    iget-object v2, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v4, v3, v0

    invoke-direct {v1, v2, v4, v5}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v1
.end method

.method public getTimerCount(I)I
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 228
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 229
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 230
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    const-string/jumbo v3, " key="

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerCounts:[I

    aget v1, v1, v0

    return v1
.end method

.method public getTimerKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 268
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimerKeyCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    array-length v0, v0

    return v0
.end method

.method public getTimerTime(I)J
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 243
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 244
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timer key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string/jumbo v3, " key="

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerTimes:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method public getTimers(I)Ljava/util/Map;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v0

    .line 370
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 371
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad timers key dataType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/health/HealthStats;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 372
    const-string/jumbo v3, " key="

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getTimersKeyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 394
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimersKeyCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    array-length v0, v0

    return v0
.end method

.method public hasMeasurement(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasMeasurements(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Landroid/os/health/HealthStats;->mMeasurementsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasStats(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Landroid/os/health/HealthStats;->mStatsKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTimer(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimerKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTimers(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 359
    iget-object v1, p0, Landroid/os/health/HealthStats;->mTimersKeys:[I

    invoke-static {v1, p1}, Landroid/os/health/HealthStats;->getIndex([II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
