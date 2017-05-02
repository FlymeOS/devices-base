.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    sget-object v2, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    new-instance v1, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;

    const-string/jumbo v2, "Reboot"

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$1;-><init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;Ljava/lang/String;)V

    .line 374
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 379
    .end local v1    # "thr":Ljava/lang/Thread;
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get5(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-get6(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v2

    .line 381
    const-wide/16 v4, 0x320

    .line 380
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    :cond_0
    return-void

    .line 376
    :cond_1
    invoke-static {}, Lcom/android/server/policy/MzGlobalActions;->-get1()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 377
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method
