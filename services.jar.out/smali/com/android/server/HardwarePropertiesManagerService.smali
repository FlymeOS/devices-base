.class public Lcom/android/server/HardwarePropertiesManagerService;
.super Landroid/os/IHardwarePropertiesManager$Stub;
.source "HardwarePropertiesManagerService.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/IHardwarePropertiesManager$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 47
    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v6, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 92
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 94
    .local v3, "uid":I
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, v3, :cond_0

    .line 96
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "The caller has faked the package name."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "The caller has faked the package name."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 103
    .local v4, "userId":I
    const-class v6, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vr/VrManagerInternal;

    .line 104
    .local v5, "vrService":Lcom/android/server/vr/VrManagerInternal;
    iget-object v6, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 105
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    :cond_1
    return-void

    .line 106
    :cond_2
    invoke-virtual {v5, p1, v4}, Lcom/android/server/vr/VrManagerInternal;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "The caller is not a device or profile owner, bound VrListenerService, or holding the DEVICE_POWER permission."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static native nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
.end method

.method private static native nativeGetDeviceTemperatures(II)[F
.end method

.method private static native nativeGetFanSpeeds()[F
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDeviceTemperatures(Ljava/lang/String;II)[F
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetDeviceTemperatures(II)[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getFanSpeeds(Ljava/lang/String;)[F
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetFanSpeeds()[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
