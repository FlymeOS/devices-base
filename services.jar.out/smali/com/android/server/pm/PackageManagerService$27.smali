.class Lcom/android/server/pm/PackageManagerService$27;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/pm/PackageManagerService$PackageFreezer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$installedLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "val$freezer"    # Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .param p4, "val$moveId"    # I

    .prologue
    .line 20404
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20416
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20417
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 20419
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    .line 20420
    .local v0, "status":I
    sparse-switch v0, :sswitch_data_0

    .line 20430
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    .line 20431
    const/4 v3, -0x6

    .line 20430
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 20412
    :goto_0
    return-void

    .line 20422
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    .line 20423
    const/16 v3, -0x64

    .line 20422
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_0

    .line 20426
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    .line 20427
    const/4 v3, -0x1

    .line 20426
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_0

    .line 20420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20407
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
