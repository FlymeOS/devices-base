.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# instance fields
.field private mAvailable:I

.field private final mCapacity:I

.field private final mFillDelta:I

.field private mLastFill:J


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "deltaMs"    # I
    .param p2, "capacity"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    .line 66
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "deltaMs"    # I
    .param p2, "capacity"    # I
    .param p3, "tokens"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "deltaMs must be strictly positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    .line 55
    const-string/jumbo v0, "capacity must be strictly positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    .line 56
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 57
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 53
    return-void
.end method

.method private fill()V
    .locals 6

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v2

    .line 120
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 121
    .local v0, "diff":I
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    add-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 122
    iput-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 118
    return-void
.end method

.method private scaledTime()J
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 85
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return v0
.end method

.method public get(I)I
    .locals 3
    .param p1, "n"    # I

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 106
    if-gtz p1, :cond_0

    .line 107
    return v2

    .line 109
    :cond_0
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_1

    .line 110
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 111
    .local v0, "got":I
    iput v2, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 112
    return v0

    .line 114
    .end local v0    # "got":I
    :cond_1
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 115
    return p1
.end method

.method public get()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    .line 91
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset(I)V
    .locals 2
    .param p1, "tokens"    # I

    .prologue
    .line 72
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 73
    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    .line 74
    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    .line 71
    return-void
.end method
