.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final LISTENER_TIMEOUT:I = 0x3

.field public static final REPORT_ALARMS_ACTIVE:I = 0x4

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2607
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 2611
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2613
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2614
    .local v1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2615
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2616
    .local v4, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2617
    .local v2, "nowELAPSED":J
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    .line 2618
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 2622
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 2623
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2625
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2622
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2614
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 2626
    .restart local v2    # "nowELAPSED":J
    .restart local v4    # "nowRTC":J
    .restart local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    .line 2627
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v10, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_1

    .line 2630
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 2638
    .end local v1    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v8    # "i":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-wrap6(Lcom/android/server/AlarmManagerService;)V

    goto :goto_0

    .line 2642
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v9, v0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    goto :goto_0

    .line 2646
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v9, :cond_0

    .line 2647
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v9, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setAlarmsActive(Z)V

    goto :goto_0

    .line 2611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
