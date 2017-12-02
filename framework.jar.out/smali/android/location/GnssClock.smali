.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssClock$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssClock;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssClock;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssClock;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssClock;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssClock;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return p1
.end method

.method static synthetic -set5(Landroid/location/GnssClock;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GnssClock;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p1
.end method

.method static synthetic -set7(Landroid/location/GnssClock;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p1
.end method

.method static synthetic -set8(Landroid/location/GnssClock;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GnssClock;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 57
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 518
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 519
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    .line 520
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    .line 521
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    .line 522
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    .line 523
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    .line 524
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    .line 525
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    .line 526
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    .line 527
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    .line 517
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 539
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 535
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 534
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 531
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 530
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public getBiasNanos()D
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public getFullBiasNanos()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return v0
.end method

.method public getLeapSecond()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return v0
.end method

.method public getTimeNanos()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public hasBiasNanos()Z
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .locals 1

    .prologue
    .line 329
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    .prologue
    .line 370
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasNanos()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 84
    return-void
.end method

.method public resetBiasNanos()V
    .locals 2

    .prologue
    .line 280
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 281
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 279
    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .locals 2

    .prologue
    .line 320
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 321
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 319
    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .locals 2

    .prologue
    .line 361
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 362
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 360
    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .locals 2

    .prologue
    .line 399
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 400
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 398
    return-void
.end method

.method public resetFullBiasNanos()V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 239
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 237
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 125
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 123
    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 191
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 189
    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GnssClock;

    .prologue
    .line 67
    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 68
    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 69
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 70
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 71
    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 72
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 73
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 74
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 75
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 76
    iget v0, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iput v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 66
    return-void
.end method

.method public setBiasNanos(D)V
    .locals 1
    .param p1, "biasNanos"    # D

    .prologue
    .line 270
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 271
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 269
    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .locals 1
    .param p1, "biasUncertaintyNanos"    # D

    .prologue
    .line 310
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 311
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 309
    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .locals 1
    .param p1, "driftNanosPerSecond"    # D

    .prologue
    .line 351
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 352
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 350
    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .locals 1
    .param p1, "driftUncertaintyNanosPerSecond"    # D

    .prologue
    .line 389
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 390
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 388
    return-void
.end method

.method public setFullBiasNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 228
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 229
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 227
    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 428
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 427
    return-void
.end method

.method public setLeapSecond(I)V
    .locals 1
    .param p1, "leapSecond"    # I

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 115
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 113
    return-void
.end method

.method public setTimeNanos(J)V
    .locals 1
    .param p1, "timeNanos"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 148
    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .locals 1
    .param p1, "timeUncertaintyNanos"    # D

    .prologue
    .line 180
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 181
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 477
    const-string/jumbo v1, "   %-15s = %s\n"

    .line 478
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-15s = %-25s   %-26s = %s\n"

    .line 479
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GnssClock:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "LeapSecond"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    .line 483
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    .line 485
    const-string/jumbo v3, "TimeNanos"

    aput-object v3, v6, v7

    .line 486
    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v10

    .line 487
    const-string/jumbo v3, "TimeUncertaintyNanos"

    aput-object v3, v6, v11

    .line 488
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v12

    .line 483
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v5, "   %-15s = %s\n"

    .line 490
    new-array v6, v11, [Ljava/lang/Object;

    .line 492
    const-string/jumbo v3, "FullBiasNanos"

    aput-object v3, v6, v7

    .line 493
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v8, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v10

    .line 490
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    .line 495
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    .line 497
    const-string/jumbo v3, "BiasNanos"

    aput-object v3, v6, v7

    .line 498
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v8, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_3
    aput-object v3, v6, v10

    .line 499
    const-string/jumbo v3, "BiasUncertaintyNanos"

    aput-object v3, v6, v11

    .line 500
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v8, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_4
    aput-object v3, v6, v12

    .line 495
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    .line 502
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    .line 504
    const-string/jumbo v3, "DriftNanosPerSecond"

    aput-object v3, v6, v7

    .line 505
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v8, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_5
    aput-object v3, v6, v10

    .line 506
    const-string/jumbo v3, "DriftUncertaintyNanosPerSecond"

    aput-object v3, v6, v11

    .line 507
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v8, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_0
    aput-object v4, v6, v12

    .line 502
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string/jumbo v3, "   %-15s = %s\n"

    .line 509
    new-array v4, v11, [Ljava/lang/Object;

    .line 511
    const-string/jumbo v5, "HardwareClockDiscontinuityCount"

    aput-object v5, v4, v7

    .line 512
    iget v5, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 509
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    move-object v3, v4

    .line 481
    goto/16 :goto_0

    :cond_2
    move-object v3, v4

    .line 488
    goto/16 :goto_1

    :cond_3
    move-object v3, v4

    .line 493
    goto/16 :goto_2

    :cond_4
    move-object v3, v4

    .line 498
    goto :goto_3

    :cond_5
    move-object v3, v4

    .line 500
    goto :goto_4

    :cond_6
    move-object v3, v4

    .line 505
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 458
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 461
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 462
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 463
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 464
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 465
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 466
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 467
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    return-void
.end method
