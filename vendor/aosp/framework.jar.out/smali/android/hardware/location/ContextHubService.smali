.class public Landroid/hardware/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubService$1;
    }
.end annotation


# static fields
.field public static final ANY_HUB:I = -0x1

.field private static final APP_ID_ACTIVITY_RECOGNITION:J = 0x476f6f676c001000L

.field public static final CONTEXTHUB_SERVICE:Ljava/lang/String; = "contexthub_service"

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final HEADER_FIELD_APP_INSTANCE:I = 0x3

.field private static final HEADER_FIELD_HUB_HANDLE:I = 0x2

.field private static final HEADER_FIELD_LOAD_APP_ID_HI:I = 0x5

.field private static final HEADER_FIELD_LOAD_APP_ID_LO:I = 0x4

.field private static final HEADER_FIELD_MSG_TYPE:I = 0x0

.field private static final HEADER_FIELD_MSG_VERSION:I = 0x1

.field private static final MSG_HEADER_SIZE:I = 0x4

.field private static final MSG_LOAD_APP_HEADER_SIZE:I = 0x6

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final PRE_LOADED_APP_MEM_REQ:I = 0x0

.field private static final PRE_LOADED_APP_NAME:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_APP_PUBLISHER:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_GENERIC_UNKNOWN:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

.field private final mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/ContextHubService;Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 0
    .param p1, "app"    # Landroid/hardware/location/NanoAppInstanceInfo;
    .param p2, "vrModeEnabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ContextHubService;->sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 78
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 77
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 80
    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 86
    new-instance v3, Landroid/hardware/location/ContextHubService$1;

    invoke-direct {v3, p0}, Landroid/hardware/location/ContextHubService$1;-><init>(Landroid/hardware/location/ContextHubService;)V

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 99
    iput-object p1, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->nativeInitialize()[Landroid/hardware/location/ContextHubInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 103
    const-string/jumbo v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ContextHub["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-string/jumbo v5, ", name:  "

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.software.vr.mode"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    const-string/jumbo v3, "vrmanager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    .line 110
    .local v2, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v2, :cond_1

    .line 112
    :try_start_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_1
    :goto_1
    return-void

    .line 113
    .restart local v2    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ContextHubService"

    const-string/jumbo v4, "VR state listener registration failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addAppInstance(IIJI)I
    .locals 7
    .param p1, "hubHandle"    # I
    .param p2, "appInstanceHandle"    # I
    .param p3, "appId"    # J
    .param p5, "appVersion"    # I

    .prologue
    const/4 v5, 0x0

    .line 354
    new-instance v1, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-direct {v1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>()V

    .line 356
    .local v1, "appInfo":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v1, p3, p4}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppId(J)V

    .line 357
    invoke-virtual {v1, p5}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppVersion(I)V

    .line 358
    const-string/jumbo v2, "Preloaded app, unknown"

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setName(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, p1}, Landroid/hardware/location/NanoAppInstanceInfo;->setContexthubId(I)V

    .line 360
    invoke-virtual {v1, p2}, Landroid/hardware/location/NanoAppInstanceInfo;->setHandle(I)V

    .line 361
    const-string/jumbo v2, "Preloaded app, unknown"

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setPublisher(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededExecMemBytes(I)V

    .line 363
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededReadMemBytes(I)V

    .line 364
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededWriteMemBytes(I)V

    .line 367
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    const-string/jumbo v0, "Updated"

    .line 373
    .local v0, "action":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v2, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " app instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    const-string/jumbo v4, " version "

    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v5

    .line 370
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "Added"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkPermissions()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    const-string/jumbo v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private deleteAppInstance(I)I
    .locals 2
    .param p1, "appInstanceHandle"    # I

    .prologue
    .line 381
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    const/4 v0, -0x1

    return v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private native nativeInitialize()[Landroid/hardware/location/ContextHubInfo;
.end method

.method private native nativeSendMessage([I[B)I
.end method

.method private onMessageReceipt([I[B)I
    .locals 9
    .param p1, "header"    # [I
    .param p2, "data"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 324
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 325
    :cond_0
    const/4 v5, -0x1

    return v5

    .line 324
    :cond_1
    array-length v5, p1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 327
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 328
    .local v1, "callbacksCount":I
    if-ge v1, v7, :cond_2

    .line 329
    const-string/jumbo v5, "ContextHubService"

    const-string/jumbo v6, "No message callbacks registered."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v8

    .line 333
    :cond_2
    new-instance v4, Landroid/hardware/location/ContextHubMessage;

    aget v5, p1, v8

    .line 334
    aget v6, p1, v7

    .line 333
    invoke-direct {v4, v5, v6, p2}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 336
    .local v4, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 337
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IContextHubCallback;

    .line 340
    .local v0, "callback":Landroid/hardware/location/IContextHubCallback;
    const/4 v5, 0x2

    :try_start_0
    aget v5, p1, v5

    .line 341
    const/4 v6, 0x3

    aget v6, p1, v6

    .line 339
    invoke-interface {v0, v5, v6, v4}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ContextHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") calling remote callback ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    .end local v0    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 349
    return v8
.end method

.method private static parseAppId(Landroid/hardware/location/NanoApp;)J
    .locals 8
    .param p0, "app"    # Landroid/hardware/location/NanoApp;

    .prologue
    .line 157
    const v1, 0x4f4e414e

    .line 161
    .local v1, "HEADER_MAGIC":I
    const/4 v2, 0x4

    .line 162
    .local v2, "HEADER_MAGIC_OFFSET":I
    const/16 v0, 0x8

    .line 164
    .local v0, "HEADER_APP_ID_OFFSET":I
    invoke-virtual {p0}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 165
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 164
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 168
    .local v4, "header":Ljava/nio/ByteBuffer;
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const v6, 0x4f4e414e

    if-ne v5, v6, :cond_0

    .line 170
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    .line 172
    :catch_0
    move-exception v3

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoApp;->getAppId()I

    move-result v5

    int-to-long v6, v5

    return-wide v6
.end method

.method private sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 7
    .param p1, "app"    # Landroid/hardware/location/NanoAppInstanceInfo;
    .param p2, "vrModeEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 389
    const/4 v5, 0x4

    new-array v1, v5, [I

    .line 390
    .local v1, "msgHeader":[I
    aput v4, v1, v4

    .line 391
    aput v4, v1, v3

    .line 392
    const/4 v5, -0x1

    const/4 v6, 0x2

    aput v5, v1, v6

    .line 393
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v5

    const/4 v6, 0x3

    aput v5, v1, v6

    .line 395
    new-array v0, v3, [B

    .line 396
    .local v0, "data":[B
    if-eqz p2, :cond_1

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 397
    invoke-direct {p0, v1, v0}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    .line 398
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 399
    const-string/jumbo v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t send VR state change notification ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    return-void

    .end local v2    # "ret":I
    :cond_1
    move v3, v4

    .line 396
    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 295
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const-string/jumbo v3, "Permission Denial: can\'t dump contexthub_service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    return-void

    .line 301
    :cond_0
    const-string/jumbo v3, "Dumping ContextHub Service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v3, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v3, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 313
    .local v1, "nanoAppInstance":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    .end local v1    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 7
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 264
    .local v3, "nanoAppInstance":Ljava/lang/Integer;
    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 266
    .local v2, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p2, v2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v2    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    .end local v3    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 272
    .local v5, "retArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 273
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_2
    return-object v5
.end method

.method public getContextHubHandles()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 130
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v2, v2

    new-array v1, v2, [I

    .line 132
    .local v1, "returnArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 133
    aput v0, v1, v0

    .line 134
    const-string/jumbo v2, "ContextHubService"

    const-string/jumbo v3, "Hub %s is mapped to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 135
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 134
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-object v1
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 1
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 144
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 251
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 8
    .param p1, "contextHubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 185
    if-ltz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 186
    :cond_0
    const-string/jumbo v4, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid contextHubhandle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v4, -0x1

    return v4

    .line 190
    :cond_1
    const/4 v4, 0x6

    new-array v3, v4, [I

    .line 191
    .local v3, "msgHeader":[I
    const/4 v4, 0x2

    aput p1, v3, v4

    .line 192
    const/4 v4, -0x1

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 193
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 194
    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 196
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppId()I

    move-result v4

    int-to-long v0, v4

    .line 199
    .local v0, "appId":J
    const/16 v4, 0x20

    shr-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 202
    const-string/jumbo v4, "ContextHubService"

    const-string/jumbo v5, "Code has not been updated since API fix."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    const-wide/16 v4, -0x1

    and-long/2addr v4, v0

    long-to-int v4, v4

    const/4 v5, 0x4

    aput v4, v3, v5

    .line 208
    const/16 v4, 0x20

    shr-long v4, v0, v4

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 210
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    .line 211
    .local v2, "errVal":I
    if-eqz v2, :cond_3

    .line 212
    const-string/jumbo v4, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Send Message returns error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v4, -0x1

    return v4

    .line 204
    .end local v2    # "errVal":I
    :cond_2
    invoke-static {p2}, Landroid/hardware/location/ContextHubService;->parseAppId(Landroid/hardware/location/NanoApp;)J

    move-result-wide v0

    goto :goto_0

    .line 217
    .restart local v2    # "errVal":I
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 123
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 3
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 284
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 285
    .local v0, "msgHeader":[I
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 286
    const/4 v1, 0x3

    aput p2, v0, v1

    .line 287
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 288
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 290
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v1

    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 8
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 222
    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    .line 223
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 224
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_0

    .line 225
    return v6

    .line 229
    :cond_0
    new-array v2, v7, [I

    .line 230
    .local v2, "msgHeader":[I
    const/4 v3, 0x2

    aput v6, v2, v3

    .line 231
    const/4 v3, 0x3

    aput p1, v2, v3

    .line 232
    const/4 v3, 0x1

    aput v5, v2, v3

    .line 233
    aput v7, v2, v5

    .line 235
    new-array v1, v5, [B

    .line 237
    .local v1, "msg":[B
    invoke-direct {p0, v2, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    return v6

    .line 242
    :cond_1
    return v5
.end method
