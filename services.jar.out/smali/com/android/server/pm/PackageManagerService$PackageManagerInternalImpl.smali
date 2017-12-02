.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 20992
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 21114
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 21120
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 21145
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 21045
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21046
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings;->setDefaultDialerPackageNameLPw(Ljava/lang/String;I)Z

    .line 21047
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21044
    return-void

    .line 21045
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 21054
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21055
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21053
    return-void

    .line 21054
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 21037
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21038
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21036
    return-void

    .line 21037
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 21133
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 21090
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 21092
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mPermissionReviewRequired:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-eqz v2, :cond_1

    .line 21096
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21097
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    monitor-exit v3

    .line 21098
    return v5

    .end local v0    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    monitor-exit v3

    .line 21093
    return v5

    .line 21102
    .restart local v0    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_3

    monitor-exit v3

    .line 21103
    return v5

    .line 21107
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    .line 21108
    .local v1, "permissionsState":Lcom/android/server/pm/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PermissionsState;->isPermissionReviewRequired(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 21090
    .end local v0    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21127
    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 21126
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 21016
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21017
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21015
    return-void

    .line 21016
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21062
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21063
    const/4 v4, 0x0

    .line 21064
    .local v4, "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 21065
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 21066
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 21067
    .local v2, "packagesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v5, v4

    .end local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-ge v0, v2, :cond_1

    .line 21068
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21069
    .local v1, "oldPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 21067
    .end local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v5, v4

    .end local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 21072
    :cond_0
    if-nez v5, :cond_4

    .line 21073
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21075
    .end local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    :try_start_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 21064
    .end local v0    # "i":I
    .end local v1    # "oldPackage":Ljava/lang/String;
    .end local v2    # "packagesCount":I
    .end local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .restart local v0    # "i":I
    .restart local v2    # "packagesCount":I
    .restart local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v4, v5

    .line 21078
    .end local v0    # "i":I
    .end local v2    # "packagesCount":I
    .end local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v8}, Lcom/android/server/pm/PackageManagerService;->-set1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Ljava/util/List;

    .line 21079
    if-eqz v4, :cond_3

    .line 21080
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 21081
    .local v3, "removedCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v3, :cond_3

    .line 21082
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap23(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21081
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local v3    # "removedCount":I
    :cond_3
    monitor-exit v7

    .line 21061
    return-void

    .line 21064
    .restart local v0    # "i":I
    .restart local v2    # "packagesCount":I
    .restart local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .end local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "oldPackage":Ljava/lang/String;
    .restart local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object v4, v5

    .end local v5    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "removedFromList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 20995
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 20996
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 20994
    return-void

    .line 20995
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 21023
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21024
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21022
    return-void

    .line 21023
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 21009
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21010
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21008
    return-void

    .line 21009
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 21030
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21031
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21029
    return-void

    .line 21030
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 21002
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21003
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 21001
    return-void

    .line 21002
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wasPackageEverLaunched(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 21138
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 21139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/Settings;->wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 21138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
