.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$1;,
        Landroid/location/Location$2;,
        Landroid/location/Location$BearingDistanceCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ACCURACY_MASK:B = 0x8t

.field private static final HAS_ALTITUDE_MASK:B = 0x1t

.field private static final HAS_BEARING_MASK:B = 0x4t

.field private static final HAS_MOCK_PROVIDER_MASK:B = 0x10t

.field private static final HAS_SPEED_MASK:B = 0x2t

.field private static sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:B

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static synthetic -set0(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic -set1(Landroid/location/Location;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic -set3(Landroid/location/Location;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set5(Landroid/location/Location;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    return p1
.end method

.method static synthetic -set6(Landroid/location/Location;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/Location;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic -set9(Landroid/location/Location;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    .line 105
    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 880
    new-instance v0, Landroid/location/Location$2;

    invoke-direct {v0}, Landroid/location/Location$2;-><init>()V

    .line 879
    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 6
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    .line 115
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 116
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 117
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 118
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 119
    iput v2, p0, Landroid/location/Location;->mSpeed:F

    .line 120
    iput v2, p0, Landroid/location/Location;->mBearing:F

    .line 121
    iput v2, p0, Landroid/location/Location;->mAccuracy:F

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 125
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 143
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    .line 115
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 116
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 117
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 118
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 119
    iput v2, p0, Landroid/location/Location;->mSpeed:F

    .line 120
    iput v2, p0, Landroid/location/Location;->mBearing:F

    .line 121
    iput v2, p0, Landroid/location/Location;->mAccuracy:F

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 125
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 136
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 82
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # Landroid/location/Location$BearingDistanceCache;

    .prologue
    .line 317
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v70

    .line 318
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p4, p4, v70

    .line 319
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p2, p2, v70

    .line 320
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p6, p6, v70

    .line 324
    const-wide v70, 0x40d4e22be425af00L    # 21384.685800000094

    .line 322
    const-wide v72, 0x415854a640000000L    # 6378137.0

    .line 324
    div-double v40, v70, v72

    .line 325
    .local v40, "f":D
    const-wide v70, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide v72, 0x42c260252eea6b87L    # 4.0408299984087055E13

    sub-double v70, v70, v72

    const-wide v72, 0x42c260252eea6b87L    # 4.0408299984087055E13

    div-double v16, v70, v72

    .line 327
    .local v16, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    .line 328
    .local v10, "L":D
    const-wide/16 v4, 0x0

    .line 329
    .local v4, "A":D
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v70, v70, v40

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v72

    mul-double v70, v70, v72

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    .line 330
    .local v12, "U1":D
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v70, v70, v40

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v72

    mul-double v70, v70, v72

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    .line 332
    .local v14, "U2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 333
    .local v28, "cosU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .line 334
    .local v32, "cosU2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    .line 335
    .local v58, "sinU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v62

    .line 336
    .local v62, "sinU2":D
    mul-double v30, v28, v32

    .line 337
    .local v30, "cosU1cosU2":D
    mul-double v60, v58, v62

    .line 339
    .local v60, "sinU1sinU2":D
    const-wide/16 v48, 0x0

    .line 340
    .local v48, "sigma":D
    const-wide/16 v36, 0x0

    .line 341
    .local v36, "deltaSigma":D
    const-wide/16 v26, 0x0

    .line 342
    .local v26, "cosSqAlpha":D
    const-wide/16 v18, 0x0

    .line 343
    .local v18, "cos2SM":D
    const-wide/16 v24, 0x0

    .line 344
    .local v24, "cosSigma":D
    const-wide/16 v54, 0x0

    .line 345
    .local v54, "sinSigma":D
    const-wide/16 v22, 0x0

    .line 346
    .local v22, "cosLambda":D
    const-wide/16 v52, 0x0

    .line 348
    .local v52, "sinLambda":D
    move-wide/from16 v44, v10

    .line 349
    .local v44, "lambda":D
    const/16 v43, 0x0

    .line 315
    .local v43, "iter":I
    :goto_0
    const/16 v70, 0x14

    .line 349
    move/from16 v0, v43

    move/from16 v1, v70

    if-ge v0, v1, :cond_0

    .line 350
    move-wide/from16 v46, v44

    .line 351
    .local v46, "lambdaOrig":D
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 352
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    .line 353
    mul-double v64, v32, v52

    .line 354
    .local v64, "t1":D
    mul-double v70, v28, v62

    mul-double v72, v58, v32

    mul-double v72, v72, v22

    sub-double v66, v70, v72

    .line 355
    .local v66, "t2":D
    mul-double v70, v64, v64

    mul-double v72, v66, v66

    add-double v56, v70, v72

    .line 356
    .local v56, "sinSqSigma":D
    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    .line 357
    mul-double v70, v30, v22

    add-double v24, v60, v70

    .line 358
    move-wide/from16 v0, v54

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    .line 359
    const-wide/16 v70, 0x0

    cmpl-double v70, v54, v70

    if-nez v70, :cond_1

    const-wide/16 v50, 0x0

    .line 361
    .local v50, "sinAlpha":D
    :goto_1
    mul-double v70, v50, v50

    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    sub-double v26, v72, v70

    .line 362
    const-wide/16 v70, 0x0

    cmpl-double v70, v26, v70

    if-nez v70, :cond_2

    const-wide/16 v18, 0x0

    .line 365
    :goto_2
    mul-double v68, v26, v16

    .line 366
    .local v68, "uSquared":D
    const-wide/high16 v70, 0x40d0000000000000L    # 16384.0

    div-double v70, v68, v70

    .line 368
    const-wide v72, 0x4065e00000000000L    # 175.0

    mul-double v72, v72, v68

    const-wide/high16 v74, 0x4074000000000000L    # 320.0

    sub-double v72, v74, v72

    mul-double v72, v72, v68

    const-wide/high16 v74, -0x3f78000000000000L    # -768.0

    add-double v72, v72, v74

    .line 367
    mul-double v72, v72, v68

    const-wide/high16 v74, 0x40b0000000000000L    # 4096.0

    add-double v72, v72, v74

    .line 366
    mul-double v70, v70, v72

    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    add-double v4, v72, v70

    .line 369
    const-wide/high16 v70, 0x4090000000000000L    # 1024.0

    div-double v70, v68, v70

    .line 371
    const-wide v72, 0x4047800000000000L    # 47.0

    mul-double v72, v72, v68

    const-wide v74, 0x4052800000000000L    # 74.0

    sub-double v72, v74, v72

    mul-double v72, v72, v68

    const-wide/high16 v74, -0x3fa0000000000000L    # -128.0

    add-double v72, v72, v74

    .line 370
    mul-double v72, v72, v68

    const-wide/high16 v74, 0x4070000000000000L    # 256.0

    add-double v72, v72, v74

    .line 369
    mul-double v6, v70, v72

    .line 372
    .local v6, "B":D
    const-wide/high16 v70, 0x4030000000000000L    # 16.0

    div-double v70, v40, v70

    mul-double v70, v70, v26

    .line 374
    const-wide/high16 v72, 0x4008000000000000L    # 3.0

    mul-double v72, v72, v26

    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    sub-double v72, v74, v72

    mul-double v72, v72, v40

    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    add-double v72, v72, v74

    .line 372
    mul-double v8, v70, v72

    .line 375
    .local v8, "C":D
    mul-double v20, v18, v18

    .line 376
    .local v20, "cos2SMSq":D
    mul-double v70, v6, v54

    .line 377
    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    div-double v72, v6, v72

    .line 378
    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    mul-double v74, v74, v20

    const-wide/high16 v76, -0x4010000000000000L    # -1.0

    add-double v74, v74, v76

    mul-double v74, v74, v24

    .line 379
    const-wide/high16 v76, 0x4018000000000000L    # 6.0

    div-double v76, v6, v76

    mul-double v76, v76, v18

    .line 380
    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    mul-double v78, v78, v54

    mul-double v78, v78, v54

    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    add-double v78, v78, v80

    .line 379
    mul-double v76, v76, v78

    .line 381
    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    mul-double v78, v78, v20

    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    add-double v78, v78, v80

    .line 379
    mul-double v76, v76, v78

    .line 378
    sub-double v74, v74, v76

    .line 377
    mul-double v72, v72, v74

    add-double v72, v72, v18

    .line 376
    mul-double v36, v70, v72

    .line 384
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v70, v70, v8

    mul-double v70, v70, v40

    mul-double v70, v70, v50

    .line 385
    mul-double v72, v8, v54

    .line 386
    mul-double v74, v8, v24

    .line 387
    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    mul-double v76, v76, v18

    mul-double v76, v76, v18

    const-wide/high16 v78, -0x4010000000000000L    # -1.0

    add-double v76, v76, v78

    .line 386
    mul-double v74, v74, v76

    add-double v74, v74, v18

    .line 385
    mul-double v72, v72, v74

    add-double v72, v72, v48

    .line 384
    mul-double v70, v70, v72

    .line 383
    add-double v44, v10, v70

    .line 389
    sub-double v70, v44, v46

    div-double v34, v70, v44

    .line 390
    .local v34, "delta":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v70

    const-wide v72, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v70, v70, v72

    if-gez v70, :cond_3

    .line 323
    .end local v6    # "B":D
    .end local v8    # "C":D
    .end local v20    # "cos2SMSq":D
    .end local v34    # "delta":D
    .end local v46    # "lambdaOrig":D
    .end local v50    # "sinAlpha":D
    .end local v56    # "sinSqSigma":D
    .end local v64    # "t1":D
    .end local v66    # "t2":D
    .end local v68    # "uSquared":D
    :cond_0
    const-wide v70, 0x41583fc4141bda51L    # 6356752.3142

    .line 395
    mul-double v70, v70, v4

    sub-double v72, v48, v36

    mul-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v38, v0

    .line 396
    .local v38, "distance":F
    move-object/from16 v0, p8

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set0(Landroid/location/Location$BearingDistanceCache;F)F

    .line 397
    mul-double v70, v32, v52

    .line 398
    mul-double v72, v28, v62

    mul-double v74, v58, v32

    mul-double v74, v74, v22

    sub-double v72, v72, v74

    .line 397
    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v70

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v42, v0

    .line 399
    .local v42, "initialBearing":F
    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v70, v0

    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v42, v0

    .line 400
    move-object/from16 v0, p8

    move/from16 v1, v42

    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set2(Landroid/location/Location$BearingDistanceCache;F)F

    .line 401
    mul-double v70, v28, v52

    .line 402
    move-wide/from16 v0, v58

    neg-double v0, v0

    move-wide/from16 v72, v0

    mul-double v72, v72, v32

    mul-double v74, v28, v62

    mul-double v74, v74, v22

    add-double v72, v72, v74

    .line 401
    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v70

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v39, v0

    .line 403
    .local v39, "finalBearing":F
    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v70, v0

    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v39, v0

    .line 404
    move-object/from16 v0, p8

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->-set1(Landroid/location/Location$BearingDistanceCache;F)F

    .line 405
    move-object/from16 v0, p8

    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set3(Landroid/location/Location$BearingDistanceCache;D)D

    .line 406
    move-object/from16 v0, p8

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set4(Landroid/location/Location$BearingDistanceCache;D)D

    .line 407
    move-object/from16 v0, p8

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set5(Landroid/location/Location$BearingDistanceCache;D)D

    .line 408
    move-object/from16 v0, p8

    move-wide/from16 v1, p6

    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->-set6(Landroid/location/Location$BearingDistanceCache;D)D

    .line 311
    return-void

    .line 360
    .end local v38    # "distance":F
    .end local v39    # "finalBearing":F
    .end local v42    # "initialBearing":F
    .restart local v46    # "lambdaOrig":D
    .restart local v56    # "sinSqSigma":D
    .restart local v64    # "t1":D
    .restart local v66    # "t2":D
    :cond_1
    mul-double v70, v30, v52

    div-double v50, v70, v54

    goto/16 :goto_1

    .line 363
    .restart local v50    # "sinAlpha":D
    :cond_2
    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    mul-double v70, v70, v60

    div-double v70, v70, v26

    sub-double v18, v24, v70

    goto/16 :goto_2

    .line 349
    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v20    # "cos2SMSq":D
    .restart local v34    # "delta":D
    .restart local v68    # "uSquared":D
    :cond_3
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 22
    .param p0, "coordinate"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    new-instance v18, Ljava/lang/NullPointerException;

    const-string/jumbo v19, "coordinate"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 248
    :cond_0
    const/4 v8, 0x0

    .line 249
    .local v8, "negative":Z
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 250
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    const/4 v8, 0x1

    .line 254
    :cond_1
    new-instance v14, Ljava/util/StringTokenizer;

    const-string/jumbo v18, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v15

    .line 256
    .local v15, "tokens":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 257
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 260
    :cond_2
    :try_start_0
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "degrees":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    .line 263
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 264
    .local v16, "val":D
    if-eqz v8, :cond_3

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "val":D
    :cond_3
    return-wide v16

    .line 267
    :cond_4
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 270
    .local v2, "deg":I
    const-wide/16 v10, 0x0

    .line 271
    .local v10, "sec":D
    const/4 v12, 0x0

    .line 273
    .local v12, "secPresent":Z
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-double v6, v0

    .line 275
    .local v6, "min":D
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 276
    .local v13, "seconds":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 277
    const/4 v12, 0x1

    .line 282
    .end local v13    # "seconds":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_9

    const/16 v18, 0xb4

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    .line 283
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_9

    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-nez v18, :cond_8

    const/4 v4, 0x1

    .line 286
    .local v4, "isNegative180":Z
    :goto_1
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-ltz v18, :cond_a

    const/16 v18, 0xb3

    move/from16 v0, v18

    if-le v2, v0, :cond_5

    if-eqz v4, :cond_a

    .line 291
    :cond_5
    const-wide/16 v18, 0x0

    cmpg-double v18, v6, v18

    if-ltz v18, :cond_6

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    cmpl-double v18, v6, v18

    if-ltz v18, :cond_b

    .line 292
    :cond_6
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "min":D
    .end local v10    # "sec":D
    .end local v12    # "secPresent":Z
    :catch_0
    move-exception v9

    .line 306
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 279
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v5    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    .restart local v12    # "secPresent":Z
    :cond_7
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .restart local v6    # "min":D
    goto :goto_0

    .line 283
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "isNegative180":Z
    goto :goto_1

    .line 282
    .end local v4    # "isNegative180":Z
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "isNegative180":Z
    goto :goto_1

    .line 287
    :cond_a
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 291
    :cond_b
    if-eqz v12, :cond_c

    const-wide v18, 0x404d800000000000L    # 59.0

    cmpl-double v18, v6, v18

    if-gtz v18, :cond_6

    .line 297
    :cond_c
    const-wide/16 v18, 0x0

    cmpg-double v18, v10, v18

    if-ltz v18, :cond_d

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    cmpl-double v18, v10, v18

    if-ltz v18, :cond_e

    .line 298
    :cond_d
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "coordinate="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :cond_e
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v20, v20, v6

    add-double v18, v18, v20

    add-double v16, v18, v10

    .line 303
    .restart local v16    # "val":D
    const-wide v18, 0x40ac200000000000L    # 3600.0

    div-double v16, v16, v18

    .line 304
    if-eqz v8, :cond_f

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "val":D
    :cond_f
    return-wide v16
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 12
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x1

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const/4 v6, 0x2

    .line 194
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v4

    if-lez v4, :cond_1

    .line 196
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    .line 194
    if-nez v4, :cond_0

    .line 198
    if-eqz p2, :cond_2

    .line 199
    if-eq p2, v7, :cond_2

    .line 200
    if-eq p2, v6, :cond_2

    .line 201
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    .line 208
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    neg-double p0, p0

    .line 212
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v7, :cond_4

    if-ne p2, v6, :cond_5

    .line 214
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 215
    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 218
    mul-double/2addr p0, v8

    .line 219
    if-ne p2, v6, :cond_5

    .line 220
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 221
    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 224
    mul-double/2addr p0, v8

    .line 227
    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 12
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .prologue
    .line 431
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 432
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "results is null or has length < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_1
    sget-object v2, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location$BearingDistanceCache;

    .local v10, "cache":Landroid/location/Location$BearingDistanceCache;
    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 435
    invoke-static/range {v2 .. v10}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 437
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get0(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, p8, v3

    .line 438
    move-object/from16 v0, p8

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 439
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get2(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, p8, v3

    .line 440
    move-object/from16 v0, p8

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 441
    invoke-static {v10}, Landroid/location/Location$BearingDistanceCache;->-get1(Landroid/location/Location$BearingDistanceCache;)F

    move-result v2

    const/4 v3, 0x2

    aput v2, p8, v3

    .line 430
    :cond_2
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 9
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 476
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location$BearingDistanceCache;

    .line 478
    .local v8, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get3(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get5(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 480
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 481
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    .line 480
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 483
    :cond_1
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get2(Landroid/location/Location$BearingDistanceCache;)F

    move-result v0

    return v0

    .line 479
    :cond_2
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get4(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get6(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 9
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 455
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location$BearingDistanceCache;

    .line 457
    .local v8, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get3(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get5(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 459
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 460
    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    .line 459
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 462
    :cond_1
    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get0(Landroid/location/Location$BearingDistanceCache;)F

    move-result v0

    return v0

    .line 458
    :cond_2
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get4(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    invoke-static {v8}, Landroid/location/Location$BearingDistanceCache;->-get6(Landroid/location/Location$BearingDistanceCache;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 609
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .prologue
    .line 549
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 933
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 935
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 936
    check-cast v0, Landroid/location/Location;

    .end local v0    # "value":Landroid/os/Parcelable;
    return-object v0

    .line 939
    :cond_0
    return-object v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 585
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 520
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 727
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 599
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasBearing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 674
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSpeed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 637
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isComplete()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 793
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    return v2

    .line 794
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 795
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    return v2

    .line 796
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    return v2

    .line 797
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isFromMockProvider()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 962
    iget-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public makeComplete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 811
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 812
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 813
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 814
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 816
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 817
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 810
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 776
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 774
    return-void
.end method

.method public removeAltitude()V
    .locals 2

    .prologue
    .line 629
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 630
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 628
    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 717
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 715
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 667
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 665
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 167
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 168
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    .line 169
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 170
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 171
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 172
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 173
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 174
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 175
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 176
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    .line 177
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 166
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 4
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 151
    iget-wide v2, p1, Landroid/location/Location;->mTime:J

    iput-wide v2, p0, Landroid/location/Location;->mTime:J

    .line 152
    iget-wide v2, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 153
    iget-byte v1, p1, Landroid/location/Location;->mFieldsMask:B

    iput-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 154
    iget-wide v2, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 155
    iget-wide v2, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 156
    iget-wide v2, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 157
    iget v1, p1, Landroid/location/Location;->mSpeed:F

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 158
    iget v1, p1, Landroid/location/Location;->mBearing:F

    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 159
    iget v1, p1, Landroid/location/Location;->mAccuracy:F

    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    .line 160
    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 149
    return-void

    .line 160
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    .line 764
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 765
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 763
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 618
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 619
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 617
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 699
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 700
    add-float/2addr p1, v1

    goto :goto_0

    .line 702
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 703
    sub-float/2addr p1, v1

    goto :goto_1

    .line 705
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 706
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 698
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 558
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 557
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    .prologue
    .line 950
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 953
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 949
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 843
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 842
    return-void

    .line 843
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIsFromMockProvider(Z)V
    .locals 1
    .param p1, "isFromMockProvider"    # Z

    .prologue
    .line 973
    if-eqz p1, :cond_0

    .line 974
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 972
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 575
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 574
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 592
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 591
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 655
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 656
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 654
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 530
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 529
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string/jumbo v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, " acc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :goto_0
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 855
    const-string/jumbo v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :cond_0
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_7

    .line 858
    const-string/jumbo v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 864
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 865
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 866
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_4
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 869
    const-string/jumbo v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 871
    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 853
    :cond_6
    const-string/jumbo v1, " acc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 860
    :cond_7
    const-string/jumbo v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 911
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 913
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 915
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 916
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 917
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 918
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 919
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 920
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 921
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 910
    return-void
.end method
