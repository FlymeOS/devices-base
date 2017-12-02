.class public Lcom/android/server/media/MediaSessionService;
.super Lcom/android/server/SystemService;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$MessageHandler;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl;,
        Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;,
        Lcom/android/server/media/MediaSessionService$SettingsObserver;,
        Lcom/android/server/media/MediaSessionService$UserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_MEDIA_KEY_EVENT:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionService"

.field private static final WAKELOCK_TIMEOUT:I = 0x1388


# instance fields
.field private final mAllSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mAudioService:Landroid/media/IAudioService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentUserIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

.field final mICallback:Landroid/os/IBinder;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRvc:Landroid/media/IRemoteVolumeController;

.field private final mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field private final mSessionsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/media/MediaSessionService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG_MEDIA_KEY_EVENT:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/media/MediaSessionService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushSessionsChanged(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    const-string/jumbo v0, "MediaSessionService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    .line 82
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG_MEDIA_KEY_EVENT:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    .line 115
    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;-><init>(Lcom/android/server/media/MediaSessionService;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 116
    new-instance v1, Lcom/android/server/media/MediaSessionStack;

    invoke-direct {v1}, Lcom/android/server/media/MediaSessionStack;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 117
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 118
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "handleMediaEvent"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    return-void
.end method

.method private createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 2
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService;->createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private createSessionLocked(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    .locals 12
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "userId"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 447
    .local v11, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-nez v11, :cond_0

    .line 448
    const-string/jumbo v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Request from invalid user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Session request from invalid user."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_0
    new-instance v1, Lcom/android/server/media/MediaSessionRecord;

    .line 453
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    .line 452
    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;-><init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V

    .line 455
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    :try_start_0
    invoke-interface/range {p5 .. p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/media/MediaSessionStack;->addSession(Lcom/android/server/media/MediaSessionRecord;Z)V

    .line 462
    invoke-virtual {v11, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->addSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 466
    sget-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 467
    const-string/jumbo v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Created session for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    return-object v1

    .line 456
    :catch_0
    move-exception v10

    .line 457
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Media Session owner died prematurely."

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v6, 0x0

    .line 306
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 307
    const-string/jumbo v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Destroying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    .line 310
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 311
    .local v1, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->removeSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->removeSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 316
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getCallback()Landroid/media/session/ISessionCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->onDestroy()V

    .line 325
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 305
    return-void

    .line 320
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->destroyLocked()V

    .line 293
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService$UserRecord;->-get2(Lcom/android/server/media/MediaSessionService$UserRecord;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 291
    return-void
.end method

.method private enforceMediaPermissions(Landroid/content/ComponentName;III)V
    .locals 2
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    .line 354
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    const-string/jumbo v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 355
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/media/MediaSessionService;->isEnabledNotificationListener(Landroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    :cond_1
    return-void

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Missing permission to control media."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePackageName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "packageName may not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    .line 334
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 335
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    return-void

    .line 334
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "packageName is not owned by the calling process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforceSystemUiPermission(Ljava/lang/String;II)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 375
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaSessionService;->isCurrentVolumeController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Only system ui may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1
    return-void
.end method

.method private findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 475
    return v0

    .line 473
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 478
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getAudioService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    return-object v1
.end method

.method private isCurrentVolumeController(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    move-result v0

    .line 367
    .local v0, "vcuid":I
    if-lez v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 368
    const/4 v1, 0x1

    return v1

    .line 371
    .end local v0    # "vcuid":I
    :cond_0
    return v2
.end method

.method private isEnabledNotificationListener(Landroid/content/ComponentName;II)Z
    .locals 8
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "forUserId"    # I

    .prologue
    const/4 v7, 0x0

    .line 394
    if-eq p2, p3, :cond_0

    .line 396
    return v7

    .line 398
    :cond_0
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 399
    const-string/jumbo v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Checking if enabled notification listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    if-eqz p1, :cond_5

    .line 402
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 403
    const-string/jumbo v5, "enabled_notification_listeners"

    .line 402
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 406
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "components":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 409
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 410
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 413
    const-string/jumbo v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ok to get sessions. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 414
    const-string/jumbo v6, " is authorized notification listener"

    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 407
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 422
    const-string/jumbo v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not ok to get sessions. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 423
    const-string/jumbo v6, " is not in list of ENABLED_NOTIFICATION_LISTENERS for user "

    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v2    # "enabledNotifListeners":Ljava/lang/String;
    :cond_5
    return v7
.end method

.method private pushRemoteVolumeUpdateLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-eqz v3, :cond_0

    .line 511
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaSessionStack;->getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 512
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_1

    :goto_0
    invoke-interface {v3, v2}, Landroid/media/IRemoteVolumeController;->updateRemoteController(Landroid/media/session/ISessionController;)V

    .line 508
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    :goto_1
    return-void

    .line 512
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 513
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionService"

    const-string/jumbo v3, "Error sending default remote volume to sys ui."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private pushSessionsChanged(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 482
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 483
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v6, p1}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 484
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 485
    .local v4, "size":I
    if-lez v4, :cond_0

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0, v6}, Lcom/android/server/media/MediaSessionService;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 488
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 490
    new-instance v8, Landroid/media/session/MediaSession$Token;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 493
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 494
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 495
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, p1, :cond_3

    .line 497
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "MediaSessionService"

    const-string/jumbo v8, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v4    # "size":I
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v1    # "i":I
    .restart local v3    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    .restart local v4    # "size":I
    .restart local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    :cond_4
    monitor-exit v7

    .line 481
    return-void
.end method

.method private rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v1

    .line 521
    .local v1, "receiver":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 522
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 523
    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService$UserRecord;->-set0(Lcom/android/server/media/MediaSessionService$UserRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 524
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 525
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 527
    const-string/jumbo v4, "media_button_receiver"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 528
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    .line 526
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 519
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private updateActiveSessionListeners()V
    .locals 9

    .prologue
    .line 265
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 267
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .local v3, "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get0(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get2(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v6

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get3(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v7

    .line 270
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get4(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)I

    move-result v8

    .line 269
    invoke-direct {p0, v4, v6, v7, v8}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string/jumbo v4, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ActiveSessionsListener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get0(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 273
    const-string/jumbo v7, " is no longer authorized. Disconnecting."

    .line 272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :try_start_3
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->-get1(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v4

    .line 277
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v4, v6}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 278
    :catch_1
    move-exception v1

    .local v1, "e1":Ljava/lang/Exception;
    goto :goto_1

    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "listener":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    monitor-exit v5

    .line 264
    return-void

    .line 265
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private updateUser()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 243
    .local v1, "manager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 245
    .local v0, "currentUser":I
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v4

    .line 246
    .local v4, "userIds":[I
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 247
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    .line 248
    array-length v7, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget v2, v4, v5

    .line 249
    .local v2, "userId":I
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 253
    .end local v2    # "userId":I
    :cond_0
    const-string/jumbo v5, "MediaSessionService"

    const-string/jumbo v7, "Failed to get enabled profiles."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mCurrentUserIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userId$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 257
    .restart local v2    # "userId":I
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 258
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/media/MediaSessionService$UserRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8, v2}, Lcom/android/server/media/MediaSessionService$UserRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/content/Context;I)V

    invoke-virtual {v5, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 241
    .end local v0    # "currentUser":I
    .end local v1    # "manager":Landroid/os/UserManager;
    .end local v2    # "userId":I
    .end local v3    # "userId$iterator":Ljava/util/Iterator;
    .end local v4    # "userIds":[I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v0    # "currentUser":I
    .restart local v1    # "manager":Landroid/os/UserManager;
    .restart local v3    # "userId$iterator":Ljava/util/Iterator;
    .restart local v4    # "userIds":[I
    :cond_3
    monitor-exit v6

    .line 240
    return-void
.end method


# virtual methods
.method destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 234
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected enforcePhoneStatePermission(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Must hold the MODIFY_PHONE_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 215
    return-void
.end method

.method public notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    if-nez v1, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IRemoteVolumeController;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v2, "Error sending volume change to system UI."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string/jumbo v0, "MediaSessionService"

    const-string/jumbo v2, "Unknown session changed playback type. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 184
    return-void

    .line 186
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 180
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "updateSessions":Z
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    const-string/jumbo v1, "MediaSessionService"

    const-string/jumbo v3, "Unknown session changed playback state. Ignoring."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 171
    return-void

    .line 173
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/media/MediaSessionStack;->onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .local v0, "updateSessions":Z
    monitor-exit v2

    .line 175
    if-eqz v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 166
    :cond_1
    return-void

    .line 168
    .local v0, "updateSessions":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "media_session"

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionManagerImpl:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 124
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 125
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 127
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;

    .line 128
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 129
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    new-instance v0, Lcom/android/server/media/MediaSessionService$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SettingsObserver;-><init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .line 131
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSettingsObserver:Lcom/android/server/media/MediaSessionService$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SettingsObserver;->-wrap0(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V

    .line 133
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 122
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 192
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 191
    return-void
.end method

.method public onStopUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 204
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 207
    .local v0, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService;->destroyUserLocked(Lcom/android/server/media/MediaSessionService$UserRecord;)V

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 203
    return-void

    .line 205
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 198
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService;->updateUser()V

    .line 197
    return-void
.end method

.method sessionDied(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 228
    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, "MediaSessionService"

    const-string/jumbo v2, "Unknown session updated. Ignoring."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 145
    return-void

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionStack;->onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 149
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(III)V

    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
