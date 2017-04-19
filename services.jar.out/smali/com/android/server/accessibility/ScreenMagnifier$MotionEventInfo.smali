.class final Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public mCachedTimeMillis:J

.field public mEvent:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 885
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    .line 881
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 940
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 941
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 942
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    .line 944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    .line 938
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 917
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 918
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 919
    iput p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    .line 920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    .line 916
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 899
    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 901
    :try_start_0
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    if-lez v1, :cond_0

    .line 902
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    .line 903
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 904
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 905
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 906
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    .line 910
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 911
    return-object v0

    .line 908
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    goto :goto_0

    .line 899
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 924
    sget-object v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    if-eqz v0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 928
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->clear()V

    .line 929
    sget v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 930
    sget v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    .line 931
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 932
    sput-object p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 923
    return-void
.end method
