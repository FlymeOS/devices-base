.class public Landroid/os/health/HealthStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsWriter.java"


# instance fields
.field private final mConstants:Landroid/os/health/HealthKeys$Constants;

.field private final mMeasurementFields:[Z

.field private final mMeasurementValues:[J

.field private final mMeasurementsValues:[Landroid/util/ArrayMap;
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

.field private final mStatsValues:[Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimerCounts:[I

.field private final mTimerFields:[Z

.field private final mTimerTimes:[J

.field private final mTimersValues:[Landroid/util/ArrayMap;
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
.method public constructor <init>(Landroid/os/health/HealthKeys$Constants;)V
    .locals 6
    .param p1, "constants"    # Landroid/os/health/HealthKeys$Constants;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    .line 66
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v3

    .line 67
    .local v3, "timerCount":I
    new-array v5, v3, [Z

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    .line 68
    new-array v5, v3, [I

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    .line 69
    new-array v5, v3, [J

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    .line 72
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v0

    .line 73
    .local v0, "measurementCount":I
    new-array v5, v0, [Z

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    .line 74
    new-array v5, v0, [J

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    .line 77
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v2

    .line 78
    .local v2, "statsCount":I
    new-array v5, v2, [Landroid/util/ArrayMap;

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    .line 81
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v4

    .line 82
    .local v4, "timersCount":I
    new-array v5, v4, [Landroid/util/ArrayMap;

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    .line 85
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/os/health/HealthKeys$Constants;->getSize(I)I

    move-result v1

    .line 86
    .local v1, "measurementsCount":I
    new-array v5, v1, [Landroid/util/ArrayMap;

    iput-object v5, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    .line 62
    return-void
.end method

.method private static countBooleanArray([Z)I
    .locals 4
    .param p0, "fields"    # [Z

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "count":I
    array-length v0, p0

    .line 227
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 228
    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return v1
.end method

.method private static countObjectArray([Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "fields":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 240
    .local v1, "count":I
    array-length v0, p0

    .line 241
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 242
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 243
    add-int/lit8 v1, v1, 0x1

    .line 241
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    return v1
.end method

.method private static writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 3
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/health/HealthStatsWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 255
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 257
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v2, p0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private static writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 280
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 282
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method private static writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 268
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 270
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public addMeasurement(IJ)V
    .locals 4
    .param p1, "measurementId"    # I
    .param p2, "value"    # J

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    invoke-virtual {v1, v2, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 106
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    aput-boolean v2, v1, v0

    .line 107
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    aput-wide p2, v1, v0

    .line 103
    return-void
.end method

.method public addMeasurements(ILjava/lang/String;J)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 146
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 148
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v1, v2, v0

    .line 149
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 150
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aput-object v1, v2, v0

    .line 152
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/health/HealthStatsWriter;

    .prologue
    .line 118
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 120
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v1, v2, v0

    .line 121
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    if-nez v1, :cond_0

    .line 122
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aput-object v1, v2, v0

    .line 124
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/HealthStatsWriter;>;"
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public addTimer(IIJ)V
    .locals 3
    .param p1, "timerId"    # I
    .param p2, "count"    # I
    .param p3, "time"    # J

    .prologue
    .line 93
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 95
    .local v0, "index":I
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 96
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    aput p2, v1, v0

    .line 97
    iget-object v1, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    aput-wide p3, v1, v0

    .line 92
    return-void
.end method

.method public addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/health/TimerStat;

    .prologue
    .line 133
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Landroid/os/health/HealthKeys$Constants;->getIndex(II)I

    move-result v0

    .line 135
    .local v0, "index":I
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v1, v2, v0

    .line 136
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    if-nez v1, :cond_0

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aput-object v1, v2, v0

    .line 139
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public flattenToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 167
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    invoke-virtual {v2}, Landroid/os/health/HealthKeys$Constants;->getDataType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v1

    .line 172
    .local v1, "keys":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerFields:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 174
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerCounts:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimerTimes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countBooleanArray([Z)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 184
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementFields:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 185
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementValues:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_3
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v1

    .line 193
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 194
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    .line 195
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mStatsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeHealthStatsWriterMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 193
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    :cond_5
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v1

    .line 203
    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 204
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 205
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mTimersValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 203
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 211
    :cond_7
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/os/health/HealthStatsWriter;->countObjectArray([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mConstants:Landroid/os/health/HealthKeys$Constants;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/health/HealthKeys$Constants;->getKeys(I)[I

    move-result-object v1

    .line 213
    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 214
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    .line 215
    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v2, p0, Landroid/os/health/HealthStatsWriter;->mMeasurementsValues:[Landroid/util/ArrayMap;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Landroid/os/health/HealthStatsWriter;->writeLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 213
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 163
    :cond_9
    return-void
.end method
