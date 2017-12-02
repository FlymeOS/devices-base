.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2660
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2661
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2662
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2659
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2668
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2672
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2667
    :cond_0
    :goto_0
    return-void

    .line 2673
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2678
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2679
    .local v1, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 2680
    .local v0, "gmtOffset":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v3, 0xea60

    div-int v3, v0, v3

    neg-int v3, v3

    invoke-static {v2, v4, v5, v3}, Lcom/android/server/AlarmManagerService;->-wrap3(Lcom/android/server/AlarmManagerService;JI)I

    .line 2681
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 19

    .prologue
    .line 2700
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 2701
    .local v18, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2702
    const/16 v2, 0xb

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2703
    const/16 v2, 0xc

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2704
    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2705
    const/16 v2, 0xe

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 2706
    const/4 v2, 0x5

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 2708
    const/4 v14, 0x0

    .line 2709
    .local v14, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v3, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 2711
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v16

    const-string/jumbo v17, "android"

    .line 2709
    const/4 v3, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2710
    const/4 v13, 0x1

    const/4 v15, 0x0

    .line 2709
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2699
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 24

    .prologue
    .line 2686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2687
    .local v18, "currentTime":J
    const-wide/32 v2, 0xea60

    div-long v2, v18, v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    mul-long v20, v4, v2

    .line 2691
    .local v20, "nextTime":J
    sub-long v22, v20, v18

    .line 2693
    .local v22, "tickEventDelay":J
    const/4 v14, 0x0

    .line 2694
    .local v14, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v4, v4, v22

    const-wide/16 v6, 0x0

    .line 2695
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v3, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 2696
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v16

    const-string/jumbo v17, "android"

    .line 2694
    const/4 v3, 0x3

    .line 2695
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 2696
    const/4 v15, 0x0

    .line 2694
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2685
    return-void
.end method
