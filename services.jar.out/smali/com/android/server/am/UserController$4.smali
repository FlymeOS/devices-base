.class Lcom/android/server/am/UserController$4;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$userId"    # I
    .param p3, "val$uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$4;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/UserController$4;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$4$1;

    iget v2, p0, Lcom/android/server/am/UserController$4;->val$userId:I

    iget-object v3, p0, Lcom/android/server/am/UserController$4;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/am/UserController$4$1;-><init>(Lcom/android/server/am/UserController$4;ILcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void
.end method
