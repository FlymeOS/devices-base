.class Landroid/location/Location$BearingDistanceCache;
.super Ljava/lang/Object;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BearingDistanceCache"
.end annotation


# instance fields
.field private mDistance:F

.field private mFinalBearing:F

.field private mInitialBearing:F

.field private mLat1:D

.field private mLat2:D

.field private mLon1:D

.field private mLon2:D


# direct methods
.method static synthetic -get0(Landroid/location/Location$BearingDistanceCache;)F
    .locals 1

    iget v0, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return v0
.end method

.method static synthetic -get1(Landroid/location/Location$BearingDistanceCache;)F
    .locals 1

    iget v0, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    return v0
.end method

.method static synthetic -get2(Landroid/location/Location$BearingDistanceCache;)F
    .locals 1

    iget v0, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return v0
.end method

.method static synthetic -get3(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    return-wide v0
.end method

.method static synthetic -get4(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    return-wide v0
.end method

.method static synthetic -get5(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    return-wide v0
.end method

.method static synthetic -get6(Landroid/location/Location$BearingDistanceCache;)D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    return-wide v0
.end method

.method static synthetic -set0(Landroid/location/Location$BearingDistanceCache;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return p1
.end method

.method static synthetic -set1(Landroid/location/Location$BearingDistanceCache;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    return p1
.end method

.method static synthetic -set2(Landroid/location/Location$BearingDistanceCache;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return p1
.end method

.method static synthetic -set3(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    return-wide p1
.end method

.method static synthetic -set5(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/Location$BearingDistanceCache;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    return-wide p1
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    .line 986
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    .line 987
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    .line 988
    iput-wide v0, p0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    .line 989
    iput v2, p0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    .line 990
    iput v2, p0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    .line 991
    iput v2, p0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    .line 984
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/Location$BearingDistanceCache;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/location/Location$BearingDistanceCache;-><init>()V

    return-void
.end method
