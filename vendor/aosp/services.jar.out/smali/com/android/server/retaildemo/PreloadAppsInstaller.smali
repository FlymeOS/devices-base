.class Lcom/android/server/retaildemo/PreloadAppsInstaller;
.super Ljava/lang/Object;
.source "PreloadAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final PRELOAD_APK_EXT:Ljava/lang/String; = ".apk.preload"

.field private static final SYSTEM_SERVER_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mApkToPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final preloadsAppsDirectory:Ljava/io/File;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/retaildemo/PreloadAppsInstaller;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mApkToPackageMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/retaildemo/PreloadAppsInstaller;Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "counter"    # Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->installExistingPackage(Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->DEBUG:Z

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsAppsDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Ljava/io/File;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p3, "preloadsAppsDirectory"    # Ljava/io/File;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mApkToPackageMap:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->preloadsAppsDirectory:Ljava/io/File;

    .line 61
    return-void
.end method

.method private installExistingPackage(Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "counter"    # Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    .prologue
    .line 102
    sget-boolean v1, Lcom/android/server/retaildemo/PreloadAppsInstaller;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installExistingPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p3}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->appInstallFinished()V

    .line 101
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 110
    invoke-virtual {p3}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->appInstallFinished()V

    .line 109
    throw v1
.end method

.method private installPackage(Ljava/io/File;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "userId"    # I
    .param p3, "counter"    # Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "apkName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;

    invoke-direct {v2, p0, p2, v6, p3}, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;-><init>(Lcom/android/server/retaildemo/PreloadAppsInstaller;ILjava/lang/String;Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V

    invoke-virtual {v2}, Lcom/android/server/retaildemo/PreloadAppsInstaller$1;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v2

    .line 145
    const-string/jumbo v4, "android"

    const/4 v3, 0x0

    move v5, p2

    .line 120
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 115
    return-void
.end method


# virtual methods
.method installApps(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 69
    iget-object v8, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->preloadsAppsDirectory:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 70
    .local v5, "files":[Ljava/io/File;
    new-instance v1, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;

    iget-object v8, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8, p1}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;-><init>(Landroid/content/Context;I)V

    .line 71
    .local v1, "counter":Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 72
    invoke-virtual {v1, v7}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->setExpectedAppsCount(I)V

    .line 73
    return-void

    .line 75
    :cond_0
    const/4 v3, 0x0

    .line 76
    .local v3, "expectedCount":I
    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v4, v5, v7

    .line 77
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "apkName":Ljava/lang/String;
    const-string/jumbo v9, ".apk.preload"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 79
    iget-object v9, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller;->mApkToPackageMap:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    :try_start_0
    invoke-direct {p0, v6, p1, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->installExistingPackage(Ljava/lang/String;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    .restart local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install existing package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0, v4, p1, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->installPackage(Ljava/io/File;ILcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v2

    .line 92
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/retaildemo/PreloadAppsInstaller;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to install package from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->setExpectedAppsCount(I)V

    .line 68
    return-void
.end method
