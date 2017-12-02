.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$1;
    }
.end annotation


# static fields
.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/mtp/MtpDatabase;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method static synthetic -set0(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 90
    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 93
    new-array v0, v4, [Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    .line 93
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 97
    new-array v0, v4, [Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "format"

    aput-object v1, v0, v3

    .line 97
    sput-object v0, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 101
    new-array v0, v5, [Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    .line 104
    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    .line 101
    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 106
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    .line 109
    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    .line 110
    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    .line 111
    const-string/jumbo v1, "_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "date_added"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "date_modified"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 106
    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 599
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 615
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 645
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 666
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 51
    return-void

    .line 599
    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    .line 615
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    .line 645
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    .line 666
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 77
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 76
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 81
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 80
    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 140
    new-instance v6, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v6, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 163
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 166
    const-string/jumbo v7, "media"

    .line 165
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 167
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 169
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 170
    new-instance v6, Landroid/media/MediaScanner;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 172
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 173
    if-eqz p4, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    array-length v1, p4

    .line 178
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 179
    const-string/jumbo v6, "_data=? OR _data LIKE ?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v6, v1, -0x1

    if-eq v2, v6, :cond_0

    .line 182
    const-string/jumbo v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const-string/jumbo v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 189
    mul-int/lit8 v6, v1, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 190
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 191
    aget-object v5, p4, v2

    .line 192
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-object v5, v6, v4

    .line 193
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 199
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v7, "close"

    invoke-virtual {v6, v7}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 333
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const-string/jumbo v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attempt to put file outside of storage area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, -0x1

    return v0

    .line 338
    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 341
    :cond_1
    if-eqz p1, :cond_4

    .line 342
    const/4 v7, 0x0

    .line 344
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_data=?"

    .line 345
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 344
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 346
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 347
    const-string/jumbo v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    const/4 v0, -0x1

    .line 353
    if-eqz v7, :cond_2

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_2
    return v0

    .line 353
    :cond_3
    if-eqz v7, :cond_4

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 359
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 360
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "_data"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string/jumbo v0, "storage_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string/jumbo v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string/jumbo v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 369
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 370
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_6

    .line 371
    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    return v0

    .line 350
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 351
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    if-eqz v7, :cond_4

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 353
    if-eqz v7, :cond_5

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_5
    throw v0

    .line 373
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 375
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 376
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    const/4 v0, -0x1

    return v0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 10
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 421
    if-ne p1, v0, :cond_6

    .line 423
    if-nez p2, :cond_3

    .line 425
    if-nez p3, :cond_1

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 492
    .end local v3    # "where":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 493
    if-nez v3, :cond_c

    .line 494
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 495
    .local v3, "where":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 513
    .end local v3    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 430
    :cond_1
    if-ne p3, v0, :cond_2

    .line 432
    const/4 p3, 0x0

    .line 434
    :cond_2
    const-string/jumbo v3, "parent=?"

    .line 435
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .local v4, "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 439
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 441
    const-string/jumbo v3, "format=?"

    .line 442
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 446
    const/4 p3, 0x0

    .line 448
    :cond_5
    const-string/jumbo v3, "format=? AND parent=?"

    .line 449
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 450
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 449
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 455
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 457
    if-nez p3, :cond_7

    .line 459
    const-string/jumbo v3, "storage_id=?"

    .line 460
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 462
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 464
    const/4 p3, 0x0

    .line 466
    :cond_8
    const-string/jumbo v3, "storage_id=? AND parent=?"

    .line 467
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 467
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 472
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 474
    const-string/jumbo v3, "storage_id=? AND format=?"

    .line 475
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 475
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 480
    const/4 p3, 0x0

    .line 482
    :cond_b
    const-string/jumbo v3, "storage_id=? AND format=? AND parent=?"

    .line 483
    .restart local v3    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 484
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 485
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 483
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 497
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .restart local v3    # "where":Ljava/lang/String;
    array-length v0, v4

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v9, v0, [Ljava/lang/String;

    .line 503
    .local v9, "newWhereArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, v4

    if-ge v7, v0, :cond_d

    .line 504
    aget-object v0, v4, v7

    aput-object v0, v9, v7

    .line 503
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 506
    :cond_d
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_e

    .line 507
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v8

    aput-object v0, v9, v7

    .line 506
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 509
    :cond_e
    move-object v4, v9

    .restart local v4    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 14
    .param p1, "handle"    # I

    .prologue
    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 990
    const/4 v12, 0x0

    .line 991
    .local v12, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 993
    .local v10, "format":I
    const/4 v7, 0x0

    .line 995
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 996
    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 995
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 997
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1000
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1001
    .local v12, "path":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1006
    if-eqz v12, :cond_0

    if-nez v10, :cond_4

    .line 1007
    :cond_0
    const/16 v0, 0x2002

    .line 1044
    if-eqz v7, :cond_1

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1007
    :cond_1
    return v0

    .line 1003
    .local v12, "path":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x2009

    .line 1044
    if-eqz v7, :cond_3

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1003
    :cond_3
    return v0

    .line 1011
    .local v12, "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-direct {p0, v12}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 1012
    const/16 v0, 0x200d

    .line 1044
    if-eqz v7, :cond_5

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1012
    :cond_5
    return v0

    .line 1015
    :cond_6
    const/16 v0, 0x3001

    if-ne v10, v0, :cond_7

    .line 1017
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1018
    .local v13, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 1021
    const-string/jumbo v1, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    .line 1022
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 1018
    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1025
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 1026
    .restart local v13    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b

    .line 1027
    const/16 v0, 0x3001

    if-eq v10, v0, :cond_8

    .line 1028
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 1027
    if-eqz v0, :cond_8

    .line 1030
    :try_start_3
    const-string/jumbo v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1031
    .local v11, "parentPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v1, "unhide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1036
    .end local v11    # "parentPath":Ljava/lang/String;
    :cond_8
    :goto_0
    const/16 v0, 0x2001

    .line 1044
    if-eqz v7, :cond_9

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1036
    :cond_9
    return v0

    .line 1032
    :catch_0
    move-exception v9

    .line 1033
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to unhide/rescan for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1040
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 1041
    .restart local v9    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1042
    const/16 v0, 0x2002

    .line 1044
    if-eqz v7, :cond_a

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1042
    :cond_a
    return v0

    .line 1038
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_b
    const/16 v0, 0x2009

    .line 1044
    if-eqz v7, :cond_c

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1038
    :cond_c
    return v0

    .line 1043
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    .line 1044
    if-eqz v7, :cond_d

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1043
    :cond_d
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    const/4 v6, 0x0

    .line 382
    if-eqz p4, :cond_3

    .line 385
    const v5, 0xba05

    if-ne p3, v5, :cond_2

    .line 387
    move-object v2, p1

    .line 388
    .local v2, "name":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 389
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 390
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    :cond_0
    const-string/jumbo v5, ".pla"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 394
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 397
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 398
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "_data"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v5, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string/jumbo v5, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string/jumbo v5, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 405
    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 404
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 381
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 406
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MtpDatabase"

    const-string/jumbo v6, "RemoteException in endSendObject"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v5, p1, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;II)V

    goto :goto_0

    .line 413
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    const/16 v10, 0x2001

    const/4 v9, 0x0

    .line 848
    sparse-switch p1, :sswitch_data_0

    .line 875
    const/16 v6, 0x200a

    return v6

    .line 852
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 854
    .local v3, "length":I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 855
    const/16 v3, 0xff

    .line 857
    :cond_0
    invoke-virtual {v4, v9, v3, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 858
    aput-char v9, p3, v3

    .line 859
    return v10

    .line 863
    .end local v3    # "length":I
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 864
    const-string/jumbo v7, "window"

    .line 863
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 865
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 866
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 867
    .local v1, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "imageSize":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v9, v6, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 869
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p3, v6

    .line 870
    return v10

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 547
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 548
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 553
    if-eqz v0, :cond_0

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_0
    return v2

    .line 553
    :cond_1
    if-eqz v0, :cond_2

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 557
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v2, -0x1

    return v2

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    const-string/jumbo v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    if-eqz v0, :cond_2

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 552
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 553
    if-eqz v0, :cond_3

    .line 554
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 11
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/16 v10, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 934
    if-nez p1, :cond_0

    .line 936
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 937
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 938
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 939
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    .line 940
    return v10

    .line 942
    :cond_0
    const/4 v7, 0x0

    .line 944
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 945
    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 944
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 946
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 948
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v0, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 949
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 952
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p3, v2

    .line 953
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p3, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    if-eqz v7, :cond_1

    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 954
    :cond_1
    return v10

    .line 956
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x2009

    .line 962
    if-eqz v7, :cond_3

    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 956
    :cond_3
    return v0

    .line 958
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 959
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    const/16 v0, 0x2002

    .line 962
    if-eqz v7, :cond_4

    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 960
    :cond_4
    return v0

    .line 961
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 962
    if-eqz v7, :cond_5

    .line 963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 961
    :cond_5
    throw v0
.end method

.method private getObjectFormat(I)I
    .locals 10
    .param p1, "handle"    # I

    .prologue
    const/4 v9, -0x1

    .line 969
    const/4 v7, 0x0

    .line 971
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 972
    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 971
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 973
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 982
    if-eqz v7, :cond_0

    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 974
    :cond_0
    return v0

    .line 982
    :cond_1
    if-eqz v7, :cond_2

    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 976
    :cond_2
    return v9

    .line 978
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 979
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    if-eqz v7, :cond_3

    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_3
    return v9

    .line 981
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 982
    if-eqz v7, :cond_4

    .line 983
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 15
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    .line 895
    const/4 v9, 0x0

    .line 897
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 898
    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 897
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 899
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p2, v3

    .line 901
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 902
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, p2, v3

    .line 905
    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 906
    .local v13, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 907
    .local v12, "lastSlash":I
    if-ltz v12, :cond_3

    add-int/lit8 v14, v12, 0x1

    .line 908
    .local v14, "start":I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 909
    .local v11, "end":I
    sub-int v2, v11, v14

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    .line 910
    add-int/lit16 v11, v14, 0xff

    .line 912
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v11, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 913
    sub-int v2, v11, v14

    const/4 v3, 0x0

    aput-char v3, p3, v2

    .line 915
    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    aput-wide v2, p4, v4

    .line 916
    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    aput-wide v2, p4, v4

    .line 918
    const/4 v2, 0x0

    aget-wide v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 919
    const/4 v2, 0x1

    aget-wide v2, p4, v2

    const/4 v4, 0x0

    aput-wide v2, p4, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :cond_1
    const/4 v2, 0x1

    .line 926
    if-eqz v9, :cond_2

    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_2
    return v2

    .line 907
    .end local v11    # "end":I
    .end local v14    # "start":I
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "start":I
    goto :goto_0

    .line 926
    .end local v12    # "lastSlash":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "start":I
    :cond_4
    if-eqz v9, :cond_5

    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 930
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 923
    :catch_0
    move-exception v10

    .line 924
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    const-string/jumbo v3, "RemoteException in getObjectInfo"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 926
    if-eqz v9, :cond_5

    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 925
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 926
    if-eqz v9, :cond_6

    .line 927
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_6
    throw v2
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v7, 0x0

    .line 518
    const/4 v0, 0x0

    .line 520
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 521
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 536
    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_0
    return-object v7

    .line 524
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 525
    .local v1, "count":I
    if-lez v1, :cond_4

    .line 526
    new-array v4, v1, [I

    .line 527
    .local v4, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 528
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 529
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v4, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    :cond_2
    if-eqz v0, :cond_3

    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_3
    return-object v4

    .line 536
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_4
    if-eqz v0, :cond_5

    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":I
    :cond_5
    :goto_1
    return-object v7

    .line 533
    :catch_0
    move-exception v2

    .line 534
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "MtpDatabase"

    const-string/jumbo v6, "RemoteException in getObjectList"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    if-eqz v0, :cond_5

    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 535
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 536
    if-eqz v0, :cond_6

    .line 537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 5
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 719
    if-eqz p4, :cond_0

    .line 720
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    return-object v2

    .line 724
    :cond_0
    if-ne p3, v2, :cond_3

    .line 725
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    .line 727
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    move-result p2

    .line 729
    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 730
    .local v0, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    .line 731
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 732
    .local v1, "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 733
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 732
    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    .line 734
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .end local v1    # "propertyList":[I
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2, p5}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    return-object v2

    .line 737
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_3
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 738
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    .line 739
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p3, v1, v4

    .line 740
    .restart local v1    # "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .line 741
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 740
    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    .line 742
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getObjectReferences(I)[I
    .locals 13
    .param p1, "handle"    # I

    .prologue
    const/4 v12, 0x0

    .line 1051
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1052
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1054
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1055
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1070
    if-eqz v7, :cond_0

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_0
    return-object v12

    .line 1058
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1059
    .local v8, "count":I
    if-lez v8, :cond_4

    .line 1060
    new-array v11, v8, [I

    .line 1061
    .local v11, "result":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 1062
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1063
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1070
    :cond_2
    if-eqz v7, :cond_3

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1065
    :cond_3
    return-object v11

    .line 1070
    .end local v10    # "i":I
    .end local v11    # "result":[I
    :cond_4
    if-eqz v7, :cond_5

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1074
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "count":I
    :cond_5
    :goto_1
    return-object v12

    .line 1067
    :catch_0
    move-exception v9

    .line 1068
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "MtpDatabase"

    const-string/jumbo v2, "RemoteException in getObjectList"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1070
    if-eqz v7, :cond_5

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1069
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 1070
    if-eqz v7, :cond_6

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_6
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 4

    .prologue
    .line 709
    const v0, 0xd401

    .line 710
    const v1, 0xd402

    .line 711
    const/16 v2, 0x5003

    .line 712
    const/16 v3, 0x5001

    .line 708
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 685
    sparse-switch p1, :sswitch_data_0

    .line 703
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    .line 691
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    return-object v0

    .line 695
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    return-object v0

    .line 701
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    return-object v0

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0x3811 -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 561
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
    .end array-data
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 317
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "canonical":Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "root$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    .local v3, "root":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    const/4 v5, 0x1

    return v5

    .line 324
    .end local v0    # "canonical":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "root":Ljava/lang/String;
    .end local v4    # "root$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 327
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    return v5

    .line 286
    :cond_0
    if-nez p1, :cond_1

    const/4 v5, 0x0

    return v5

    .line 288
    :cond_1
    const/4 v0, 0x0

    .line 289
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 290
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    if-eqz v0, :cond_3

    .line 299
    :cond_2
    return v0

    .line 291
    :cond_3
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 292
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 293
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_4

    .line 294
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4

    .line 295
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 293
    if-eqz v5, :cond_4

    .line 296
    const/4 v0, 0x1

    .line 290
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const-string/jumbo v11, "device-properties"

    .line 249
    .local v11, "devicePropertiesName":Ljava/lang/String;
    const-string/jumbo v2, "device-properties"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 250
    const-string/jumbo v2, "device-properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 252
    .local v10, "databaseFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 258
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v2, "device-properties"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 259
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_4

    .line 260
    const-string/jumbo v2, "properties"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "code"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "value"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 261
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 260
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 262
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 264
    .local v12, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 267
    .local v15, "value":Ljava/lang/String;
    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 273
    .local v13, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "MtpDatabase"

    const-string/jumbo v3, "failed to migrate device properties"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 278
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string/jumbo v2, "device-properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 247
    :cond_2
    return-void

    .line 269
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 274
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    .line 275
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    :cond_7
    throw v2
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v1, :cond_0

    return v2

    .line 306
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 307
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v1, 0x1

    return v1

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_2
    return v2
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 750
    const/4 v8, 0x0

    .line 753
    .local v8, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 754
    .local v14, "path":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 756
    .local v5, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "_id=?"

    .line 757
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 756
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 758
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 765
    .end local v14    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 769
    :cond_1
    if-nez v14, :cond_4

    .line 770
    const/16 v1, 0x2009

    return v1

    .line 761
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v14    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 762
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MtpDatabase"

    const-string/jumbo v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    const/16 v1, 0x2002

    .line 765
    if-eqz v8, :cond_2

    .line 766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_2
    return v1

    .line 764
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 765
    if-eqz v8, :cond_3

    .line 766
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 764
    :cond_3
    throw v1

    .line 774
    .end local v14    # "path":Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 775
    const/16 v1, 0x200d

    return v1

    .line 779
    :cond_5
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    .local v13, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 781
    .local v10, "lastSlash":I
    const/4 v1, 0x1

    if-gt v10, v1, :cond_6

    .line 782
    const/16 v1, 0x2002

    return v1

    .line 784
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 785
    .local v12, "newPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    .local v11, "newFile":Ljava/io/File;
    invoke-virtual {v13, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    .line 787
    .local v15, "success":Z
    if-nez v15, :cond_7

    .line 788
    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v1, 0x2002

    return v1

    .line 793
    :cond_7
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/16 v16, 0x0

    .line 799
    .local v16, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string/jumbo v3, "_id=?"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 803
    :goto_0
    if-nez v16, :cond_8

    .line 804
    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v11, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 807
    const/16 v1, 0x2002

    return v1

    .line 800
    :catch_1
    move-exception v9

    .line 801
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    const-string/jumbo v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 811
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 813
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 833
    :cond_9
    :goto_1
    const/16 v1, 0x2001

    return v1

    .line 816
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v12, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 817
    :catch_2
    move-exception v9

    .line 818
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 823
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 824
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 826
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v2, "unhide"

    invoke-virtual {v13}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 827
    :catch_3
    move-exception v9

    .line 828
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1102
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1101
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1097
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 880
    packed-switch p1, :pswitch_data_0

    .line 890
    const/16 v1, 0x200a

    return v1

    .line 884
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 885
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    :goto_0
    return v1

    .line 887
    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 838
    packed-switch p2, :pswitch_data_0

    .line 843
    const v0, 0xa80a

    return v0

    .line 840
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 838
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 10
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1078
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1079
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1080
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    .line 1081
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1082
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1083
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    aput-object v4, v5, v2

    .line 1082
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1088
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1089
    const/16 v6, 0x2001

    return v6

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MtpDatabase"

    const-string/jumbo v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    return v6
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 240
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 222
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v0}, Landroid/media/MediaScanner;->close()V

    .line 224
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 225
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 220
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 233
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 230
    return-void

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 234
    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 244
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 5
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .prologue
    .line 203
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    if-eqz p1, :cond_0

    .line 214
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    :cond_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
