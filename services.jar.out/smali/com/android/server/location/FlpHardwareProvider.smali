.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$1;,
        Lcom/android/server/location/FlpHardwareProvider$2;,
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "geofenceId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .locals 0
    .param p1, "geofenceIdsArray"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "lastNLocations"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/FlpHardwareProvider;II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "optionsObject"    # Landroid/location/FusedBatchOptions;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0
    .param p1, "deviceEnabledContext"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 288
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 46
    iput-object v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 50
    iput v12, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 56
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    .line 347
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    .line 433
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 432
    iput-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    .line 81
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    .line 84
    iget-object v6, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v7, "location"

    .line 84
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 86
    .local v0, "manager":Landroid/location/LocationManager;
    const-wide/16 v2, 0x0

    .line 87
    .local v2, "minTime":J
    const/4 v1, 0x0

    .line 88
    .local v1, "minDistance":F
    const/4 v4, 0x0

    .line 90
    .local v4, "oneShot":Z
    const-string/jumbo v6, "passive"

    .line 91
    const-wide/16 v8, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v10, 0x0

    .line 89
    invoke-static {v6, v8, v9, v7, v10}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v5

    .line 96
    .local v5, "request":Landroid/location/LocationRequest;
    invoke-virtual {v5, v12}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 99
    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v11}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;)V

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 97
    invoke-virtual {v0, v5, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 80
    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 505
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    .line 74
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    .line 77
    :cond_0
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method private getVersion()I
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 168
    const/4 v0, 0x1

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private maybeSendCapabilities()V
    .locals 6

    .prologue
    .line 182
    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 184
    .local v3, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    iget-boolean v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 185
    .local v2, "haveBatchingCapabilities":Z
    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "batchingCapabilities":I
    monitor-exit v5

    .line 188
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 189
    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 182
    .end local v0    # "batchingCapabilities":I
    .end local v2    # "haveBatchingCapabilities":Z
    .end local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 191
    .restart local v0    # "batchingCapabilities":I
    .restart local v2    # "haveBatchingCapabilities":Z
    .restart local v3    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FlpHardwareProvider"

    const-string/jumbo v5, "RemoteException calling onLocationAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    .line 134
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 137
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    .line 139
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 131
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onBatchingStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v2

    .line 150
    if-eqz v1, :cond_0

    .line 151
    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 146
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 153
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FlpHardwareProvider"

    const-string/jumbo v3, "RemoteException calling onBatchingStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDataReport(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v2

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 199
    .end local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 206
    .restart local v1    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FlpHardwareProvider"

    const-string/jumbo v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGeofenceAdd(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 260
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 258
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 257
    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "source"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "updatedLocation":Landroid/location/Location;
    if-eqz p3, :cond_0

    .line 233
    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    .line 237
    .end local v1    # "updatedLocation":Landroid/location/Location;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 245
    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid FlpHal Geofence monitor status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x1

    .line 250
    .local v0, "monitorStatus":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    .line 251
    const/4 v3, 0x1

    .line 250
    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 229
    return-void

    .line 239
    .end local v0    # "monitorStatus":I
    :pswitch_0
    const/4 v0, 0x1

    .line 240
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 242
    .end local v0    # "monitorStatus":I
    :pswitch_1
    const/4 v0, 0x0

    .line 243
    .restart local v0    # "monitorStatus":I
    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 272
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 270
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 269
    return-void
.end method

.method private onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 266
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 264
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 263
    return-void
.end method

.method private onGeofenceResume(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "result"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 278
    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    .line 276
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 275
    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J
    .param p6, "sourcesUsed"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 222
    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    .line 225
    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    .line 220
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 217
    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    .line 281
    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .locals 8
    .param p1, "locations"    # [Landroid/location/Location;

    .prologue
    .line 112
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p1, v3

    .line 113
    .local v1, "location":Landroid/location/Location;
    const-string/jumbo v5, "fused"

    invoke-virtual {v1, v5}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    monitor-exit v3

    .line 123
    if-eqz v2, :cond_1

    .line 124
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_1
    :goto_1
    return-void

    .line 119
    .end local v2    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 126
    .restart local v2    # "sink":Landroid/hardware/location/IFusedLocationHardwareSink;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FlpHardwareProvider"

    const-string/jumbo v4, "RemoteException calling onLocationAvailable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    .line 173
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    .line 171
    :cond_0
    return-void
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .locals 6
    .param p0, "flpHalResult"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 512
    packed-switch p0, :pswitch_data_0

    .line 528
    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v5

    .line 514
    :pswitch_0
    return v4

    .line 516
    :pswitch_1
    return v5

    .line 518
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 520
    :pswitch_3
    return v2

    .line 522
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 524
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 526
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 534
    const-string/jumbo v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 537
    return-object p1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 343
    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "Calling nativeCleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeCleanup()V

    .line 342
    return-void
.end method

.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
