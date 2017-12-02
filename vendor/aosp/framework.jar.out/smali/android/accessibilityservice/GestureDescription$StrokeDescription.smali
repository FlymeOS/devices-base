.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# instance fields
.field mEndTime:J

.field mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field mStartTime:J

.field mTapLocation:[F

.field private mTimeToLengthConversion:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;JJ)V
    .locals 10
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    cmp-long v3, p4, v8

    if-gtz v3, :cond_0

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Duration must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    :cond_0
    cmp-long v3, p2, v8

    if-gez v3, :cond_1

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Start time must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 226
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 227
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 229
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path bounds must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 228
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_4
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    .line 235
    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3, p1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 236
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    .line 238
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 239
    .local v2, "tempPath":Landroid/graphics/Path;
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 241
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, v2, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 242
    .local v1, "pathMeasure":Landroid/graphics/PathMeasure;
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 244
    .end local v1    # "pathMeasure":Landroid/graphics/PathMeasure;
    .end local v2    # "tempPath":Landroid/graphics/Path;
    :cond_5
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path has more than one contour"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :cond_6
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 252
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 253
    add-long v4, p2, p4

    iput-wide v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 254
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v3

    long-to-float v4, p4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 218
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLength()F
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method getPosForTime(J[F)Z
    .locals 5
    .param p1, "time"    # J
    .param p3, "pos"    # [F

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 290
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    aget v1, v1, v3

    aput v1, p3, v3

    .line 292
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    aget v1, v1, v2

    aput v1, p3, v2

    .line 293
    return v2

    .line 295
    :cond_0
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 297
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v2

    invoke-virtual {v1, v2, p3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    return v1

    .line 299
    :cond_1
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    mul-float v0, v1, v2

    .line 300
    .local v0, "length":F
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v0, p3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    return v1
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method hasPointForTime(J)Z
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 304
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
