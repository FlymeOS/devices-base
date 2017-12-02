.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


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
    .line 326
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 330
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 333
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v4

    .line 334
    :try_start_0
    const-string/jumbo v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 335
    .local v1, "plugged":I
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 328
    .end local v1    # "plugged":I
    :cond_3
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 342
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .local v2, "ssp":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 343
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_0

    .line 333
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
