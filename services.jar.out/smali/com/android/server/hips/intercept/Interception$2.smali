.class final Lcom/android/server/hips/intercept/Interception$2;
.super Ljava/lang/Object;
.source "Interception.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/Interception;->updateInterceptionItem(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/server/hips/intercept/Interception$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 296
    move-object v0, p0

    .line 297
    .local v0, "conn":Landroid/content/ServiceConnection;
    const/4 v3, 0x0

    invoke-static {v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 298
    .local v2, "message":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 299
    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lcom/android/server/hips/intercept/Interception$2$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/hips/intercept/Interception$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/android/server/hips/intercept/Interception$2$1;-><init>(Lcom/android/server/hips/intercept/Interception$2;Landroid/os/Looper;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 374
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Interception"

    .line 377
    const-string/jumbo v4, "updateInterceptionItem, unable to send message!"

    .line 376
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 382
    return-void
.end method
