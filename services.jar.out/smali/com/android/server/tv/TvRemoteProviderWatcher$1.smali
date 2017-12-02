.class Lcom/android/server/tv/TvRemoteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "TvRemoteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 202
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderWatcher;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v0, "TvRemoteProvWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received package manager broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->-get1(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderWatcher;->-get2(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
