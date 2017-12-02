.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$1;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method static synthetic -get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 150
    return-void
.end method

.method private clearSatellites()V
    .locals 4

    .prologue
    .line 244
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 245
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 246
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 247
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 154
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 157
    aget v4, p2, v1

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v0, v4, 0xf

    .line 159
    .local v0, "constellationType":I
    aget v4, p2, v1

    shr-int/lit8 v2, v4, 0x7

    .line 166
    .local v2, "prn":I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 167
    add-int/lit8 v2, v2, 0x40

    .line 176
    :cond_0
    :goto_1
    if-lez v2, :cond_2

    const/16 v4, 0xff

    if-gt v2, v4, :cond_2

    .line 177
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 178
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_1

    .line 179
    new-instance v3, Landroid/location/GpsSatellite;

    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    .line 180
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :cond_1
    iput-boolean v5, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 184
    aget v4, p3, v1

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    .line 185
    aget v4, p4, v1

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    .line 186
    aget v4, p5, v1

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 188
    aget v4, p2, v1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    move v4, v5

    .line 187
    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 190
    aget v4, p2, v1

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    move v4, v5

    .line 189
    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 192
    aget v4, p2, v1

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_8

    move v4, v5

    .line 191
    :goto_4
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 155
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 169
    add-int/lit16 v2, v2, 0xc8

    goto :goto_1

    .line 170
    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 171
    add-int/lit8 v2, v2, -0x57

    goto :goto_1

    .line 172
    :cond_5
    if-eq v0, v5, :cond_0

    .line 173
    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_5

    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_6
    move v4, v6

    .line 188
    goto :goto_2

    :cond_7
    move v4, v6

    .line 190
    goto :goto_3

    :cond_8
    move v4, v6

    .line 192
    goto :goto_4

    .line 153
    .end local v0    # "constellationType":I
    .end local v2    # "prn":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_9
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .locals 6
    .param p1, "status"    # Landroid/location/GnssStatus;
    .param p2, "timeToFirstFix"    # I

    .prologue
    .line 204
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 205
    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    .line 206
    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    move-object v0, p0

    .line 205
    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    .line 203
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 210
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 209
    return-void
.end method
