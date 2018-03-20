.class Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenUnLockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get7(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get4()Z

    move-result v0

    .line 363
    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 362
    :cond_0
    return-void
.end method
