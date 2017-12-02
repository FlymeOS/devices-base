.class Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field mIdle:Z

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/IdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/IdleController;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/job/controllers/IdleController;

    .prologue
    const/4 v3, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 113
    iget-object v1, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "android"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 117
    const/high16 v2, 0x40000000    # 2.0f

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 122
    iput-boolean v3, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    .line 112
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string/jumbo v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 151
    if-eqz v0, :cond_2

    .line 156
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    .line 158
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_1

    .line 161
    iput-boolean v4, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 162
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    if-eqz v0, :cond_4

    .line 169
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 170
    .local v8, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-static {v0}, Lcom/android/server/job/controllers/IdleController;->-get1(Lcom/android/server/job/controllers/IdleController;)J

    move-result-wide v0

    add-long v2, v8, v0

    .line 175
    .local v2, "when":J
    iput-boolean v4, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    .line 176
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 177
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-static {v1}, Lcom/android/server/job/controllers/IdleController;->-get0(Lcom/android/server/job/controllers/IdleController;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    .line 176
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 178
    .end local v2    # "when":J
    .end local v8    # "nowElapsed":J
    :cond_4
    const-string/jumbo v0, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 184
    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 185
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-object v1, v1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method
