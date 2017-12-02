.class Lcom/android/server/DeviceIdleController$4;
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
    .line 374
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$4;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$4;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$4;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v2, "s:alarm"

    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 376
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
