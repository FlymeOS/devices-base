.class Lcom/android/server/am/UserController$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;
    .param p2, "val$userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/server/am/UserController$2;->this$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$2;->val$userInfo:Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/am/UserController$2;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-wrap0(Lcom/android/server/am/UserController;)Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController$2;->val$userInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->makeInitialized(I)V

    .line 413
    return-void
.end method
