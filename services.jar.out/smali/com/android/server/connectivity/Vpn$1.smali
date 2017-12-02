.class Lcom/android/server/connectivity/Vpn$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 176
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 177
    return-void

    .line 175
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 180
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v5

    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v5

    .line 183
    return-void

    .line 186
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "Vpn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for always-on package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 188
    const-string/jumbo v7, " in user "

    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 188
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-get8(Lcom/android/server/connectivity/Vpn;)I

    move-result v7

    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v5

    .line 173
    return-void

    .line 190
    :cond_4
    :try_start_2
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    const-string/jumbo v4, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    .line 196
    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 198
    .local v2, "isPackageRemoved":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 199
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/server/connectivity/Vpn;->-wrap0(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 180
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "isPackageRemoved":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 196
    .restart local v0    # "action":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    goto :goto_2
.end method
