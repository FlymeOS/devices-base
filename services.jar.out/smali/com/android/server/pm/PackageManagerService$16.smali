.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "val$userId"    # I
    .param p4, "val$packageName"    # Ljava/lang/String;
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 16868
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 16870
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 16871
    const/4 v1, 0x3

    .line 16875
    .local v1, "flags":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v6, 0x103

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 16876
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v6, 0x203

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 16878
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 16879
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_0

    .line 16881
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16869
    :cond_0
    :goto_0
    return-void

    .line 16870
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 16882
    :catch_0
    move-exception v0

    .line 16883
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
