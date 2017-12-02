.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$1;
    }
.end annotation


# static fields
.field private static final ADR_ALL:I = 0x7

.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_SNR:I = 0x1

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_NOT_USED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field private static final STATE_ALL:I = 0x3fff

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mAccumulatedDeltaRangeMeters:D

.field private mAccumulatedDeltaRangeState:I

.field private mAccumulatedDeltaRangeUncertaintyMeters:D

.field private mCarrierCycles:J

.field private mCarrierFrequencyHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0DbHz:D

.field private mConstellationType:I

.field private mFlags:I

.field private mMultipathIndicator:I

.field private mPseudorangeRateMetersPerSecond:D

.field private mPseudorangeRateUncertaintyMetersPerSecond:D

.field private mReceivedSvTimeNanos:J

.field private mReceivedSvTimeUncertaintyNanos:J

.field private mSnrInDb:D

.field private mState:I

.field private mSvid:I

.field private mTimeOffsetNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return p1
.end method

.method static synthetic -set10(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return p1
.end method

.method static synthetic -set11(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic -set13(Landroid/location/GnssMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide p1
.end method

.method static synthetic -set14(Landroid/location/GnssMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide p1
.end method

.method static synthetic -set15(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic -set16(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return p1
.end method

.method static synthetic -set17(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return p1
.end method

.method static synthetic -set18(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssMeasurement;F)F
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return p1
.end method

.method static synthetic -set5(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/GnssMeasurement;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return p1
.end method

.method static synthetic -set9(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 849
    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 155
    return-void
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    if-nez v2, :cond_0

    .line 545
    const-string/jumbo v2, "Unknown"

    return-object v2

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 549
    const-string/jumbo v2, "Valid|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_1
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 552
    const-string/jumbo v2, "Reset|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_2
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 555
    const-string/jumbo v2, "CycleSlip|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_3
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v1, v2, -0x8

    .line 558
    .local v1, "remainingStates":I
    if-lez v1, :cond_4

    .line 559
    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 801
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    packed-switch v0, :pswitch_data_0

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 803
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 805
    :pswitch_1
    const-string/jumbo v0, "Detected"

    return-object v0

    .line 807
    :pswitch_2
    const-string/jumbo v0, "NotUsed"

    return-object v0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    if-nez v2, :cond_0

    .line 289
    const-string/jumbo v2, "Unknown"

    return-object v2

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 294
    const-string/jumbo v2, "CodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 297
    const-string/jumbo v2, "BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 300
    const-string/jumbo v2, "SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_3
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 303
    const-string/jumbo v2, "TowDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_4
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 306
    const-string/jumbo v2, "MsecAmbiguous|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_5
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 309
    const-string/jumbo v2, "SymbolSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_6
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 312
    const-string/jumbo v2, "GloStringSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_7
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 315
    const-string/jumbo v2, "GloTodDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_8
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_9

    .line 318
    const-string/jumbo v2, "BdsD2BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_9
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_a

    .line 321
    const-string/jumbo v2, "BdsD2SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_a
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_b

    .line 324
    const-string/jumbo v2, "GalE1bcCodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_b
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_c

    .line 327
    const-string/jumbo v2, "E1c2ndCodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_c
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_d

    .line 330
    const-string/jumbo v2, "GalE1bPageSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_d
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_e

    .line 333
    const-string/jumbo v2, "SbasSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_e
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v2, -0x4000

    .line 337
    .local v1, "remainingStates":I
    if-lez v1, :cond_f

    .line 338
    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x1

    .line 979
    iput v4, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 980
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setSvid(I)V

    .line 981
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    .line 982
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setState(I)V

    .line 983
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    .line 984
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    .line 985
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    .line 986
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    .line 987
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    .line 988
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    .line 989
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    .line 990
    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    .line 991
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    .line 992
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    .line 993
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    .line 994
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    .line 995
    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    .line 996
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    .line 978
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1008
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

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
    .line 1004
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 1003
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1000
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 999
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeMeters()D
    .locals 2

    .prologue
    .line 582
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyMeters()D
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public getCarrierCycles()J
    .locals 2

    .prologue
    .line 672
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyHz()F
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    .prologue
    .line 716
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    .prologue
    .line 755
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0DbHz()D
    .locals 2

    .prologue
    .line 460
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public getConstellationType()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public getMultipathIndicator()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public getPseudorangeRateMetersPerSecond()D
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyMetersPerSecond()D
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public getReceivedSvTimeNanos()J
    .locals 2

    .prologue
    .line 424
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public getReceivedSvTimeUncertaintyNanos()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    .prologue
    .line 826
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public getTimeOffsetNanos()D
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    .prologue
    .line 661
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .locals 1

    .prologue
    .line 622
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    .prologue
    .line 699
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    .prologue
    .line 744
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 193
    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    .prologue
    .line 691
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 692
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 690
    return-void
.end method

.method public resetCarrierFrequencyHz()V
    .locals 1

    .prologue
    .line 653
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 654
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 652
    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    .prologue
    .line 735
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 736
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 734
    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    .prologue
    .line 774
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 775
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 773
    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    .prologue
    .line 845
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 846
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 844
    return-void
.end method

.method public set(Landroid/location/GnssMeasurement;)V
    .locals 2
    .param p1, "measurement"    # Landroid/location/GnssMeasurement;

    .prologue
    .line 165
    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 166
    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 167
    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 168
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 169
    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 170
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 171
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 172
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 173
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 175
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 174
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 176
    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 177
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 179
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 178
    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 180
    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 181
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 182
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 183
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 184
    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 185
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 164
    return-void
.end method

.method public setAccumulatedDeltaRangeMeters(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 591
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 590
    return-void
.end method

.method public setAccumulatedDeltaRangeState(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 535
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 534
    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 614
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 613
    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 681
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 682
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 680
    return-void
.end method

.method public setCarrierFrequencyHz(F)V
    .locals 1
    .param p1, "carrierFrequencyHz"    # F

    .prologue
    .line 643
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 644
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 642
    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 725
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 726
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 724
    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 764
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 765
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 763
    return-void
.end method

.method public setCn0DbHz(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 469
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 468
    return-void
.end method

.method public setConstellationType(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 233
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 232
    return-void
.end method

.method public setMultipathIndicator(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 792
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 791
    return-void
.end method

.method public setPseudorangeRateMetersPerSecond(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 498
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 497
    return-void
.end method

.method public setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 516
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 515
    return-void
.end method

.method public setReceivedSvTimeNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 433
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 432
    return-void
.end method

.method public setReceivedSvTimeUncertaintyNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 449
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 448
    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1
    .param p1, "snrInDb"    # D

    .prologue
    .line 835
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 836
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 834
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 279
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 278
    return-void
.end method

.method public setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 213
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 212
    return-void
.end method

.method public setTimeOffsetNanos(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 259
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 913
    const-string/jumbo v1, "   %-29s = %s\n"

    .line 914
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-29s = %-25s   %-40s = %s\n"

    .line 915
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GnssMeasurement:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Svid"

    aput-object v6, v5, v10

    iget v6, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "ConstellationType"

    aput-object v6, v5, v10

    iget v6, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "TimeOffsetNanos"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "State"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    .line 923
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 925
    const-string/jumbo v6, "ReceivedSvTimeNanos"

    aput-object v6, v5, v10

    .line 926
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    .line 927
    const-string/jumbo v6, "ReceivedSvTimeUncertaintyNanos"

    aput-object v6, v5, v12

    .line 928
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    .line 923
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Cn0DbHz"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    .line 932
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 934
    const-string/jumbo v6, "PseudorangeRateMetersPerSecond"

    aput-object v6, v5, v10

    .line 935
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    .line 936
    const-string/jumbo v6, "PseudorangeRateUncertaintyMetersPerSecond"

    aput-object v6, v5, v12

    .line 937
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    .line 932
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    const-string/jumbo v3, "   %-29s = %s\n"

    .line 939
    new-array v5, v12, [Ljava/lang/Object;

    .line 941
    const-string/jumbo v6, "AccumulatedDeltaRangeState"

    aput-object v6, v5, v10

    .line 942
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 939
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    .line 944
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 946
    const-string/jumbo v6, "AccumulatedDeltaRangeMeters"

    aput-object v6, v5, v10

    .line 947
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    .line 948
    const-string/jumbo v6, "AccumulatedDeltaRangeUncertaintyMeters"

    aput-object v6, v5, v12

    .line 949
    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    .line 944
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string/jumbo v5, "   %-29s = %s\n"

    .line 951
    new-array v6, v12, [Ljava/lang/Object;

    .line 953
    const-string/jumbo v3, "CarrierFrequencyHz"

    aput-object v3, v6, v10

    .line 954
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_0
    aput-object v3, v6, v11

    .line 951
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const-string/jumbo v5, "   %-29s = %s\n"

    .line 956
    new-array v6, v12, [Ljava/lang/Object;

    .line 958
    const-string/jumbo v3, "CarrierCycles"

    aput-object v3, v6, v10

    .line 959
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v11

    .line 956
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    .line 961
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    .line 963
    const-string/jumbo v3, "CarrierPhase"

    aput-object v3, v6, v10

    .line 964
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v11

    .line 965
    const-string/jumbo v3, "CarrierPhaseUncertainty"

    aput-object v3, v6, v12

    .line 966
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_3
    aput-object v3, v6, v13

    .line 961
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "MultipathIndicator"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    const-string/jumbo v3, "   %-29s = %s\n"

    .line 970
    new-array v5, v12, [Ljava/lang/Object;

    .line 972
    const-string/jumbo v6, "SnrInDb"

    aput-object v6, v5, v10

    .line 973
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_0
    aput-object v4, v5, v11

    .line 970
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    move-object v3, v4

    .line 954
    goto/16 :goto_0

    :cond_2
    move-object v3, v4

    .line 959
    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 964
    goto :goto_2

    :cond_4
    move-object v3, v4

    .line 966
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 885
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 889
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 891
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 892
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 893
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 894
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 895
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 897
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 898
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 899
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 900
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 901
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 902
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 884
    return-void
.end method
