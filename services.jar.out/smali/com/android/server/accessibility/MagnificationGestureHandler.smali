.class Lcom/android/server/accessibility/MagnificationGestureHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationEventHandler"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectControlGestures:Z

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

.field private final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field private final mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTranslationEnabledBeforePan:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTranslationEnabledBeforePan:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTranslationEnabledBeforePan:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "detectControlGestures"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 115
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    .line 116
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    .line 118
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    .line 117
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    .line 119
    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectControlGestures:Z

    .line 121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    .line 113
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    .line 201
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 202
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    .line 199
    return-void
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 238
    .local v20, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 239
    .local v21, "eventY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    .line 239
    if-eqz v4, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v23

    .line 242
    .local v23, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v24

    .line 243
    .local v24, "scaledOffsetX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v25

    .line 244
    .local v25, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 245
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 246
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 248
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v9, :cond_0

    .line 249
    aget-object v4, v11, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 250
    aget-object v4, v11, v22

    aget-object v5, v11, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v5, v5, v24

    div-float v5, v5, v23

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 251
    aget-object v4, v11, v22

    aget-object v5, v11, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v5, v5, v25

    div-float v5, v5, v23

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 252
    aget-object v4, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 248
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    .line 256
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    .line 254
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    .line 259
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 233
    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    .line 264
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 266
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 267
    if-eqz v2, :cond_0

    .line 268
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 272
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 263
    goto :goto_0

    .line 274
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    .line 280
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 282
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 283
    if-eqz v2, :cond_0

    .line 284
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 289
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 279
    goto :goto_0

    .line 291
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 227
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingStateDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 207
    :cond_1
    return-void

    .line 210
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingStateDownTime:J

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transitionToState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 318
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:I

    .line 319
    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    .line 294
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .prologue
    .line 185
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 184
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    .line 195
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 165
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 126
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 130
    :cond_0
    return-void

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectControlGestures:Z

    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_2

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 136
    :cond_2
    return-void

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 139
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 125
    :goto_0
    :pswitch_1
    return-void

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 179
    return-void
.end method
