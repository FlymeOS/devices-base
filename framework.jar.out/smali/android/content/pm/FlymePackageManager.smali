.class public Landroid/content/pm/FlymePackageManager;
.super Ljava/lang/Object;
.source "FlymePackageManager.java"


# static fields
.field private static volatile mFpm:Landroid/content/pm/FlymePackageManager;

.field private static mService:Landroid/content/pm/IFlymePackageManager;


# instance fields
.field private installResult:I

.field private mContext:Landroid/content/Context;

.field private final mLockobjectInstall:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/content/pm/FlymePackageManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/content/pm/FlymePackageManager;I)I
    .locals 0

    iput p1, p0, Landroid/content/pm/FlymePackageManager;->installResult:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/FlymePackageManager;->installResult:I

    .line 41
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IFlymePackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;

    move-result-object v1

    sput-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    .line 43
    iput-object p1, p0, Landroid/content/pm/FlymePackageManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-nez v0, :cond_3

    .line 48
    const-class v1, Landroid/content/pm/FlymePackageManager;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Landroid/content/pm/FlymePackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/FlymePackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 52
    :cond_1
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_2

    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 57
    :cond_3
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v4, "sB":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "/data/media/"

    .line 63
    .local v1, "locBegin":Ljava/lang/String;
    const-string/jumbo v3, "/storage/emulated/"

    .line 64
    .local v3, "locTmp":Ljava/lang/String;
    const/4 v6, 0x0

    .line 65
    .local v6, "transferTarget":Z
    if-eqz p2, :cond_0

    const-string/jumbo v7, "/storage/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 66
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v6

    .line 68
    .end local v6    # "transferTarget":Z
    :cond_0
    const/4 v5, 0x0

    .line 69
    .local v5, "transferSource":Z
    if-eqz p1, :cond_1

    const-string/jumbo v7, "/storage/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v5

    .line 72
    .end local v5    # "transferSource":Z
    :cond_1
    const-string/jumbo v7, "/data/media/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    if-eqz p2, :cond_4

    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v6, :cond_4

    .line 74
    :cond_2
    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "locEnd":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    if-eqz v6, :cond_3

    .line 78
    :try_start_0
    sget-object v7, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v7, p1, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    return v7

    .line 80
    :cond_3
    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 81
    sget-object v7, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    return v7

    .line 86
    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_7

    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v5, :cond_7

    .line 87
    :cond_5
    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "locEnd":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    if-eqz v5, :cond_6

    .line 91
    :try_start_1
    sget-object v7, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v7, p1, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    return v7

    .line 93
    :cond_6
    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 94
    sget-object v7, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    return v7

    .line 96
    :catch_0
    move-exception v0

    .line 100
    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_7
    :goto_0
    const/4 v7, 0x0

    return v7

    .line 83
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
    .line 174
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeInterceptPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public changeMayForbitPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 228
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeMayForbitPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 232
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
    .line 159
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInterceptPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 163
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
    .line 141
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInternalAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 145
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
    .line 211
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getMayForbitPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->getPackageActivateState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 132
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProtectionState()Z
    .locals 2

    .prologue
    .line 194
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getProtectionState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 255
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IFlymePackageManager;->getSystemAppPath(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSystemAppRecord()Ljava/util/List;
    .locals 3
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
    .line 246
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IFlymePackageManager;->getSystemAppRecord(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getkeyguarActivitylist()Ljava/util/List;
    .locals 2
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
    .line 334
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getkeyguarActivitylist()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public installPackage(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->isMzApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 280
    const/4 v6, -0x1

    return v6

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "mayInstalled":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 284
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "installApk":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 286
    const/4 v6, -0x2

    return v6

    .line 288
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 289
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/pm/FlymePackageManager$1;

    invoke-direct {v3, p0}, Landroid/content/pm/FlymePackageManager$1;-><init>(Landroid/content/pm/FlymePackageManager;)V

    .line 301
    .local v3, "packageInstallObserver":Landroid/app/PackageInstallObserver;
    iget-object v7, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    monitor-enter v7

    .line 303
    :try_start_0
    iget-object v6, p0, Landroid/content/pm/FlymePackageManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 304
    iget-object v6, p0, Landroid/content/pm/FlymePackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 305
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "FlymePackageManager"

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    .line 306
    iget-object v6, p0, Landroid/content/pm/FlymePackageManager;->mLockobjectInstall:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    monitor-exit v7

    .line 313
    .end local v1    # "installApk":Ljava/io/File;
    .end local v3    # "packageInstallObserver":Landroid/app/PackageInstallObserver;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    iget v6, p0, Landroid/content/pm/FlymePackageManager;->installResult:I

    return v6

    .line 308
    .restart local v1    # "installApk":Ljava/io/File;
    .restart local v3    # "packageInstallObserver":Landroid/app/PackageInstallObserver;
    .restart local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public isMzApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->isMzApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->resetVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 125
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
    .line 167
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setInterceptPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 168
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
    .line 238
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IFlymePackageManager;->setKeyGuardPackage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 239
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
    .line 220
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setMayForbitPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 221
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
    .line 203
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->setProtectionState(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setkeyguardActivitylist(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shouldClear"    # Z

    .prologue
    .line 323
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->setkeyguardActivitylist(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public syncPackageState()V
    .locals 2

    .prologue
    .line 184
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->syncPackageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateMultiOpenAppData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->updateMultiOpenAppData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->updatePermissions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
