.class public Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VectorDrawableAnimatorRT"
.end annotation


# static fields
.field private static final END_ANIMATION:I = 0x4

.field private static final MAX_SAMPLE_POINTS:I = 0x12c

.field private static final RESET_ANIMATION:I = 0x3

.field private static final REVERSE_ANIMATION:I = 0x2

.field private static final START_ANIMATION:I = 0x1


# instance fields
.field private mContainsSequentialAnimators:Z

.field private final mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mInitialized:Z

.field private mIsInfinite:Z

.field private mIsReversible:Z

.field private mLastListenerId:I

.field private mLastSeenTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/RenderNode;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private final mPendingAnimationActions:Landroid/util/IntArray;

.field private mSetPtr:J

.field private final mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private final mStartDelays:Landroid/util/LongArray;

.field private mStarted:Z

.field private mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 0
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/AnimatedVectorDrawable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1224
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    .line 1226
    new-instance v0, Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PropertyValues;-><init>()V

    .line 1225
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    .line 1227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1228
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1229
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1230
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1231
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1232
    iput-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1235
    iput-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1236
    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    .line 1237
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    .line 1241
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 1242
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1245
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-wide v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetRefBasePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1240
    return-void
.end method

.method private addPendingAction(I)V
    .locals 1
    .param p1, "pendingAnimationAction"    # I

    .prologue
    .line 1587
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1588
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1586
    return-void
.end method

.method private static callOnFinished(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0
    .param p0, "set"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p1, "id"    # I

    .prologue
    .line 1766
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->onAnimationEnd(I)V

    .line 1765
    return-void
.end method

.method private static createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F
    .locals 7
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .prologue
    .line 1490
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v3

    .line 1491
    .local v3, "numAnimFrames":I
    new-array v4, v3, [F

    .line 1492
    .local v4, "values":[F
    add-int/lit8 v5, v3, -0x1

    int-to-float v2, v5

    .line 1493
    .local v2, "lastFrame":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1494
    int-to-float v5, v1

    div-float v0, v5, v2

    .line 1495
    .local v0, "fraction":F
    invoke-interface {p0, v0}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v1

    .line 1493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1497
    .end local v0    # "fraction":F
    :cond_0
    return-object v4
.end method

.method private static createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I
    .locals 7
    .param p0, "dataSource"    # Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;
    .param p1, "duration"    # J

    .prologue
    .line 1502
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getFrameCount(J)I

    move-result v3

    .line 1503
    .local v3, "numAnimFrames":I
    new-array v4, v3, [I

    .line 1504
    .local v4, "values":[I
    add-int/lit8 v5, v3, -0x1

    int-to-float v2, v5

    .line 1505
    .local v2, "lastFrame":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1506
    int-to-float v5, v1

    div-float v0, v5, v2

    .line 1507
    .local v0, "fraction":F
    invoke-interface {p0, v0}, Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;->getValueAtFraction(F)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 1505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1509
    .end local v0    # "fraction":F
    :cond_0
    return-object v4
.end method

.method private createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V
    .locals 13
    .param p1, "propertyPtr"    # J
    .param p3, "extraDelay"    # J
    .param p5, "animator"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1514
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v8

    .line 1515
    .local v8, "duration":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v10

    .line 1516
    .local v10, "repeatCount":I
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    add-long v6, p3, v0

    .line 1517
    .local v6, "startDelay":J
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v12

    .line 1519
    .local v12, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-static {v12, v8, v9}, Landroid/view/RenderNodeAnimatorSetHelper;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v4

    .line 1521
    .local v4, "nativeInterpolator":J
    long-to-float v0, v6

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v6, v0

    .line 1522
    long-to-float v0, v8

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v8, v0

    .line 1524
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongArray;->add(J)V

    .line 1525
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    .line 1526
    invoke-virtual/range {p5 .. p5}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    move-result v11

    move-wide v2, p1

    .line 1525
    invoke-static/range {v0 .. v11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap7(JJJJJII)V

    .line 1513
    return-void
.end method

.method private createRTAnimator(Landroid/animation/ObjectAnimator;J)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "startTime"    # J

    .prologue
    .line 1303
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1304
    .local v1, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v7

    .line 1305
    .local v7, "target":Ljava/lang/Object;
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_1

    move-object v3, v7

    .line 1306
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VPath;

    if-eqz v0, :cond_5

    .line 1309
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v1

    if-ge v6, v0, :cond_0

    .line 1310
    aget-object v0, v1, v6

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1311
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_3

    .line 1312
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v0, v0, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    const-string/jumbo v2, "pathData"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1311
    if-eqz v0, :cond_3

    move-object v0, v7

    .line 1313
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V

    .line 1309
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1315
    :cond_3
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v0, :cond_4

    move-object v0, v7

    .line 1316
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V

    goto :goto_2

    .line 1318
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ClipPath only supports PathData property"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    .end local v6    # "i":I
    :cond_5
    instance-of v0, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_6

    move-object v3, v7

    .line 1326
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    .line 1325
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V

    goto :goto_0

    .line 1327
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Target should be either VGroup, VPath, or ConstantState, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1330
    const-string/jumbo v0, "Null target"

    .line 1329
    :goto_3
    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1330
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1331
    const-string/jumbo v3, " is not supported"

    .line 1330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private createRTAnimatorForFullPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VFullPath;J)V
    .locals 11
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .param p3, "startTime"    # J

    .prologue
    .line 1385
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPropertyIndex(Ljava/lang/String;)I

    move-result v10

    .line 1387
    .local v10, "propertyId":I
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getNativePtr()J

    move-result-wide v8

    .line 1388
    .local v8, "nativePtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_4

    .line 1389
    :cond_0
    if-gez v10, :cond_2

    .line 1390
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1391
    return-void

    .line 1393
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1394
    const-string/jumbo v5, " is not supported for FullPath"

    .line 1393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1397
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap5(JIFF)J

    move-result-wide v2

    .line 1399
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_3

    .line 1401
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1402
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1401
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1403
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    .end local v0    # "dataPoints":[F
    :cond_3
    :goto_0
    move-object v1, p0

    move-wide v4, p3

    move-object v6, p1

    .line 1424
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1383
    return-void

    .line 1406
    .end local v2    # "propertyPtr":J
    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_6

    .line 1408
    :cond_5
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1407
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap3(JIII)J

    move-result-wide v2

    .line 1409
    .restart local v2    # "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_3

    .line 1411
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1412
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1411
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createIntDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[I

    move-result-object v7

    .line 1413
    .local v7, "dataPoints":[I
    array-length v1, v7

    invoke-static {v2, v3, v7, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap12(J[II)V

    goto :goto_0

    .line 1416
    .end local v2    # "propertyPtr":J
    .end local v7    # "dataPoints":[I
    :cond_6
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1417
    return-void

    .line 1419
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1420
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v5, v5, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    .line 1419
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1420
    const-string/jumbo v5, ". Only float, int or PathData value is "

    .line 1419
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1421
    const-string/jumbo v5, "supported for Paths."

    .line 1419
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createRTAnimatorForGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VGroup;J)V
    .locals 12
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p4, "startTime"    # J

    .prologue
    .line 1339
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativePtr()J

    move-result-wide v8

    .line 1341
    .local v8, "nativePtr":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v1, p1

    if-ge v7, v1, :cond_3

    .line 1343
    aget-object v1, p1, v7

    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1344
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getPropertyIndex(Ljava/lang/String;)I

    move-result v10

    .line 1345
    .local v10, "propertyId":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v4, :cond_1

    .line 1341
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1352
    :cond_1
    if-ltz v10, :cond_0

    .line 1360
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1359
    invoke-static {v8, v9, v10, v4, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap2(JIFF)J

    move-result-wide v2

    .line 1361
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_2

    .line 1362
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1363
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1362
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1364
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    .end local v0    # "dataPoints":[F
    :cond_2
    move-object v1, p0

    move-wide/from16 v4, p4

    move-object v6, p2

    .line 1366
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    goto :goto_1

    .line 1337
    .end local v2    # "propertyPtr":J
    .end local v10    # "propertyId":I
    :cond_3
    return-void
.end method

.method private createRTAnimatorForPath(Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VPath;J)V
    .locals 13
    .param p1, "animator"    # Landroid/animation/ObjectAnimator;
    .param p2, "target"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "startTime"    # J

    .prologue
    .line 1372
    invoke-virtual {p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->getNativePtr()J

    move-result-wide v0

    .line 1373
    .local v0, "nativePtr":J
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v6, v6, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/PathParser$PathData;

    invoke-virtual {v6}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v2

    .line 1375
    .local v2, "startPathDataPtr":J
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v6, v6, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/PathParser$PathData;

    invoke-virtual {v6}, Landroid/util/PathParser$PathData;->getNativePtr()J

    move-result-wide v4

    .line 1377
    .local v4, "endPathDataPtr":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap4(JJJ)J

    move-result-wide v8

    .local v8, "propertyPtr":J
    move-object v7, p0

    move-wide/from16 v10, p3

    move-object v12, p1

    .line 1379
    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1370
    return-void
.end method

.method private createRTAnimatorForRootGroup([Landroid/animation/PropertyValuesHolder;Landroid/animation/ObjectAnimator;Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;J)V
    .locals 12
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "target"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p4, "startTime"    # J

    .prologue
    .line 1430
    invoke-virtual {p3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v10

    .line 1431
    .local v10, "nativePtr":J
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1432
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    return-void

    .line 1435
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Only alpha is supported for root group"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1439
    :cond_1
    const/4 v9, 0x0

    .line 1440
    .local v9, "startValue":Ljava/lang/Float;
    const/4 v7, 0x0

    .line 1441
    .local v7, "endValue":Ljava/lang/Float;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p1

    if-ge v8, v1, :cond_2

    .line 1442
    aget-object v1, p1, v8

    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V

    .line 1443
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    const-string/jumbo v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1444
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v9, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    .end local v9    # "startValue":Ljava/lang/Float;
    check-cast v9, Ljava/lang/Float;

    .line 1445
    .local v9, "startValue":Ljava/lang/Float;
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v7, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    .end local v7    # "endValue":Ljava/lang/Float;
    check-cast v7, Ljava/lang/Float;

    .line 1449
    .end local v9    # "startValue":Ljava/lang/Float;
    :cond_2
    if-nez v9, :cond_5

    if-nez v7, :cond_5

    .line 1450
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1451
    return-void

    .line 1441
    .restart local v7    # "endValue":Ljava/lang/Float;
    .local v9, "startValue":Ljava/lang/Float;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1453
    .end local v7    # "endValue":Ljava/lang/Float;
    .end local v9    # "startValue":Ljava/lang/Float;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "No alpha values are specified"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1456
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v10, v11, v1, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap6(JFF)J

    move-result-wide v2

    .line 1457
    .local v2, "propertyPtr":J
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    if-eqz v1, :cond_6

    .line 1459
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mTmpValues:Landroid/animation/PropertyValuesHolder$PropertyValues;

    iget-object v1, v1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1460
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v4

    .line 1459
    invoke-static {v1, v4, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createFloatDataPoints(Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;J)[F

    move-result-object v0

    .line 1461
    .local v0, "dataPoints":[F
    array-length v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap11(J[FI)V

    .end local v0    # "dataPoints":[F
    :cond_6
    move-object v1, p0

    move-wide/from16 v4, p4

    move-object v6, p2

    .line 1463
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createNativeChildAnimator(JJLandroid/animation/ObjectAnimator;)V

    .line 1429
    return-void
.end method

.method private endAnimation()V
    .locals 2

    .prologue
    .line 1674
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap8(J)V

    .line 1675
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1667
    return-void
.end method

.method private static getFrameCount(J)I
    .locals 8
    .param p0, "duration"    # J

    .prologue
    .line 1470
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v2

    .line 1471
    .local v2, "frameIntervalNanos":J
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    long-to-int v0, v4

    .line 1472
    .local v0, "animIntervalMs":I
    long-to-double v4, p0

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1474
    .local v1, "numAnimFrames":I
    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1475
    const/16 v4, 0x12c

    if-le v1, v4, :cond_0

    .line 1476
    const-string/jumbo v4, "AnimatedVectorDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Duration for the animation is too long :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1477
    const-string/jumbo v6, ", the animation will subsample the keyframe or path data."

    .line 1476
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/16 v1, 0x12c

    .line 1480
    :cond_0
    return v1
.end method

.method private handlePendingAction(I)V
    .locals 3
    .param p1, "pendingAnimationAction"    # I

    .prologue
    .line 1552
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1553
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    .line 1551
    :goto_0
    return-void

    .line 1554
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1555
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    goto :goto_0

    .line 1556
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1557
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    goto :goto_0

    .line 1558
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1559
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    goto :goto_0

    .line 1561
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animation action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1562
    const-string/jumbo v2, "is not supported"

    .line 1561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateOwningView()V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 1582
    return-void
.end method

.method private onAnimationEnd(I)V
    .locals 2
    .param p1, "listenerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1749
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    if-eq p1, v0, :cond_0

    .line 1750
    return-void

    .line 1755
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1758
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1759
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1748
    :cond_1
    return-void
.end method

.method private parseAnimatorSet(Landroid/animation/AnimatorSet;J)V
    .locals 6
    .param p1, "set"    # Landroid/animation/AnimatorSet;
    .param p2, "startTime"    # J

    .prologue
    .line 1278
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 1280
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->shouldPlayTogether()Z

    move-result v3

    .line 1282
    .local v3, "playTogether":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1283
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1285
    .local v0, "animator":Landroid/animation/Animator;
    instance-of v4, v0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 1286
    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1292
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 1294
    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v4

    add-long/2addr p2, v4

    .line 1295
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    .line 1282
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    :cond_2
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 1288
    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v4, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->createRTAnimator(Landroid/animation/ObjectAnimator;J)V

    goto :goto_1

    .line 1277
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_3
    return-void
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 1680
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap9(J)V

    .line 1681
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1679
    return-void
.end method

.method private reverseAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1686
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1687
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap10(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1688
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1689
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1685
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    .line 1659
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    iget v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastListenerId:I

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap14(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1660
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->invalidateOwningView()V

    .line 1661
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1651
    :cond_0
    return-void
.end method

.method private transferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V
    .locals 5
    .param p1, "animatorSet"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .prologue
    .line 1770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1771
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 1772
    .local v1, "pendingAction":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1773
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    .line 1770
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1774
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1775
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    goto :goto_1

    .line 1776
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1777
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    goto :goto_1

    .line 1778
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1779
    invoke-interface {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    goto :goto_1

    .line 1781
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Animation action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1782
    const-string/jumbo v4, "is not supported"

    .line 1781
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1785
    .end local v1    # "pendingAction":I
    :cond_4
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 1769
    return-void
.end method

.method private useLastSeenTarget()Z
    .locals 2

    .prologue
    .line 1567
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1568
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    .line 1569
    .local v0, "target":Landroid/view/RenderNode;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    move-result v1

    return v1

    .line 1571
    .end local v0    # "target":Landroid/view/RenderNode;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private useTarget(Landroid/view/RenderNode;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/RenderNode;

    .prologue
    .line 1575
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {p1, p0}, Landroid/view/RenderNode;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 1577
    const/4 v0, 0x1

    return v0

    .line 1579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .prologue
    .line 1700
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    return v0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 1609
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1610
    return-void

    .line 1613
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1614
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->endAnimation()V

    .line 1608
    :goto_0
    return-void

    .line 1616
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method

.method public getAnimatorNativePtr()J
    .locals 2

    .prologue
    .line 1695
    iget-wide v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    return-wide v0
.end method

.method public init(Landroid/animation/AnimatorSet;)V
    .locals 12
    .param p1, "set"    # Landroid/animation/AnimatorSet;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1250
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 1252
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "VectorDrawableAnimator cannot be re-initialized"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1255
    :cond_0
    invoke-direct {p0, p1, v10, v11}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->parseAnimatorSet(Landroid/animation/AnimatorSet;J)V

    .line 1256
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-get0(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    move-result-object v1

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->getNativeTree()J

    move-result-wide v2

    .line 1258
    .local v2, "vectorDrawableTreePtr":J
    iget-wide v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mSetPtr:J

    invoke-static {v6, v7, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-wrap13(JJ)V

    .line 1259
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    .line 1260
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    .line 1263
    iput-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1264
    iget-boolean v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mContainsSequentialAnimators:Z

    if-eqz v1, :cond_3

    .line 1265
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1249
    :cond_1
    return-void

    :cond_2
    move v1, v5

    .line 1260
    goto :goto_0

    .line 1268
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1269
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStartDelays:Landroid/util/LongArray;

    invoke-virtual {v1, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-lez v1, :cond_4

    .line 1270
    iput-boolean v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    .line 1271
    return-void

    .line 1268
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 1735
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsInfinite:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1710
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1711
    const/4 v0, 0x0

    return v0

    .line 1713
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1705
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mStarted:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1728
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1729
    check-cast p1, Landroid/view/DisplayListCanvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V

    .line 1727
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1739
    return-void
.end method

.method protected recordLastSeenTarget(Landroid/view/DisplayListCanvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 1535
    invoke-static {p1}, Landroid/view/RenderNodeAnimatorSetHelper;->getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;

    move-result-object v1

    .line 1536
    .local v1, "node":Landroid/view/RenderNode;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mLastSeenTarget:Ljava/lang/ref/WeakReference;

    .line 1538
    iget-boolean v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1539
    :cond_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useTarget(Landroid/view/RenderNode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1544
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->handlePendingAction(I)V

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1546
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mPendingAnimationActions:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 1534
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1723
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1722
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1623
    return-void

    .line 1626
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->resetAnimation()V

    .line 1621
    :goto_0
    return-void

    .line 1629
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1744
    return-void
.end method

.method public reverse()V
    .locals 1

    .prologue
    .line 1637
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mIsReversible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 1640
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1644
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->reverseAnimation()V

    .line 1636
    :goto_0
    return-void

    .line 1638
    :cond_0
    return-void

    .line 1646
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1718
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 1717
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1593
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->mInitialized:Z

    if-nez v0, :cond_0

    .line 1594
    return-void

    .line 1597
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->useLastSeenTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->startAnimation()V

    .line 1592
    :goto_0
    return-void

    .line 1603
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->addPendingAction(I)V

    goto :goto_0
.end method
