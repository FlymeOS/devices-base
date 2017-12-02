.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;II[ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$deleteAllUsers"    # Z
    .param p3, "val$packageName"    # Ljava/lang/String;
    .param p4, "val$userId"    # I
    .param p5, "val$deleteFlags"    # I
    .param p6, "val$users"    # [I
    .param p7, "val$observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .prologue
    .line 15609
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 15611
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v5, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15613
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    if-nez v5, :cond_0

    .line 15614
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v2

    .line 15638
    .local v2, "returnCode":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v2, v7}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15610
    :goto_1
    return-void

    .line 15616
    .end local v2    # "returnCode":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    .line 15618
    .local v0, "blockUninstallUserIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15619
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v2

    .restart local v2    # "returnCode":I
    goto :goto_0

    .line 15622
    .end local v2    # "returnCode":I
    :cond_1
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    and-int/lit8 v3, v5, -0x3

    .line 15623
    .local v3, "userFlags":I
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    const/4 v5, 0x0

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_3

    aget v4, v6, v5

    .line 15624
    .local v4, "userId":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 15625
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    invoke-static {v8, v9, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v2

    .line 15626
    .restart local v2    # "returnCode":I
    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    .line 15627
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package delete failed for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 15628
    const-string/jumbo v10, ", returnCode "

    .line 15627
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15623
    .end local v2    # "returnCode":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 15634
    .end local v4    # "userId":I
    :cond_3
    const/4 v2, -0x4

    .restart local v2    # "returnCode":I
    goto :goto_0

    .line 15639
    .end local v0    # "blockUninstallUserIds":[I
    .end local v3    # "userFlags":I
    :catch_0
    move-exception v1

    .line 15640
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v6, "Observer no longer exists."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
