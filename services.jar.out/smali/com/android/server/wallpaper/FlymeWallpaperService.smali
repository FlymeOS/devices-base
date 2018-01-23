.class public Lcom/android/server/wallpaper/FlymeWallpaperService;
.super Lmeizu/wallpaper/IFlymeWallpaper$Stub;
.source "FlymeWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field static final LOCK_WALLPAPER:Ljava/lang/String; = "wallpaper_lock_orig"

.field static final OLD_LOCK_WALLPAPER:Ljava/lang/String; = "lock_wallpaper"

.field public static final SMART_WALLPAPER_TARGET:Ljava/lang/String; = "smart_wallpaper_target"

.field public static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_IMAGE_KEY_LOCK:Ljava/lang/String; = "/data/data/com.android.settings/files/lock_wallpaper"

.field public static final WALLPAPER_INFO_KEY_LOCK:Ljava/lang/String; = "/data/system/lock_wallpaper_info.xml"

.field static final WALLPAPER_LOCK_INFO:Ljava/lang/String; = "lock_wallpaper_info.xml"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    .line 53
    const-string/jumbo v0, "FlymeWallpaperService"

    sput-object v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wms"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 57
    invoke-direct {p0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 59
    iput-object p1, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, ", must have permission "

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    return-void
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 344
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "lock_wallpaper_info.xml"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOldLock()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 328
    new-instance v3, Ljava/io/File;

    .line 329
    const-string/jumbo v4, "/data/data/com.android.settings/files/lock_wallpaper"

    .line 328
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/system/lock_wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    .line 333
    const-string/jumbo v5, "wallpaper_lock_orig"

    .line 332
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 334
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 336
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    .line 338
    const-string/jumbo v5, "lock_wallpaper_info.xml"

    .line 337
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 327
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 200
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/FlymeWallpaperService;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 201
    .local v2, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 204
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 206
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v6, "utf-8"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 207
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 209
    const-string/jumbo v6, "lwp"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const-string/jumbo v6, "width"

    .line 211
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v7, v7, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    const-string/jumbo v6, "height"

    .line 213
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v7, v7, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 212
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const-string/jumbo v6, "name"

    .line 215
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v7, v7, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 214
    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    const-string/jumbo v6, "lwp"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 219
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 220
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 198
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 221
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 223
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 224
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :cond_0
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_2

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private updateLockWallpaperIfUpgradeFromOldSystem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 320
    new-instance v1, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "lock_wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .local v1, "oldSystemWallpaper":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    new-instance v0, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_lock_orig"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v0, "newSystemWallpaper":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 319
    .end local v0    # "newSystemWallpaper":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLockWallpaper(Lmeizu/wallpaper/IFlymeWallpaperCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Lmeizu/wallpaper/IFlymeWallpaperCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 80
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetSyncObject()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 82
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 83
    .local v4, "wallpaperUserId":I
    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_1

    .line 84
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetCurrentUserId()I

    move-result v4

    .line 88
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 92
    :try_start_1
    const-string/jumbo v5, "width"

    .line 93
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v7, v7, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 92
    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v5, "height"

    .line 95
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v7, v7, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 94
    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    :cond_0
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v5, v5, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v5

    .line 99
    const-string/jumbo v7, "wallpaper_lock_orig"

    .line 98
    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v6

    .line 102
    return-object v8

    .line 86
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    :try_start_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 104
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v5, 0x10000000

    :try_start_3
    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 105
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v5, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error getting lock_wallpaper"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 109
    return-object v8

    .line 80
    .end local v0    # "callingUid":I
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public loadSettingsOfLockWallpaperLocked(I)V
    .locals 24
    .param p1, "userId"    # I

    .prologue
    .line 234
    sget-boolean v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    if-eqz v21, :cond_0

    .line 235
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "loadSettingsOflockWallpaperLocked"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v12

    .line 237
    .local v12, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v14, 0x0

    .line 238
    .local v14, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v11

    .line 239
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;->migrateFromOldLock()V

    .line 244
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;->updateLockWallpaperIfUpgradeFromOldSystem()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 247
    .local v19, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v19, :cond_2

    .line 248
    new-instance v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    .restart local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_2
    const/16 v16, 0x0

    .line 254
    .local v16, "success":Z
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v14    # "stream":Ljava/io/FileInputStream;
    move-result-object v13

    .line 256
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 260
    :cond_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 261
    .local v18, "type":I
    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 262
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v21, "lwp"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 264
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    .line 266
    const-string/jumbo v22, "width"

    .line 265
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 264
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 267
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    .line 269
    const-string/jumbo v22, "height"

    .line 268
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 267
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 270
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    .line 271
    const-string/jumbo v22, "name"

    const/16 v23, 0x0

    .line 270
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 273
    sget-boolean v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    if-eqz v21, :cond_4

    .line 274
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    .line 275
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mWidthOfLockWallpaper:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 276
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    move/from16 v23, v0

    .line 275
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 274
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    .line 278
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mHeightOfLockWallpaper:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 279
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    move/from16 v23, v0

    .line 278
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 277
    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mNameOfLockWallpaper:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 281
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 280
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a

    .line 285
    .end local v17    # "tag":Ljava/lang/String;
    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 286
    const/16 v16, 0x1

    move-object v14, v15

    .line 299
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "type":I
    :goto_0
    if-eqz v14, :cond_5

    .line 300
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 305
    :cond_5
    :goto_1
    if-nez v16, :cond_6

    .line 306
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 307
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 308
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 311
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 312
    .local v20, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 313
    .local v4, "d":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 314
    .local v5, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 316
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 233
    return-void

    .line 295
    .end local v4    # "d":Landroid/view/Display;
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v20    # "wm":Landroid/view/WindowManager;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 296
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 294
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_3
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 292
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 289
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 290
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/NumberFormatException;
    :goto_5
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    .line 288
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/NullPointerException;
    :goto_6
    sget-object v21, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "failed parsing "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 287
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/lang/NullPointerException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v14, "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 289
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v9

    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 291
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    .restart local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 293
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 295
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public notifyLockWallpaperChangeLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 175
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 177
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 179
    :try_start_0
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lmeizu/wallpaper/IFlymeWallpaperCallback;

    invoke-interface {v4}, Lmeizu/wallpaper/IFlymeWallpaperCallback;->onLockWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v4, v4, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 187
    new-instance v2, Landroid/content/Intent;

    .line 188
    const-string/jumbo v4, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    .line 187
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void

    .line 181
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onRemoveUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 357
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 358
    return-void

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetSyncObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 360
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 361
    const-string/jumbo v4, "wallpaper_lock_orig"

    .line 360
    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 363
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 364
    const-string/jumbo v4, "lock_wallpaper_info.xml"

    .line 363
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 356
    return-void

    .line 359
    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-boolean v5, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 115
    sget-object v5, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setLockWallpaper"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 117
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 119
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_1

    .line 120
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Wallpaper not yet initialized for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    :cond_1
    const-string/jumbo v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/FlymeWallpaperService;->checkPermission(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetSyncObject()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 128
    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/FlymeWallpaperService;->updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 130
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_2

    .line 132
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/FlymeWallpaperService;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 133
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "set_wallpaper_simultaneously"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_2
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 135
    return-object v2

    .line 136
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v5

    .line 137
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .end local v0    # "ident":J
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 373
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 372
    :try_start_0
    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 374
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    .line 377
    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 376
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 379
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "smart_wallpaper_target"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v3, "file":Ljava/io/File;
    const/high16 v4, 0x38000000

    .line 380
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 382
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 383
    const/4 v4, 0x0

    return-object v4

    .line 385
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error setting wallpaper"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    return-object v2
.end method

.method updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v8, 0x0

    .line 150
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .line 152
    :cond_0
    :try_start_0
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v4}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 153
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 157
    const/16 v5, 0x1f9

    .line 158
    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 155
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 160
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "wallpaper_lock_orig"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v3, "file":Ljava/io/File;
    const/high16 v4, 0x3c000000    # 0.0078125f

    .line 161
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 163
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    return-object v8

    .line 166
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-object v2

    .line 168
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error setting wallpaper"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    return-object v8
.end method
