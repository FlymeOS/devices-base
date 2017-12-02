.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field public static final DEBUG_EMULATE_FBE:I = 0x2

.field public static final DEBUG_FORCE_ADOPTABLE:I = 0x1

.field public static final DEBUG_SDCARDFS_FORCE_OFF:I = 0x8

.field public static final DEBUG_SDCARDFS_FORCE_ON:I = 0x4

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x100000L

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field public static final FLAG_FOR_WRITE:I = 0x100

.field public static final FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final FLAG_REAL_STATE:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field private static final INTERNAL_STORAGE_SECTOR_SIZE:I = 0x200

.field private static final INTERNAL_STORAGE_SIZE_PATHS:[Ljava/lang/String;

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PASSWORD_VISIBLE_KEY:Ljava/lang/String; = "PasswordVisible"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final PROP_EMULATE_FBE:Ljava/lang/String; = "persist.sys.emulate_fbe"

.field public static final PROP_FORCE_ADOPTABLE:Ljava/lang/String; = "persist.fw.force_adoptable"

.field public static final PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"

.field public static final UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final UUID_PRIVATE_INTERNAL:Ljava/lang/String;

.field private static volatile sMountService:Landroid/os/storage/IMountService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/os/storage/StorageManager;)I
    .locals 1

    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 140
    const-string/jumbo v1, "/sys/block/mmcblk0/size"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "/sys/block/sda/size"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 139
    sput-object v0, Landroid/os/storage/StorageManager;->INTERNAL_STORAGE_SIZE_PATHS:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 353
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 355
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    .line 356
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 357
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Failed to find running mount service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private getNextNonce()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 4
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 1009
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 1010
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    return-object v0

    .line 1009
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Missing primary storage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "userId"    # I

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 7
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 870
    if-nez p1, :cond_0

    .line 871
    return-object v6

    .line 874
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 879
    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, p0, v3

    .line 880
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    .line 882
    .local v2, "volumeFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 886
    invoke-static {v2, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 887
    return-object v1

    .line 875
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumeFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ignored":Ljava/io/IOException;
    const-string/jumbo v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not get canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-object v6

    .line 883
    .end local v0    # "ignored":Ljava/io/IOException;
    .restart local v1    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v2    # "volumeFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 879
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 890
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    .end local v2    # "volumeFile":Ljava/io/File;
    :cond_2
    return-object v6
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .locals 7
    .param p0, "userId"    # I
    .param p1, "flags"    # I

    .prologue
    .line 961
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 960
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 963
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 964
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 969
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 970
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 969
    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 971
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-gtz v5, :cond_1

    .line 972
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    return-object v5

    .line 974
    :cond_1
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 976
    .end local v3    # "packageNames":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 977
    const/high16 v6, 0x10000000

    .line 976
    invoke-interface {v5, v2, v6, p0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v4

    .line 978
    .local v4, "uid":I
    if-gtz v4, :cond_3

    .line 979
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    return-object v5

    .line 981
    :cond_3
    invoke-interface {v1, v4, v2, p1}, Landroid/os/storage/IMountService;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 982
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public static inCryptKeeperBounce()Z
    .locals 2

    .prologue
    .line 1243
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isBlockEncrypted()Z
    .locals 3

    .prologue
    .line 1188
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1189
    const/4 v1, 0x0

    return v1

    .line 1191
    :cond_0
    const-string/jumbo v1, "ro.crypto.type"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "block"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isBlockEncrypting()Z
    .locals 3

    .prologue
    .line 1227
    const-string/jumbo v1, "vold.encrypt_progress"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEncryptable()Z
    .locals 3

    .prologue
    .line 1154
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "unsupported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEncrypted()Z
    .locals 3

    .prologue
    .line 1164
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isFileEncryptedEmulatedOnly()Z
    .locals 2

    .prologue
    .line 1249
    const-string/jumbo v0, "persist.sys.emulate_fbe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptedNativeOnly()Z
    .locals 3

    .prologue
    .line 1174
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    const/4 v1, 0x0

    return v1

    .line 1178
    :cond_0
    const-string/jumbo v1, "ro.crypto.type"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isFileEncryptedNativeOrEmulated()Z
    .locals 1

    .prologue
    .line 1257
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    .line 1257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNonDefaultBlockEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1202
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1203
    return v3

    .line 1208
    :cond_0
    :try_start_0
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1207
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1209
    .local v1, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v2, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StorageManager"

    const-string/jumbo v4, "Error getting encryption type"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return v3
.end method

.method public static isUserKeyUnlocked(I)Z
    .locals 5
    .param p0, "userId"    # I

    .prologue
    .line 1116
    sget-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 1118
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1117
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    .line 1120
    :cond_0
    sget-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_1

    .line 1121
    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v4, "Early during boot, assuming locked"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v1, 0x0

    return v1

    .line 1124
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1126
    .local v2, "token":J
    :try_start_0
    sget-object v1, Landroid/os/storage/StorageManager;->sMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->isUserKeyUnlocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    return v1

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    throw v1
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 1264
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1263
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1266
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 1267
    .local v4, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v4, v5

    .line 1268
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1269
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v7

    .line 1268
    if-eqz v7, :cond_1

    .line 1270
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    .line 1271
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v8

    .line 1270
    invoke-static {v7, v8, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1272
    .local v1, "internalPath":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1273
    return-object v1

    .line 1267
    .end local v1    # "internalPath":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1277
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1280
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :cond_2
    return-object p0
.end method

.method private readLong(Ljava/lang/String;)J
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 944
    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 945
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 946
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-wide v8

    .line 950
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 947
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 948
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    const-wide/16 v6, 0x0

    return-wide v6

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    if-eqz v6, :cond_2

    if-eq v6, v5, :cond_1

    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v6

    goto :goto_1

    .line 946
    :cond_3
    return-wide v8

    .line 950
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    move-object v7, v6

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    move-object v6, v7

    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    :try_start_a
    throw v6

    .line 947
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    if-eqz v6, :cond_5

    if-eq v6, v7, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v6

    goto :goto_5

    :catch_6
    move-exception v6

    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_6

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_6

    :cond_8
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .locals 4
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->benchmark(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createUserKey(IIZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "ephemeral"    # Z

    .prologue
    .line 1063
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->createUserKey(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->destroyUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    return-void

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1108
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 420
    return-void
.end method

.method public enableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method public findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "disk$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 564
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v2, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    return-object v0

    .line 568
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "privateVol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v0, 0x0

    .line 618
    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "private"

    const-string/jumbo v2, "emulated"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 621
    :cond_0
    return-object v0
.end method

.method public findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "emulatedVol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v0, 0x0

    .line 609
    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "emulated"

    const-string/jumbo v2, "private"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 612
    :cond_0
    return-object v0
.end method

.method public findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 600
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    return-object v0

    .line 604
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 576
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    return-object v0

    .line 580
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 627
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const-string/jumbo v0, "private"

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 629
    :cond_0
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 632
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 588
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    return-object v0

    .line 592
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->format(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v2, 0x0

    .line 671
    if-nez p1, :cond_0

    return-object v2

    .line 674
    :cond_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 676
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 682
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 677
    .restart local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_2
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object v1

    .line 685
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_3
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_4

    .line 686
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 689
    :cond_4
    return-object v2
.end method

.method public getDisks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 695
    .local v2, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 696
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    return-object v0

    .line 700
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPrimaryStorageSize()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 934
    sget-object v4, Landroid/os/storage/StorageManager;->INTERNAL_STORAGE_SIZE_PATHS:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 935
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/os/storage/StorageManager;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 936
    .local v0, "numberBlocks":J
    cmp-long v6, v0, v8

    if-lez v6, :cond_0

    .line 937
    const-wide/16 v4, 0x200

    mul-long/2addr v4, v0

    return-wide v4

    .line 934
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 940
    .end local v0    # "numberBlocks":J
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    return-wide v8
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPrimaryStorageUuid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 2

    .prologue
    .line 929
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x600

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getStorageBytesUntilLow(Ljava/io/File;)J
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 1029
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStorageFullBytes(Ljava/io/File;)J
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    .line 1057
    const-wide/32 v2, 0x100000

    .line 1056
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageLowBytes(Ljava/io/File;)J
    .locals 10
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 1039
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 1040
    const-string/jumbo v7, "sys_storage_threshold_percentage"

    const/16 v8, 0xa

    .line 1039
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v2, v6

    .line 1041
    .local v2, "lowPercent":J
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v0, v6, v8

    .line 1043
    .local v0, "lowBytes":J
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 1044
    const-string/jumbo v7, "sys_storage_threshold_max_bytes"

    const-wide/32 v8, 0x1f400000

    .line 1043
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1046
    .local v4, "maxLowBytes":J
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getStorageVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 917
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 919
    return-object v0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 994
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v0, v3

    .line 995
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 996
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 997
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    :cond_0
    return-object v2
.end method

.method public getVolumeRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mountPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 899
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 900
    .local v0, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 903
    :cond_0
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method public getVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWritablePrivateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 648
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 650
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 651
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    return-object v1

    .line 655
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public isEncrypted(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1139
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0

    .line 1141
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    const/4 v0, 0x1

    return v0

    .line 1145
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public lockUserKey(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1090
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->lockUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mount(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1286
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 467
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "canonicalPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v5

    .line 473
    .local v5, "nonce":I
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    const/4 v0, 0x1

    return v0

    .line 477
    .end local v2    # "canonicalPath":Ljava/lang/String;
    .end local v5    # "nonce":I
    :catch_0
    move-exception v6

    .line 478
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 475
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 476
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->partitionMixed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->partitionPrivate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 2
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serialNumber"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1099
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IMountService;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .prologue
    .line 370
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    .line 371
    :try_start_0
    new-instance v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 372
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    .line 371
    invoke-direct {v0, p1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v0, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2, v0}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 369
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeInited(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "inited"    # Z

    .prologue
    const/4 v1, 0x1

    .line 802
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-eqz p2, :cond_0

    .line 803
    :goto_0
    const/4 v3, 0x1

    .line 802
    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IMountService;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    return-void

    .line 802
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 793
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeSnoozed(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "snoozed"    # Z

    .prologue
    const/4 v1, 0x2

    .line 812
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-eqz p2, :cond_0

    .line 813
    :goto_0
    const/4 v3, 0x2

    .line 812
    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IMountService;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    return-void

    .line 812
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlockUserKey(II[B[B)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .prologue
    .line 1081
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    return-void

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 2
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 503
    const-string/jumbo v2, "rawPath cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 508
    .local v1, "nonce":I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    const/4 v2, 0x1

    return v2

    .line 510
    .end local v1    # "nonce":I
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .prologue
    .line 390
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 391
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 393
    .local v0, "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    iget-object v3, v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 395
    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 390
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 396
    .restart local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/storage/StorageManager$StorageEventListenerDelegate;>;"
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "delegate":Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4

    .line 389
    return-void
.end method

.method public wipeAdoptableDisks()V
    .locals 8

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v3

    .line 773
    .local v3, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "disk$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 774
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "diskId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found adoptable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; wiping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5, v2}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v4

    .line 782
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to wipe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but soldiering onward"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 785
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignorning non-adoptable disk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    .end local v2    # "diskId":Ljava/lang/String;
    :cond_1
    return-void
.end method
