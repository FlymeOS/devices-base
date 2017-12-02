.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "val$userId"    # I
    .param p3, "val$newRestrictionsFinal"    # Landroid/os/Bundle;
    .param p4, "val$prevRestrictionsFinal"    # Landroid/os/Bundle;

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 1385
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1389
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1390
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 1391
    .local v1, "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->-get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1394
    aget-object v2, v1, v0

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    .line 1395
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 1394
    invoke-interface {v2, v3, v4, v5}, Landroid/os/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1389
    .end local v0    # "i":I
    .end local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1384
    .restart local v0    # "i":I
    .restart local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :cond_0
    return-void
.end method
