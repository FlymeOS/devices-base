.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field dataRemoved:Z

.field isRemovedPackageSystemUpdate:Z

.field isUpdate:Z

.field origUsers:[I

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 15814
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15816
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 15817
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 15819
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 15820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 15825
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 15814
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .locals 8
    .param p1, "killApp"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 15877
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 15878
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15879
    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15880
    const-string/jumbo v2, "android.intent.extra.DONT_KILL_APP"

    if-eqz p1, :cond_5

    move v0, v4

    :goto_1
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15881
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_1

    .line 15882
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15884
    :cond_1
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15885
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 15886
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 15887
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v6, v5

    .line 15886
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 15888
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_6

    .line 15893
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_3

    .line 15894
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    .line 15895
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v2, v5

    move-object v6, v5

    .line 15894
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 15876
    :cond_3
    return-void

    .line 15878
    :cond_4
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 15880
    goto :goto_1

    .line 15889
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 15890
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    move-object v6, v5

    .line 15889
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto :goto_2
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 15865
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 15866
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.UID"

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15867
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15868
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 15870
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 15872
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 15873
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object v8, v5

    move-object v9, v5

    move v10, v4

    move-object v12, v5

    move-object v13, v5

    .line 15872
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 15864
    return-void

    .line 15866
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0
.end method


# virtual methods
.method sendPackageRemovedBroadcasts(Z)V
    .locals 4
    .param p1, "killApp"    # Z

    .prologue
    .line 15830
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 15831
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 15832
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 15833
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15834
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 15832
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15831
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 15829
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .locals 11

    .prologue
    .line 15853
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    .line 15854
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 15855
    .local v2, "packageCount":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 15856
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 15857
    .local v1, "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v4, 0x0

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_1

    aget v3, v5, v4

    .line 15858
    .local v3, "userId":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 15859
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 15858
    const/4 v10, 0x1

    invoke-static {v7, v8, v10, v9, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZII)V

    .line 15857
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 15854
    .end local v0    # "i":I
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v2    # "packageCount":I
    .end local v3    # "userId":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "packageCount":I
    goto :goto_0

    .line 15855
    .restart local v0    # "i":I
    .restart local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15852
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_2
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .locals 4

    .prologue
    .line 15839
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_2

    .line 15840
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 15841
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1

    .line 15842
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 15843
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 15844
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15845
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_0

    .line 15846
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 15843
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15842
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 15838
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method
