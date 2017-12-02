.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_HEIGHT_RATIO:D = 1.35

.field private static final MIN_HEIGHT_RATIO:D = 0.0

.field private static final REJECT_OUTSIZED_RESTORE:Z = false

.field private static final STAGE_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field public static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field public static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"

.field public static final WALLPAPER_ORIG_IMAGE:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mDesiredMinHeight:D

.field mDesiredMinWidth:D

.field mFiles:[Ljava/lang/String;

.field mKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 62
    const-string/jumbo v2, "wallpaper"

    .line 61
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 60
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "wallpaper_orig"

    .line 64
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 63
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_ORIG_IMAGE:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 68
    const-string/jumbo v2, "wallpaper_info.xml"

    .line 67
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 66
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "wallpaper-tmp"

    .line 80
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;
    .param p3, "keys"    # [Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    .line 101
    iput-object p3, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    .line 104
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 106
    .local v2, "wm":Landroid/view/WindowManager;
    const-string/jumbo v4, "wallpaper"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 107
    .local v3, "wpm":Landroid/app/WallpaperManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 108
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 109
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 110
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinWidth:D

    .line 111
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 112
    iget-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 113
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    iput-wide v4, p0, Landroid/app/backup/WallpaperBackupHelper;->mDesiredMinHeight:D

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreFinished()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string/jumbo v1, "WallpaperBackupHelper"

    const-string/jumbo v2, "Applying restored wallpaper image."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_ORIG_IMAGE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    :cond_0
    return-void
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 129
    iget-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Landroid/app/backup/FileBackupHelperBase;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const-string/jumbo v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    sget-object v3, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 138
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string/jumbo v3, "/data/system/wallpaper_info.xml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    goto :goto_0
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
