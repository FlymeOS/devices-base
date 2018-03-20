.class public Lcom/android/server/pm/FlymePackageManagerService;
.super Landroid/content/pm/IFlymePackageManager$Stub;
.source "FlymePackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FlymePackageManagerService$Death;
    }
.end annotation


# instance fields
.field private keyguardActivitylist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mInstaller:Lcom/android/server/pm/Installer;

.field private mInterceptPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPms:Lcom/android/server/pm/PackageManagerService;

.field mayForbitPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field privacyBlock:Z

.field private recordKeyguardPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startFromInteractive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/content/pm/IFlymePackageManager$Stub;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 38
    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 49
    iput-object p3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 46
    return-void
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 55
    const-string/jumbo v3, "FPMS"

    const-string/jumbo v4, "Calling package is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v6

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2, v6, v6}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 59
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/Installer;->copyDataFiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v3, 0x1

    return v3

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v3, "FPMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "backupData exception happen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection$InstallerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v6

    .line 68
    .end local v0    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    :cond_1
    const-string/jumbo v3, "FPMS"

    const-string/jumbo v4, "Calling package isn\'t System App"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v6
.end method

.method public changeInterceptPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 104
    if-eqz p2, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public changeMayForbitPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 168
    if-eqz p2, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public changeMayInterceptPackage(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 115
    if-eqz p2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInterceptPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    return-object v0
.end method

.method public getInternalAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getInternalAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyGuardPackage(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMayForbitPackage()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "FlymePackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Try to intercept package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    return-object v2
.end method

.method public getMayInterceptPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    return-object v0
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageActivateState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProtectionState()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    return v0
.end method

.method public getSystemAppPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userid"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemAppRecord(I)Ljava/util/List;
    .locals 1
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "finalresult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getkeyguarActivitylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    return-object v0
.end method

.method public getkeyguardBlackForSystem()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    return-object v0
.end method

.method public isMzApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiltList(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->resetVersion(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setInterceptPackage(Ljava/util/List;)V
    .locals 0
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
    .line 101
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setKeyGuardPackage(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "intercept"    # Z
    .param p3, "level"    # I

    .prologue
    .line 202
    if-eqz p1, :cond_3

    .line 203
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/FlymePackageManagerService;->changeInterceptPackage(Ljava/lang/String;Z)Z

    .line 206
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 207
    if-eqz p2, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 215
    const-string/jumbo v0, "FlymePackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to clear package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMayForbitPackage(Ljava/util/List;)V
    .locals 3
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
    .line 159
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    .line 158
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    const-string/jumbo v0, "FlymePackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Try to clear package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProtectionState(ZLandroid/os/IBinder;)V
    .locals 4
    .param p1, "state"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 139
    if-eqz p2, :cond_0

    .line 141
    :try_start_0
    new-instance v1, Lcom/android/server/pm/FlymePackageManagerService$Death;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/FlymePackageManagerService$Death;-><init>(Lcom/android/server/pm/FlymePackageManagerService;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 148
    const-string/jumbo v1, "FlymePackageManage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 144
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setkeyguardActivitylist(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "componment"    # Landroid/content/ComponentName;
    .param p2, "shouldClear"    # Z

    .prologue
    .line 265
    return-void
.end method

.method public syncPackageState()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->initFlymeDefaultOpService(Lcom/android/server/pm/PackageManagerService;)V

    .line 129
    return-void
.end method

.method public updateMultiOpenAppData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sourceDir"    # Ljava/lang/String;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->updatePermissions(Ljava/lang/String;)V

    .line 76
    return-void
.end method
