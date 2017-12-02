.class public Lcom/android/server/notification/RateEstimator;
.super Ljava/lang/Object;
.source "RateEstimator.java"


# static fields
.field private static final MINIMUM_DT:D = 5.0E-4

.field private static final RATE_ALPHA:D = 0.8


# instance fields
.field private mInterarrivalTime:D

.field private mLastEventTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    .line 31
    return-void
.end method

.method private getInterarrivalEstimate(J)D
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v0, v2, v4

    .line 62
    .local v0, "dt":D
    const-wide v2, 0x3f40624dd2f1a9fcL    # 5.0E-4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    const-wide v4, 0x3fc9999999999998L    # 0.19999999999999996

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public getRate(J)F
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method

.method public update(J)F
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 47
    .local v0, "rate":F
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    .line 48
    return v0

    .line 44
    .end local v0    # "rate":F
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    .line 45
    iget-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    double-to-float v0, v2

    .restart local v0    # "rate":F
    goto :goto_0
.end method
