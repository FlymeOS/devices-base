.class Lcom/android/server/DeviceIdleController$3;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get12(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 364
    :cond_0
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
