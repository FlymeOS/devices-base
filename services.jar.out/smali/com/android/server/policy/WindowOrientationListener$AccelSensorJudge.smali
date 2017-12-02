.class final Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0x41

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, -0x19

    .line 510
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 465
    new-array v4, v10, [[I

    .line 466
    const/16 v5, 0x46

    filled-new-array {v7, v5}, [I

    move-result-object v5

    aput-object v5, v4, v8

    .line 467
    filled-new-array {v7, v11}, [I

    move-result-object v5

    aput-object v5, v4, v9

    .line 468
    const/16 v5, 0x3c

    filled-new-array {v7, v5}, [I

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 469
    filled-new-array {v7, v11}, [I

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 465
    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 498
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 506
    const/16 v4, 0xc8

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 507
    const/16 v4, 0xc8

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 512
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 513
    const v5, 0x107001c

    .line 512
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 514
    .local v3, "tiltTolerance":[I
    array-length v4, v3

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 516
    mul-int/lit8 v4, v0, 0x2

    aget v2, v3, v4

    .line 517
    .local v2, "min":I
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v1, v3, v4

    .line 518
    .local v1, "max":I
    const/16 v4, -0x5a

    if-lt v2, v4, :cond_0

    if-gt v2, v1, :cond_0

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_0

    .line 519
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v4, v4, v0

    aput v2, v4, v8

    .line 520
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v4, v4, v0

    aput v1, v4, v9

    .line 515
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    const-string/jumbo v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 523
    const-string/jumbo v6, ", max="

    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 527
    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_1
    const-string/jumbo v4, "WindowOrientationListener"

    const-string/jumbo v5, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 918
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 919
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 920
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 916
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    .prologue
    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 896
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 894
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 913
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 911
    return-void
.end method

.method private getLastTiltLocked()F
    .locals 2

    .prologue
    .line 955
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 956
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method private isAcceleratingLocked(F)Z
    .locals 2
    .param p1, "magnitude"    # F

    .prologue
    const/4 v0, 0x1

    .line 907
    const v1, 0x40b9d014

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 908
    const v1, 0x415ce80a

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v0

    .line 908
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlatLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v6, 0x0

    .line 924
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 925
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 933
    :cond_1
    return v6

    .line 928
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x3b9aca00

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    .line 930
    const/4 v1, 0x1

    return v1
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .prologue
    const/4 v4, 0x0

    .line 814
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v3}, Lcom/android/server/policy/WindowOrientationListener;->-get1(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .line 815
    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    .line 820
    if-eq p1, v0, :cond_0

    .line 821
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_2

    .line 822
    :cond_0
    mul-int/lit8 v3, p1, 0x5a

    add-int/lit8 v3, v3, -0x2d

    add-int/lit8 v1, v3, 0x16

    .line 824
    .local v1, "lowerBound":I
    if-nez p1, :cond_1

    .line 825
    const/16 v3, 0x13b

    if-lt p2, v3, :cond_2

    add-int/lit16 v3, v1, 0x168

    if-ge p2, v3, :cond_2

    .line 826
    return v4

    .line 829
    :cond_1
    if-ge p2, v1, :cond_2

    .line 830
    return v4

    .line 839
    .end local v1    # "lowerBound":I
    :cond_2
    if-eq p1, v0, :cond_3

    .line 840
    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_5

    .line 841
    :cond_3
    mul-int/lit8 v3, p1, 0x5a

    add-int/lit8 v3, v3, 0x2d

    add-int/lit8 v2, v3, -0x16

    .line 843
    .local v2, "upperBound":I
    if-nez p1, :cond_4

    .line 844
    const/16 v3, 0x2d

    if-gt p2, v3, :cond_5

    if-le p2, v2, :cond_5

    .line 845
    return v4

    .line 848
    :cond_4
    if-le p2, v2, :cond_5

    .line 849
    return v4

    .line 854
    .end local v2    # "upperBound":I
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/32 v6, 0x1dcd6500

    const/4 v4, 0x0

    .line 863
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 864
    return v4

    .line 868
    :cond_0
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long/2addr v0, v6

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 869
    return v4

    .line 874
    :cond_1
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v2, 0x11e1a300

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 875
    return v4

    .line 879
    :cond_2
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v0, v6

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 881
    return v4

    .line 885
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v0, v6

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    .line 887
    :cond_4
    return v4

    .line 891
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private isSwingingLocked(JF)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    const/4 v6, 0x0

    .line 937
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 938
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    .line 946
    :cond_1
    return v6

    .line 941
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 943
    const/4 v1, 0x1

    return v1
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 800
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_1

    .line 801
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    .line 800
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 801
    goto :goto_0

    :cond_1
    move v0, v1

    .line 800
    goto :goto_0
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 950
    if-nez p1, :cond_0

    const/16 p1, 0xc8

    .end local p1    # "index":I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 951
    .restart local p1    # "index":I
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1    # "index":I
    :goto_0
    return p1

    .restart local p1    # "index":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private remainingMS(JJ)F
    .locals 3
    .param p1, "now"    # J
    .param p3, "until"    # J

    .prologue
    .line 960
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .prologue
    .line 900
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 901
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 902
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 899
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "AccelSensorJudge"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mProposedRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mPredictedRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mLastFilteredX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mLastFilteredY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mLastFilteredZ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long v0, v4, v6

    .line 546
    .local v0, "delta":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mLastFilteredTimestampNanos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    const-string/jumbo v4, " ("

    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    long-to-float v4, v0

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    const-string/jumbo v4, "ms ago)"

    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mTiltHistory={last: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mFlat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mSwinging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAccelerating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mOverhead="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mTouched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mTiltToleranceConfig=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 556
    if-eqz v2, :cond_0

    .line 557
    const-string/jumbo v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    :cond_0
    const-string/jumbo v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    aget v3, v3, v8

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 561
    const-string/jumbo v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 563
    const-string/jumbo v3, "]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    :cond_1
    const-string/jumbo v3, "]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 569
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/policy/WindowOrientationListener;->-get3(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 581
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v25, 0x0

    aget v20, v23, v25

    .line 582
    .local v20, "x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v25, 0x1

    aget v21, v23, v25

    .line 583
    .local v21, "y":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v25, 0x2

    aget v22, v23, v25

    .line 585
    .local v22, "z":F
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 586
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Raw acceleration vector: x="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 587
    const-string/jumbo v26, ", y="

    .line 586
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 587
    const-string/jumbo v26, ", z="

    .line 586
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 588
    const-string/jumbo v26, ", magnitude="

    .line 586
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 588
    mul-float v26, v20, v20

    mul-float v27, v21, v21

    add-float v26, v26, v27

    mul-float v27, v22, v22

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 586
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 596
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    move-wide/from16 v16, v0

    .line 597
    .local v16, "then":J
    sub-long v26, v10, v16

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v23, v0

    const v25, 0x358637bd    # 1.0E-6f

    mul-float v19, v23, v25

    .line 599
    .local v19, "timeDeltaMS":F
    cmp-long v23, v10, v16

    if-ltz v23, :cond_1

    .line 600
    const-wide/32 v26, 0x3b9aca00

    add-long v26, v26, v16

    cmp-long v23, v10, v26

    if-lez v23, :cond_a

    .line 602
    :cond_1
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 603
    const-string/jumbo v23, "WindowOrientationListener"

    const-string/jumbo v25, "Resetting orientation listener."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->resetLocked()V

    .line 606
    const/4 v15, 0x1

    .line 619
    .local v15, "skipSample":Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 620
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 621
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 622
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 624
    const/4 v5, 0x0

    .line 625
    .local v5, "isAccelerating":Z
    const/4 v6, 0x0

    .line 626
    .local v6, "isFlat":Z
    const/4 v7, 0x0

    .line 627
    .local v7, "isSwinging":Z
    if-nez v15, :cond_4

    .line 629
    mul-float v23, v20, v20

    mul-float v25, v21, v21

    add-float v23, v23, v25

    mul-float v25, v22, v22

    add-float v23, v23, v25

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v8, v0

    .line 630
    .local v8, "magnitude":F
    const/high16 v23, 0x3f800000    # 1.0f

    cmpg-float v23, v8, v23

    if-gez v23, :cond_d

    .line 631
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 632
    const-string/jumbo v23, "WindowOrientationListener"

    const-string/jumbo v25, "Ignoring sensor data, magnitude too close to zero."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 724
    .end local v8    # "magnitude":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 725
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 726
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 729
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 730
    .local v12, "oldProposedRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    move/from16 v23, v0

    if-ltz v23, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 731
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 733
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 736
    .local v14, "proposedRotation":I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 737
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Result: currentRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/WindowOrientationListener;->-get1(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 738
    const-string/jumbo v26, ", proposedRotation="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 739
    const-string/jumbo v26, ", predictedRotation="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    move/from16 v26, v0

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 740
    const-string/jumbo v26, ", timeDeltaMS="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 741
    const-string/jumbo v26, ", isAccelerating="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 742
    const-string/jumbo v26, ", isFlat="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 743
    const-string/jumbo v26, ", isSwinging="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 744
    const-string/jumbo v26, ", isOverhead="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    move/from16 v26, v0

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 745
    const-string/jumbo v26, ", isTouched="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    move/from16 v26, v0

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 746
    const-string/jumbo v26, ", timeUntilSettledMS="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 747
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x2625a00

    add-long v26, v26, v28

    .line 746
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v26

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 748
    const-string/jumbo v26, ", timeUntilAccelerationDelayExpiredMS="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 749
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x1dcd6500

    add-long v26, v26, v28

    .line 748
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v26

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 750
    const-string/jumbo v26, ", timeUntilFlatDelayExpiredMS="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 751
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x1dcd6500

    add-long v26, v26, v28

    .line 750
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v26

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 752
    const-string/jumbo v26, ", timeUntilSwingDelayExpiredMS="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 753
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x11e1a300

    add-long v26, v26, v28

    .line 752
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v26

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 754
    const-string/jumbo v26, ", timeUntilTouchDelayExpiredMS="

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 755
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x1dcd6500

    add-long v26, v26, v28

    .line 754
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v26

    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit v24

    .line 760
    if-eq v14, v12, :cond_9

    if-ltz v14, :cond_9

    .line 761
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 762
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 763
    const-string/jumbo v25, ", oldProposedRotation="

    .line 762
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 573
    :cond_9
    return-void

    .line 601
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v12    # "oldProposedRotation":I
    .end local v14    # "proposedRotation":I
    .end local v15    # "skipSample":Z
    :cond_a
    const/16 v23, 0x0

    cmpl-float v23, v20, v23

    if-nez v23, :cond_b

    const/16 v23, 0x0

    cmpl-float v23, v21, v23

    if-nez v23, :cond_b

    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-eqz v23, :cond_1

    .line 608
    :cond_b
    const/high16 v23, 0x43480000    # 200.0f

    add-float v23, v23, v19

    div-float v4, v19, v23

    .line 609
    .local v4, "alpha":F
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    move/from16 v23, v0

    sub-float v23, v20, v23

    mul-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    move/from16 v25, v0

    add-float v20, v23, v25

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    mul-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    move/from16 v25, v0

    add-float v21, v23, v25

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    move/from16 v23, v0

    sub-float v23, v22, v23

    mul-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    move/from16 v25, v0

    add-float v22, v23, v25

    .line 612
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 613
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Filtered acceleration vector: x="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 614
    const-string/jumbo v26, ", y="

    .line 613
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 614
    const-string/jumbo v26, ", z="

    .line 613
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 615
    const-string/jumbo v26, ", magnitude="

    .line 613
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 615
    mul-float v26, v20, v20

    mul-float v27, v21, v21

    add-float v26, v26, v27

    mul-float v27, v22, v22

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 613
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "skipSample":Z
    goto/16 :goto_0

    .line 638
    .end local v4    # "alpha":F
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 639
    const/4 v5, 0x1

    .line 640
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 650
    :cond_e
    div-float v23, v22, v8

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    .line 649
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v18, v0

    .line 651
    .local v18, "tiltAngle":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 654
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 655
    const/4 v6, 0x1

    .line 656
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 658
    :cond_f
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 659
    const/4 v7, 0x1

    .line 660
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 665
    :cond_10
    const/16 v23, -0x28

    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_13

    .line 666
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 670
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 671
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 672
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 577
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v8    # "magnitude":F
    .end local v10    # "now":J
    .end local v15    # "skipSample":Z
    .end local v16    # "then":J
    .end local v18    # "tiltAngle":I
    .end local v19    # "timeDeltaMS":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v22    # "z":F
    :catchall_0
    move-exception v23

    monitor-exit v24

    throw v23

    .line 667
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    .restart local v10    # "now":J
    .restart local v15    # "skipSample":Z
    .restart local v16    # "then":J
    .restart local v18    # "tiltAngle":I
    .restart local v19    # "timeDeltaMS":F
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    .restart local v22    # "z":F
    :cond_13
    const/16 v23, -0xf

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_11

    .line 668
    const/16 v23, 0x0

    :try_start_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_2

    .line 676
    :cond_14
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v23

    const/16 v25, 0x50

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    .line 677
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 678
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto/16 :goto_1

    .line 687
    :cond_16
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    .line 686
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v13, v0

    .line 688
    .local v13, "orientationAngle":I
    if-gez v13, :cond_17

    .line 690
    add-int/lit16 v13, v13, 0x168

    .line 694
    :cond_17
    add-int/lit8 v23, v13, 0x2d

    div-int/lit8 v9, v23, 0x5a

    .line 695
    .local v9, "nearestRotation":I
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v9, v0, :cond_18

    .line 696
    const/4 v9, 0x0

    .line 700
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 701
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v23

    .line 700
    if-eqz v23, :cond_19

    .line 703
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 704
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 705
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Predicted: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 707
    const-string/jumbo v26, ", orientationAngle="

    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 708
    const-string/jumbo v26, ", predictedRotation="

    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    move/from16 v26, v0

    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 709
    const-string/jumbo v26, ", predictedRotationAgeMS="

    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 710
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v26, v0

    sub-long v26, v10, v26

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    .line 711
    const v27, 0x358637bd    # 1.0E-6f

    .line 710
    mul-float v26, v26, v27

    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 714
    :cond_19
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 715
    const-string/jumbo v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 717
    const-string/jumbo v26, ", orientationAngle="

    .line 715
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public onTouchEndLocked(J)V
    .locals 1
    .param p1, "whenElapsedNanos"    # J

    .prologue
    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 777
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 775
    return-void
.end method

.method public onTouchStartLocked()V
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 770
    return-void
.end method

.method public resetLocked()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    .line 782
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 783
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 784
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 785
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 786
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 787
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 788
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 789
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 790
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 791
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 792
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    .line 781
    return-void
.end method
