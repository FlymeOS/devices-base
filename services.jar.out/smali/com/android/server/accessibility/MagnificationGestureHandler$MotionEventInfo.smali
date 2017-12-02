.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 759
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    .line 755
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 816
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 817
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 818
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 819
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 820
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    .line 815
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 795
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 796
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 797
    iput p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    .line 794
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 777
    sget-object v2, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 779
    :try_start_0
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v1, :cond_0

    .line 780
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 781
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 782
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 783
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 784
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 788
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 789
    return-object v0

    .line 786
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    goto :goto_0

    .line 777
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 801
    sget-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-eqz v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 805
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->clear()V

    .line 806
    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 807
    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 808
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 809
    sput-object p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 800
    return-void
.end method
