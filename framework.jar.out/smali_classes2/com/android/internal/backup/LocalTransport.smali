.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_BACKUP_SIZE_QUOTA:J = 0x1900000L

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullBackupSize:J

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    .line 54
    return-void

    .line 425
    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string/jumbo v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string/jumbo v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 108
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 107
    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 583
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 584
    .local v0, "allFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_1

    .line 585
    :cond_0
    return-object v5

    .line 589
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v1, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 591
    .local v2, "f":Ljava/io/File;
    new-instance v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v5, v2}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 594
    return-object v1
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 5
    .param p1, "dirname"    # Ljava/io/File;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "contents":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 238
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 239
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private makeDataDirs()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 103
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 104
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 101
    return-void
.end method

.method private resetFullRestoreState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 611
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 612
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 613
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 609
    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 288
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 290
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 303
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x3e8

    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 297
    return v1

    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 299
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 300
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 298
    throw v1
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 705
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 709
    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 710
    return v2
.end method

.method public cancelFullBackup()V
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 417
    .local v0, "archive":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    .line 418
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 412
    :cond_0
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, "result":I
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_2

    .line 320
    const/16 v0, -0x3ea

    .line 324
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 329
    :cond_1
    return v0

    .line 321
    :cond_2
    const-wide/32 v2, 0x1900000

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 322
    const/16 v0, -0x3ed

    goto :goto_0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v5, 0x0

    .line 253
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v2, "packageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 255
    .local v1, "fileset":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 256
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v1, v4

    .line 257
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 262
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "packageDir":Ljava/io/File;
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .restart local v2    # "packageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 264
    .local v3, "tarballs":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 265
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v3, v4

    .line 266
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 268
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 271
    :cond_3
    return v5
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 600
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 603
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 598
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 13

    .prologue
    .line 429
    sget-object v5, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [J

    .line 430
    .local v1, "existing":[J
    const/4 v3, 0x0

    .line 433
    .local v3, "num":I
    sget-object v8, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    const/4 v5, 0x0

    array-length v9, v8

    move v4, v3

    .end local v3    # "num":I
    .local v4, "num":I
    :goto_0
    if-ge v5, v9, :cond_0

    aget-wide v6, v8, v5

    .line 434
    .local v6, "token":J
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 435
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "num":I
    .restart local v3    # "num":I
    aput-wide v6, v1, v4

    .line 433
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "num":I
    .restart local v4    # "num":I
    goto :goto_0

    .line 439
    .end local v6    # "token":J
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "num":I
    .restart local v3    # "num":I
    const-wide/16 v8, 0x1

    aput-wide v8, v1, v4

    .line 441
    new-array v0, v3, [Landroid/app/backup/RestoreSet;

    .line 442
    .local v0, "available":[Landroid/app/backup/RestoreSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 443
    new-instance v5, Landroid/app/backup/RestoreSet;

    const-string/jumbo v8, "Local disk image"

    const-string/jumbo v9, "flash"

    aget-wide v10, v1, v2

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v5, v0, v2

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 445
    :cond_1
    return-object v0

    .end local v0    # "available":[Landroid/app/backup/RestoreSet;
    .end local v2    # "i":I
    .end local v3    # "num":I
    .restart local v4    # "num":I
    .restart local v6    # "token":J
    :cond_2
    move v3, v4

    .end local v4    # "num":I
    .restart local v3    # "num":I
    goto :goto_1
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z

    .prologue
    .line 715
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1900000

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 451
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 640
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 641
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Asked for full restore data for non-stream package"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 645
    :cond_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1

    .line 646
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 648
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    .local v0, "dataset":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 658
    const/16 v4, 0x800

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 663
    .end local v0    # "dataset":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 664
    .local v2, "nRead":I
    if-gez v2, :cond_2

    .line 666
    const/4 v2, -0x1

    .line 687
    :goto_0
    return v2

    .line 651
    .end local v2    # "nRead":I
    .restart local v0    # "dataset":Ljava/io/File;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "LocalTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to read archive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v4, -0x3ea

    return v4

    .line 667
    .end local v0    # "dataset":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "nRead":I
    :cond_2
    if-nez v2, :cond_3

    .line 671
    :try_start_2
    const-string/jumbo v4, "LocalTransport"

    const-string/jumbo v5, "read() of archive file returned 0; treating as EOF"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v2, -0x1

    goto :goto_0

    .line 677
    :cond_3
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 679
    .end local v2    # "nRead":I
    :catch_1
    move-exception v1

    .line 680
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v4, -0x3e8

    return v4

    .line 681
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 520
    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "startRestore not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 521
    :cond_0
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v10, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "nextRestorePackage not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 522
    :cond_1
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 523
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 525
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 526
    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 525
    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    .local v8, "packageDir":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    .local v0, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    if-nez v0, :cond_3

    .line 535
    const-string/jumbo v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No keys for package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v10, -0x3e8

    return v10

    .line 541
    :cond_3
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 543
    .local v7, "out":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "keyEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    .line 544
    .local v5, "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    iget-object v3, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    .line 545
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    .line 548
    .local v9, "size":I
    new-array v1, v9, [B

    .line 549
    .local v1, "buf":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 551
    iget-object v10, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 552
    invoke-virtual {v7, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 558
    .end local v1    # "buf":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v6    # "keyEntry$iterator":Ljava/util/Iterator;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 559
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "LocalTransport"

    const-string/jumbo v11, "Unable to read backup records"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/16 v10, -0x3e8

    return v10

    .line 553
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .restart local v6    # "keyEntry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    .line 554
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 553
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 557
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :cond_4
    const/4 v10, 0x0

    return v10
.end method

.method public initializeDevice()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 154
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 472
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "startRestore not called"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 474
    :cond_0
    const/4 v1, 0x0

    .line 475
    .local v1, "found":Z
    :cond_1
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 476
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 480
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "contents":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 486
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 487
    const/4 v1, 0x1

    .line 490
    :cond_2
    if-nez v1, :cond_3

    .line 492
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 493
    .local v2, "maybeFullData":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 498
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 499
    iput-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 500
    const/4 v1, 0x1

    .line 504
    .end local v2    # "maybeFullData":Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_1

    .line 505
    new-instance v4, Landroid/app/backup/RestoreDescription;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v4, v3, v5}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    return-object v4

    .line 515
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    sget-object v4, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    return-object v4
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 171
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v9, "packageDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 178
    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 180
    .local v3, "changeSet":Landroid/app/backup/BackupDataInput;
    const/16 v2, 0x200

    .line 181
    .local v2, "bufSize":I
    :try_start_0
    new-array v1, v2, [B

    .line 182
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 183
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "key":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 185
    .local v0, "base64Key":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v7, "entityFile":Ljava/io/File;
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 192
    .local v4, "dataSize":I
    if-ltz v4, :cond_2

    .line 193
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 194
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 196
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v6, "entity":Ljava/io/FileOutputStream;
    if-le v4, v2, :cond_1

    .line 199
    move v2, v4

    .line 200
    new-array v1, v4, [B

    .line 202
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v1    # "buf":[B
    .end local v4    # "dataSize":I
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 229
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v10, "LocalTransport"

    const-string/jumbo v11, "Exception reading backup input:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/16 v10, -0x3e8

    return v10

    .line 216
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "base64Key":Ljava/lang/String;
    .restart local v1    # "buf":[B
    .restart local v4    # "dataSize":I
    .restart local v6    # "entity":Ljava/io/FileOutputStream;
    .restart local v7    # "entityFile":Ljava/io/File;
    .restart local v8    # "key":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 217
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to update key file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    const/16 v10, -0x3e8

    .line 220
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 218
    return v10

    .line 219
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 220
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 219
    throw v10

    .line 223
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 226
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v4    # "dataSize":I
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    return v10
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/16 v4, -0x3e8

    .line 334
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 335
    const-string/jumbo v1, "LocalTransport"

    const-string/jumbo v2, "Attempt to initiate full backup while one is in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v4

    .line 347
    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    .line 348
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 349
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 356
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 358
    const/4 v1, 0x0

    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "LocalTransport"

    const-string/jumbo v2, "Unable to process socket for full backup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v4
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 12
    .param p1, "numBytes"    # I

    .prologue
    const/16 v11, -0x3e8

    const/4 v10, 0x0

    .line 363
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-nez v6, :cond_0

    .line 364
    const-string/jumbo v6, "LocalTransport"

    const-string/jumbo v7, "Attempted sendBackupData before performFullBackup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v11

    .line 368
    :cond_0
    iget-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    int-to-long v8, p1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    .line 369
    iget-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    const-wide/32 v8, 0x1900000

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 370
    const/16 v6, -0x3ed

    return v6

    .line 373
    :cond_1
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v6, v6

    if-le p1, v6, :cond_2

    .line 374
    new-array v6, p1, [B

    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 377
    :cond_2
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v6, :cond_3

    .line 380
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 381
    .local v4, "tarball":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .local v5, "tarstream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 388
    .end local v4    # "tarball":Ljava/io/File;
    .end local v5    # "tarstream":Ljava/io/FileOutputStream;
    :cond_3
    move v0, p1

    .line 389
    .local v0, "bytesLeft":I
    :goto_0
    if-lez v0, :cond_5

    .line 391
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 392
    .local v3, "nRead":I
    if-gez v3, :cond_4

    .line 394
    const-string/jumbo v6, "LocalTransport"

    const-string/jumbo v7, "Unexpected EOD; failing backup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v11

    .line 382
    .end local v0    # "bytesLeft":I
    .end local v3    # "nRead":I
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v11

    .line 397
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bytesLeft":I
    .restart local v3    # "nRead":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    sub-int/2addr v0, v3

    goto :goto_0

    .line 399
    .end local v3    # "nRead":I
    :catch_1
    move-exception v2

    .line 400
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error handling backup data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v11

    .line 407
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    return v10
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .prologue
    .line 458
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 460
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    .line 461
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string/jumbo v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 462
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string/jumbo v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string/jumbo v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
