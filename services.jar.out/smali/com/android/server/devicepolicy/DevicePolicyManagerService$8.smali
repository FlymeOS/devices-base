.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceNoLock(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "val$userHandle"    # I

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4821
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4822
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    if-ne v3, v4, :cond_0

    .line 4823
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 4826
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    invoke-static {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v1

    .line 4827
    .local v1, "isManagedProfile":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4828
    const-string/jumbo v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t remove user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$userHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :cond_1
    :goto_0
    return-void

    .line 4829
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "isManagedProfile":Z
    :cond_2
    if-eqz v1, :cond_1

    .line 4830
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap19(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4832
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "isManagedProfile":Z
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
