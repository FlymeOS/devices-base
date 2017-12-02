.class Lcom/android/server/am/ResizeDockedStackTimeout;
.super Ljava/lang/Object;
.source "ResizeDockedStackTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ResizeDockedStackTimeout$1;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final mCurrentDockedBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ResizeDockedStackTimeout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mCurrentDockedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ResizeDockedStackTimeout;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ResizeDockedStackTimeout;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mCurrentDockedBounds:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Lcom/android/server/am/ResizeDockedStackTimeout$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ResizeDockedStackTimeout$1;-><init>(Lcom/android/server/am/ResizeDockedStackTimeout;)V

    iput-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 50
    iput-object p2, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 51
    iput-object p3, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method


# virtual methods
.method notifyResizing(Landroid/graphics/Rect;Z)V
    .locals 4
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "hasTempBounds"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mCurrentDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ResizeDockedStackTimeout;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method
