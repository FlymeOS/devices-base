.class Lcom/android/server/pm/UserManagerService$6$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$6;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$6;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/UserManagerService$6;
    .param p2, "val$userHandle"    # I

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6$1;->this$1:Lcom/android/server/pm/UserManagerService$6;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$6$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2546
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2547
    iget v1, p0, Lcom/android/server/pm/UserManagerService$6$1;->val$userHandle:I

    .line 2546
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    .line 2548
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6$1;->this$1:Lcom/android/server/pm/UserManagerService$6;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$6$1;->val$userHandle:I

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->-wrap5(Lcom/android/server/pm/UserManagerService;I)V

    .line 2544
    return-void
.end method
