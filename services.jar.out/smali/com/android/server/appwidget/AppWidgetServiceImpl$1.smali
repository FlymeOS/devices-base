.class Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/16 v4, -0x2710

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const-string/jumbo v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received broadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 159
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 169
    if-eqz v3, :cond_3

    .line 171
    :cond_2
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 174
    :cond_3
    const-string/jumbo v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    const-string/jumbo v3, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "packages":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v3, v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap20(Lcom/android/server/appwidget/AppWidgetServiceImpl;[Ljava/lang/String;ZI)V

    goto :goto_0

    .line 177
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    const-string/jumbo v3, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "packages":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap20(Lcom/android/server/appwidget/AppWidgetServiceImpl;[Ljava/lang/String;ZI)V

    goto :goto_0

    .line 181
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap11(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    goto :goto_0
.end method
