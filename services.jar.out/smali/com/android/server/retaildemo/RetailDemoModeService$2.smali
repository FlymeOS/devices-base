.class Lcom/android/server/retaildemo/RetailDemoModeService$2;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"

# interfaces
.implements Landroid/app/RetailDemoModeServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final USER_ACTIVITY_DEBOUNCE_TIME:J = 0x7d0L


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserActivity()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 634
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-eqz v2, :cond_1

    .line 635
    :cond_0
    return-void

    .line 637
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 638
    .local v0, "timeOfActivity":J
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v3, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 639
    :try_start_0
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-wide v4, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    monitor-exit v3

    .line 640
    return-void

    .line 642
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iput-wide v0, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    .line 643
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v2}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDemoLauncherDisabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "retail_demo first touch"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z

    .line 646
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iput-wide v0, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v3

    .line 649
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v2, v2, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService$2;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-wide v4, v3, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserInactivityTimeout:J

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 633
    return-void

    .line 638
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
