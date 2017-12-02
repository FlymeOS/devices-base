.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private static sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I
    .locals 9
    .param p1, "lastTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p2, "lastTouchPointsSize"    # I
    .param p3, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p4, "currentTouchPointsSize"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)I"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    move v8, p2

    .end local p2    # "lastTouchPointsSize":I
    .local v8, "lastTouchPointsSize":I
    :goto_0
    if-ge v7, p4, :cond_2

    .line 596
    aget-object v2, p3, v7

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v2, :cond_3

    .line 598
    add-int/lit8 p2, v8, 0x1

    .end local v8    # "lastTouchPointsSize":I
    .restart local p2    # "lastTouchPointsSize":I
    aget-object v2, p1, v8

    aget-object v3, p3, v7

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 599
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v4, 0x0

    .line 601
    .local v4, "action":I
    :goto_1
    if-nez v4, :cond_1

    move-wide v0, p5

    .line 603
    .local v0, "downTime":J
    :goto_2
    shl-int/lit8 v2, v7, 0x8

    or-int/2addr v4, v2

    move-wide v2, p5

    move-object v5, p1

    move v6, p2

    .line 604
    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v0    # "downTime":J
    .end local v4    # "action":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v8, p2

    .end local p2    # "lastTouchPointsSize":I
    .restart local v8    # "lastTouchPointsSize":I
    goto :goto_0

    .line 600
    .end local v8    # "lastTouchPointsSize":I
    .restart local p2    # "lastTouchPointsSize":I
    :cond_0
    const/4 v4, 0x5

    goto :goto_1

    .line 602
    .restart local v4    # "action":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    goto :goto_2

    .line 608
    .end local v4    # "action":I
    .end local p2    # "lastTouchPointsSize":I
    .restart local v8    # "lastTouchPointsSize":I
    :cond_2
    return v8

    :cond_3
    move p2, v8

    .end local v8    # "lastTouchPointsSize":I
    .restart local p2    # "lastTouchPointsSize":I
    goto :goto_3
.end method

.method private static appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 11
    .param p1, "lastTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p2, "lastTouchPointsSize"    # I
    .param p3, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p4, "currentTouchPointsSize"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v9, 0x0

    .line 547
    .local v9, "moveFound":Z
    const/4 v7, 0x0

    .end local v9    # "moveFound":Z
    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_3

    .line 549
    aget-object v2, p3, v7

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    .line 548
    invoke-static {p1, p2, v2}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v8

    .line 550
    .local v8, "lastPointsIndex":I
    if-ltz v8, :cond_0

    .line 551
    aget-object v2, p1, v8

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v3, p3, v7

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 552
    aget-object v2, p1, v8

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    aget-object v3, p3, v7

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 551
    :goto_1
    or-int/2addr v9, v2

    .line 553
    .local v9, "moveFound":Z
    aget-object v2, p1, v8

    aget-object v3, p3, v7

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 547
    .end local v9    # "moveFound":Z
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 551
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 552
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 557
    .end local v8    # "lastPointsIndex":I
    :cond_3
    if-eqz v9, :cond_4

    .line 558
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 559
    .local v0, "downTime":J
    const/4 v4, 0x2

    move-wide/from16 v2, p5

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v0    # "downTime":J
    :cond_4
    return-void
.end method

.method private static appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I
    .locals 11
    .param p1, "lastTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p2, "lastTouchPointsSize"    # I
    .param p3, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p4, "currentTouchPointsSize"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)I"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_4

    .line 569
    aget-object v2, p3, v7

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v2, :cond_0

    .line 571
    aget-object v2, p3, v7

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    .line 570
    invoke-static {p1, p2, v2}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v8

    .line 572
    .local v8, "indexOfUpEvent":I
    if-gez v8, :cond_1

    .line 568
    .end local v8    # "indexOfUpEvent":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 575
    .restart local v8    # "indexOfUpEvent":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 576
    .local v0, "downTime":J
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const/4 v4, 0x1

    .line 578
    .local v4, "action":I
    :goto_2
    shl-int/lit8 v2, v8, 0x8

    or-int/2addr v4, v2

    move-wide/from16 v2, p5

    move-object v5, p1

    move v6, p2

    .line 579
    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    move v9, v8

    .local v9, "j":I
    :goto_3
    add-int/lit8 v2, p2, -0x1

    if-ge v9, v2, :cond_3

    .line 583
    aget-object v2, p1, v9

    add-int/lit8 v3, v9, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 582
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 577
    .end local v4    # "action":I
    .end local v9    # "j":I
    :cond_2
    const/4 v4, 0x6

    goto :goto_2

    .line 585
    .restart local v4    # "action":I
    .restart local v9    # "j":I
    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 588
    .end local v0    # "downTime":J
    .end local v4    # "action":I
    .end local v8    # "indexOfUpEvent":I
    .end local v9    # "j":I
    :cond_4
    return p2
.end method

.method private static findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2
    .param p0, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p1, "touchPointsSize"    # I
    .param p2, "pathIndex"    # I

    .prologue
    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 633
    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    if-ne v1, p2, :cond_0

    .line 634
    return v0

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3
    .param p0, "requiredCapacity"    # I

    .prologue
    .line 503
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 504
    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 506
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v1
.end method

.method static getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .locals 10
    .param p0, "description"    # Landroid/accessibilityservice/GestureDescription;
    .param p1, "sampleTimeMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v2, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    move-result v3

    invoke-static {v3}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v1

    .line 459
    .local v1, "currentTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    .line 461
    .local v0, "currentTouchPointSize":I
    const-wide/16 v6, 0x0

    .line 462
    .local v6, "timeSinceGestureStart":J
    invoke-static {p0, v6, v7}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    .line 463
    .local v4, "nextKeyPointTime":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1

    .line 464
    if-nez v0, :cond_0

    move-wide v6, v4

    .line 466
    :goto_1
    invoke-static {p0, v6, v7, v1}, Landroid/accessibilityservice/GestureDescription;->-wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v0

    .line 468
    new-instance v3, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v3, v6, v7, v0, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-static {p0, v8, v9}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    goto :goto_0

    .line 465
    :cond_0
    int-to-long v8, p1

    add-long/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 474
    :cond_1
    return-object v2
.end method

.method private static getLastTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3
    .param p0, "requiredCapacity"    # I

    .prologue
    .line 513
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 514
    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 516
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v1
.end method

.method public static getMotionEventsFromGestureSteps(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v3, 0x0

    .line 484
    .local v3, "lastTouchPointSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 485
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 486
    .local v8, "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    iget v5, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 488
    .local v5, "currentTouchPointSize":I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 487
    invoke-static {v4}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getLastTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v2

    .line 491
    .local v2, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 490
    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 493
    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 494
    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 492
    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I

    move-result v3

    .line 496
    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 497
    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 495
    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I

    move-result v3

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v2    # "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .end local v5    # "currentTouchPointSize":I
    .end local v8    # "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    :cond_0
    return-object v1
.end method

.method private static getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "requiredCapacity"    # I

    .prologue
    .line 523
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 524
    :cond_0
    new-array v1, p0, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 526
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private static getPointerProps(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "requiredCapacity"    # I

    .prologue
    .line 533
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 534
    :cond_0
    new-array v1, p0, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 536
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private static obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 20
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p6, "touchPointsSize"    # I

    .prologue
    .line 613
    invoke-static/range {p6 .. p6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 614
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {p6 .. p6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getPointerProps(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 615
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 616
    aget-object v2, v8, v18

    aget-object v3, p5, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 617
    aget-object v2, v8, v18

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 618
    aget-object v2, v9, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 619
    aget-object v2, v9, v18

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 620
    aget-object v2, v9, v18

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 621
    aget-object v2, v9, v18

    aget-object v3, p5, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 622
    aget-object v2, v9, v18

    aget-object v3, p5, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 615
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 625
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 626
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 627
    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p6

    .line 624
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method
