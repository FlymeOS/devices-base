.class Lcom/android/server/pm/UserManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 345
    const-string/jumbo v0, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 347
    .local v1, "target":Landroid/content/IntentSender;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 348
    .local v7, "userHandle":I
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7, v3}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZ)V

    .line 349
    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "target":Landroid/content/IntentSender;
    .end local v7    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    .line 352
    .restart local v1    # "target":Landroid/content/IntentSender;
    .restart local v7    # "userHandle":I
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method
