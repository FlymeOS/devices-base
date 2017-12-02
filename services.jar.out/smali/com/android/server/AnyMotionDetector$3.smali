.class Lcom/android/server/AnyMotionDetector$3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 331
    const/4 v0, -0x1

    .line 332
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get2(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get3(Lcom/android/server/AnyMotionDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/AnyMotionDetector;->-set0(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 338
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-wrap0(Lcom/android/server/AnyMotionDetector;)I

    move-result v0

    .line 339
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get1(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->-get7(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/AnyMotionDetector;->-set2(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 342
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 330
    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
