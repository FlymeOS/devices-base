.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$1;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x1b

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mInstalled:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

.field private mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

.field private mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .locals 1
    .param p1, "frameNanos"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 93
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 148
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    .line 149
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    .line 144
    return-void
.end method

.method private addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {p1, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 428
    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 422
    return-void

    .line 426
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_0
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v1, :cond_0

    .line 282
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 283
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    .line 284
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    return-void

    .line 289
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    .line 290
    .local v0, "holder":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 291
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 292
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 277
    return-void
.end method

.method private disableFeatures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    .line 435
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    .line 438
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    .line 442
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    .line 446
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onDestroy()V

    .line 450
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    .line 454
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 457
    :cond_4
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 458
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 431
    return-void
.end method

.method private enableFeatures()V
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamState()V

    .line 385
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Lcom/android/server/accessibility/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    .line 387
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 390
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 391
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    .line 392
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 395
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_2

    .line 396
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 397
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 399
    .local v0, "detectControlGestures":Z
    :goto_0
    new-instance v1, Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 400
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 399
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 401
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 404
    .end local v0    # "detectControlGestures":Z
    :cond_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 405
    new-instance v1, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 406
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V

    .line 410
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 411
    new-instance v1, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    .line 412
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(Lcom/android/server/accessibility/EventStreamTransformation;)V

    .line 382
    :cond_5
    return-void

    .line 397
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "detectControlGestures":Z
    goto :goto_0
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 228
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 229
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 235
    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 241
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5

    .line 242
    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_4

    .line 244
    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    .line 249
    :cond_5
    return-object v1
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 328
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 329
    .local v0, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 330
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 320
    .end local v0    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method private processBatchedEvents(J)V
    .locals 5
    .param p1, "frameNanos"    # J

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 297
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    if-nez v0, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-eqz v2, :cond_2

    .line 301
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_0

    .line 313
    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    .line 314
    move-object v1, v0

    .line 315
    .local v1, "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 316
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    .line 304
    .end local v1    # "prior":Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    :cond_2
    if-nez v0, :cond_3

    .line 305
    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    .line 295
    :goto_1
    return-void

    .line 308
    :cond_3
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    .line 310
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_1
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 266
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 265
    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 254
    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 255
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    return-void

    .line 262
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    .line 252
    return-void
.end method

.method private scheduleProcessBatchedEvents()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    .line 274
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    .line 273
    const/4 v2, 0x0

    .line 274
    const/4 v3, 0x0

    .line 273
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 272
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0
    .param p1, "inputSource"    # I

    .prologue
    .line 358
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 346
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 180
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v4, :cond_0

    .line 181
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 182
    return-void

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v3

    .line 186
    .local v3, "state":Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    if-nez v3, :cond_1

    .line 187
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 188
    return-void

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 192
    .local v0, "eventSource":I
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p2

    if-nez v4, :cond_2

    .line 193
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 194
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v4, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 196
    return-void

    .line 199
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateDeviceId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v4, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 203
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->deviceIdValid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 205
    return-void

    .line 208
    :cond_4
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_7

    .line 209
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v4, v4, 0x1b

    if-eqz v4, :cond_5

    move-object v2, p1

    .line 210
    check-cast v2, Landroid/view/MotionEvent;

    .line 211
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v3, v2, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    .line 212
    return-void

    .line 214
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 174
    :cond_6
    :goto_0
    return-void

    .line 216
    :cond_7
    instance-of v4, p1, Landroid/view/KeyEvent;

    if-eqz v4, :cond_6

    move-object v1, p1

    .line 217
    check-cast v1, Landroid/view/KeyEvent;

    .line 218
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    goto :goto_0
.end method

.method public onInstalled()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 158
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 159
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 160
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 153
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 341
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 337
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 336
    return-void
.end method

.method public onUninstalled()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    .line 169
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 170
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 164
    return-void
.end method

.method resetStreamState()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 461
    :cond_2
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "sink"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 353
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabledFeatures"    # I

    .prologue
    .line 363
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    .line 369
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    .line 370
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    .line 371
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_2

    .line 372
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    .line 362
    :cond_2
    return-void
.end method
