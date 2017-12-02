.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Ljava/lang/Object;
.source "MotionEventInjector.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MotionEventInjector$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field private static final MAX_POINTERS:I = 0xb

.field private static final MESSAGE_INJECT_EVENTS:I = 0x2

.field private static final MESSAGE_SEND_MOTION_EVENT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mSequenceForCurrentGesture:I

.field private mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mSourceOfInjectedGesture:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MotionEventInjector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MotionEventInjector;Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 0
    .param p1, "events"    # Ljava/util/List;
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MotionEventInjector;Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/MotionEventInjector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 54
    new-array v0, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 53
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 56
    new-array v0, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 55
    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 60
    iput v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    .line 61
    iput-boolean v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/MotionEventInjector$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/MotionEventInjector$Callback;-><init>(Lcom/android/server/accessibility/MotionEventInjector;Lcom/android/server/accessibility/MotionEventInjector$Callback;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private cancelAnyGestureInProgress(I)V
    .locals 9
    .param p1, "source"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 198
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 201
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 203
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    .line 202
    invoke-direct {p0, v8, v8, v2}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 197
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private cancelAnyPendingInjectedEvents()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method private injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 26
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v23

    .line 136
    .local v23, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "MotionEventInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error sending status with mIsDestroyed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v23    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 142
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    .line 143
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSourceOfInjectedGesture:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 144
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 145
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mSequenceForCurrentGesture:I

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v2, :cond_1

    .line 147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Z)V

    .line 148
    return-void

    .line 151
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 152
    .local v24, "startTime":J
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_5

    .line 153
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/MotionEvent;

    .line 154
    .local v18, "event":Landroid/view/MotionEvent;
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 155
    .local v7, "numPointers":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v2, v2

    if-le v7, v2, :cond_2

    .line 156
    new-array v2, v7, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 157
    new-array v2, v7, [Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 159
    :cond_2
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v7, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v20

    if-nez v2, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v20

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v20

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 159
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    add-long v2, v2, v24

    .line 173
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    add-long v4, v4, v24

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 174
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/accessibility/MotionEventInjector;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 175
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    .line 176
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    .line 177
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    .line 172
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 178
    .local v22, "offsetEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 179
    .local v21, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 152
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 131
    .end local v7    # "numPointers":I
    .end local v18    # "event":Landroid/view/MotionEvent;
    .end local v20    # "j":I
    .end local v21    # "message":Landroid/os/Message;
    .end local v22    # "offsetEvent":Landroid/view/MotionEvent;
    :cond_5
    return-void
.end method

.method private notifyService(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 219
    iget v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequenceForCurrentGesture:I

    .line 218
    invoke-interface {v1, v2, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "MotionEventInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error sending motion event injection status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    :cond_2
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 2
    .param p1, "inputSource"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 4
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 82
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 83
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 84
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 85
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 125
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 95
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 89
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 109
    return-void
.end method
