.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$Builder;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;
    }
.end annotation


# static fields
.field private static final MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final MAX_STROKE_COUNT:I = 0xa


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPos:[F


# direct methods
.method static synthetic -wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 1
    .param p1, "time"    # J
    .param p3, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/accessibilityservice/GestureDescription;J)J
    .locals 3
    .param p1, "offset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Ljava/util/List;)J
    .locals 2
    .param p0, "paths"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "strokes":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 75
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription;)V
    .locals 0
    .param p1, "strokes"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static getMaxGestureDuration()J
    .locals 2

    .prologue
    .line 69
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getMaxStrokeCount()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0xa

    return v0
.end method

.method private getNextKeyPointAtLeast(J)J
    .locals 11
    .param p1, "offset"    # J

    .prologue
    .line 105
    const-wide v2, 0x7fffffffffffffffL

    .line 106
    .local v2, "nextKeyPoint":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 107
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v6, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 108
    .local v6, "thisStartTime":J
    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    cmp-long v1, v6, p1

    if-ltz v1, :cond_0

    .line 109
    move-wide v2, v6

    .line 111
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v4, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 112
    .local v4, "thisEndTime":J
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    cmp-long v1, v4, p1

    if-ltz v1, :cond_1

    .line 113
    move-wide v2, v4

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v4    # "thisEndTime":J
    .end local v6    # "thisStartTime":J
    :cond_2
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    const-wide/16 v2, -0x1

    .end local v2    # "nextKeyPoint":J
    :cond_3
    return-wide v2
.end method

.method private getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 11
    .param p1, "time"    # J
    .param p3, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "numPointsFound":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 129
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 130
    .local v2, "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    invoke-virtual {v2, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    aget-object v3, p3, v1

    iput v0, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    .line 132
    aget-object v6, p3, v1

    iget-wide v8, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v3, p1, v8

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 133
    aget-object v6, p3, v1

    iget-wide v8, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v3, p1, v8

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 134
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    invoke-virtual {v2, p1, p2, v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    .line 135
    aget-object v3, p3, v1

    iget-object v6, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 136
    aget-object v3, p3, v1

    iget-object v6, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 132
    goto :goto_1

    :cond_2
    move v3, v5

    .line 133
    goto :goto_2

    .line 140
    .end local v2    # "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_3
    return v1
.end method

.method private static getTotalDuration(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    const-wide/high16 v2, -0x8000000000000000L

    .line 147
    .local v2, "latestEnd":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 149
    .local v1, "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    iget-wide v4, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object v0
.end method

.method public getStrokeCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
