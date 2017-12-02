.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$1;,
        Landroid/hardware/location/ContextHubManager$Callback;,
        Landroid/hardware/location/ContextHubManager$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private mContextHubService:Landroid/hardware/location/IContextHubService;

.field private mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v2, Landroid/hardware/location/ContextHubManager$1;

    invoke-direct {v2, p0}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;)V

    iput-object v2, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    .line 392
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    .line 394
    const-string/jumbo v2, "contexthub_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 395
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 396
    invoke-static {v0}, Landroid/hardware/location/IContextHubService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/location/ContextHubManager;->mContextHubService:Landroid/hardware/location/IContextHubService;

    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    invoke-interface {v2, v3}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not register callback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "ContextHubManager"

    const-string/jumbo v3, "failed to getService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBinder()Landroid/hardware/location/IContextHubService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mContextHubService:Landroid/hardware/location/IContextHubService;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Service not connected."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mContextHubService:Landroid/hardware/location/IContextHubService;

    return-object v0
.end method


# virtual methods
.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, "retVal":[I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 240
    .end local v1    # "retVal":[I
    :goto_0
    return-object v1

    .line 237
    .restart local v1    # "retVal":[I
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not query nanoApp instance :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContextHubHandles()[I
    .locals 5

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "retVal":[I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    .end local v1    # "retVal":[I
    :goto_0
    return-object v1

    .line 98
    .restart local v1    # "retVal":[I
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not fetch context hub handles : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 5
    .param p1, "hubHandle"    # I

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "retVal":Landroid/hardware/location/ContextHubInfo;
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .end local v1    # "retVal":Landroid/hardware/location/ContextHubInfo;
    :goto_0
    return-object v1

    .line 116
    .restart local v1    # "retVal":Landroid/hardware/location/ContextHubInfo;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not fetch context hub info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 5
    .param p1, "nanoAppHandle"    # I

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 215
    .local v1, "retVal":Landroid/hardware/location/NanoAppInstanceInfo;
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    .end local v1    # "retVal":Landroid/hardware/location/NanoAppInstanceInfo;
    :goto_0
    return-object v1

    .line 216
    .restart local v1    # "retVal":Landroid/hardware/location/NanoAppInstanceInfo;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not fetch nanoApp info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;

    .prologue
    .line 143
    const/4 v1, -0x1

    .line 145
    .local v1, "retVal":I
    if-nez p2, :cond_0

    .line 146
    return v1

    .line 150
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not load nanoApp :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Max number of callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 321
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 322
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 324
    const/4 v0, 0x0

    return v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eqz v0, :cond_0

    .line 298
    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Max number of local callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, -0x1

    return v0

    .line 301
    :cond_0
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;

    .prologue
    .line 263
    const/4 v1, -0x1

    .line 265
    .local v1, "retVal":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v2, "ContextHubManager"

    const-string/jumbo v3, "null ptr"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 270
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 275
    :goto_0
    return v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not send message :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unloadNanoApp(I)I
    .locals 5
    .param p1, "nanoAppHandle"    # I

    .prologue
    .line 174
    const/4 v1, -0x1

    .line 177
    .local v1, "retVal":I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not fetch unload nanoApp :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eq p1, v0, :cond_0

    .line 339
    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Cannot recognize callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 346
    const/4 v0, 0x0

    return v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;

    .prologue
    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eq p1, v0, :cond_0

    .line 355
    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Cannot recognize local callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
