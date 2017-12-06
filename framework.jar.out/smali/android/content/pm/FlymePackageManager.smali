.class public Landroid/content/pm/FlymePackageManager;
.super Ljava/lang/Object;
.source "FlymePackageManager.java"


# static fields
.field private static volatile mFpm:Landroid/content/pm/FlymePackageManager;

.field private static mService:Landroid/content/pm/IFlymePackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IFlymePackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;

    move-result-object v1

    sput-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-nez v0, :cond_3

    .line 38
    const-class v1, Landroid/content/pm/FlymePackageManager;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Landroid/content/pm/FlymePackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/FlymePackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 42
    :cond_1
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_2

    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 47
    :cond_3
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v4, "sB":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "/data/media/"

    .line 53
    .local v1, "locBegin":Ljava/lang/String;
    const-string/jumbo v3, "/storage/emulated/"

    .line 54
    .local v3, "locTmp":Ljava/lang/String;
    const-string/jumbo v5, "/data/media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    if-eqz p2, :cond_0

    const-string/jumbo v5, "/storage/emulated/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const-string/jumbo v5, "/storage/emulated/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "locEnd":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :try_start_0
    sget-object v5, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    return v5

    .line 63
    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v5, "/storage/emulated/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const-string/jumbo v5, "/storage/emulated/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2    # "locEnd":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :try_start_1
    sget-object v5, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    return v5

    .line 68
    :catch_0
    move-exception v0

    .line 72
    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 60
    .restart local v2    # "locEnd":Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public changeInterceptPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 135
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeInterceptPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public changeMayForbitPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 189
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeMayForbitPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getInterceptPackage()Ljava/util/List;
    .locals 2
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
    .line 120
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInterceptPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInternalAppList()Ljava/util/List;
    .locals 2
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
    .line 102
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInternalAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMayForbitPackage()Ljava/util/List;
    .locals 2
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
    .line 172
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getMayForbitPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->getPackageActivateState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 93
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProtectionState()Z
    .locals 2

    .prologue
    .line 155
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getProtectionState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->resetVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setInterceptPackage(Ljava/util/List;)V
    .locals 2
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
    .line 128
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setInterceptPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setKeyGuardPackage(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "intercept"    # Z
    .param p3, "level"    # I

    .prologue
    .line 199
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IFlymePackageManager;->setKeyGuardPackage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMayForbitPackage(Ljava/util/List;)V
    .locals 2
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
    .line 181
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setMayForbitPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setProtectionState(ZLandroid/os/Binder;)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "binder"    # Landroid/os/Binder;

    .prologue
    .line 164
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->setProtectionState(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public syncPackageState()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->syncPackageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->updatePermissions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
