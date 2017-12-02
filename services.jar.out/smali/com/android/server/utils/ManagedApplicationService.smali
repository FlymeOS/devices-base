.class public Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/ManagedApplicationService$1;,
        Lcom/android/server/utils/ManagedApplicationService$BinderChecker;,
        Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBoundInterface:Landroid/os/IInterface;

.field private final mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

.field private final mClientLabel:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private mPendingConnection:Landroid/content/ServiceConnection;

.field private mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

.field private final mSettingsAction:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object p1
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "clientLabel"    # I
    .param p5, "settingsAction"    # Ljava/lang/String;
    .param p6, "binderChecker"    # Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 70
    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 71
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    .line 72
    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .line 67
    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "clientLabel"    # I
    .param p4, "settingsAction"    # Ljava/lang/String;
    .param p5, "binderChecker"    # Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .prologue
    .line 107
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)V

    return-object v0
.end method

.method private matches(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public connect()V
    .locals 9

    .prologue
    .line 187
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit v5

    .line 190
    return-void

    .line 194
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 193
    invoke-static {v4, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 195
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 196
    const-string/jumbo v6, "android.intent.extra.client_label"

    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    .line 195
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 197
    const-string/jumbo v6, "android.intent.extra.client_intent"

    .line 195
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/ManagedApplicationService$2;-><init>(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/Intent;)V

    .line 249
    .local v3, "serviceConnection":Landroid/content/ServiceConnection;
    iput-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :try_start_2
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 254
    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 253
    const v7, 0x4000001

    .line 252
    invoke-virtual {v4, v1, v3, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 255
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to bind service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v5

    .line 186
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to bind service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "serviceConnection":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;

    .line 174
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 168
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disconnectIfNotMatching(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService;->matches(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    return v0
.end method

.method public sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 151
    .local v1, "iface":Landroid/os/IInterface;
    if-nez v1, :cond_0

    .line 152
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 156
    if-eqz v1, :cond_1

    .line 158
    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 149
    .end local v1    # "iface":Landroid/os/IInterface;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 159
    .restart local v1    # "iface":Landroid/os/IInterface;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Received exception from user service: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
