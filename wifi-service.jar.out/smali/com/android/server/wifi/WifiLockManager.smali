.class public Lcom/android/server/wifi/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLockManager$WifiLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mVerboseLoggingEnabled:Z

.field private final mWifiLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiLockManager$WifiLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiLockManager;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseLock(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 52
    return-void
.end method

.method private declared-synchronized addLock(Lcom/android/server/wifi/WifiLockManager$WifiLock;)Z
    .locals 7
    .param p1, "lock"    # Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .prologue
    monitor-enter p0

    .line 175
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_0

    .line 176
    const-string/jumbo v4, "WifiLockManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addLock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 180
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 181
    const-string/jumbo v4, "WifiLockManager"

    const-string/jumbo v5, "attempted to add a lock when already holding one"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_1
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 186
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "lockAdded":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 191
    .local v2, "ident":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 192
    iget v4, p1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    packed-switch v4, :pswitch_data_0

    .line 203
    :goto_0
    const/4 v1, 0x1

    .line 206
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    .line 208
    return v1

    .line 194
    :pswitch_0
    :try_start_4
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lockAdded":Z
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 197
    .restart local v1    # "lockAdded":Z
    .restart local v2    # "ident":J
    :pswitch_1
    :try_start_6
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 205
    :catchall_1
    move-exception v4

    .line 206
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    :pswitch_2
    :try_start_8
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lock$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .line 255
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit p0

    .line 256
    return-object v0

    .line 259
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "lock$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static isValidLockMode(I)Z
    .locals 2
    .param p0, "lockMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 166
    if-eq p0, v1, :cond_0

    .line 167
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 168
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_0
    return v1
.end method

.method private declared-synchronized releaseLock(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 222
    .local v1, "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-nez v1, :cond_0

    .line 224
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 227
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 228
    const-string/jumbo v4, "WifiLockManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releaseLock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 233
    .local v2, "ident":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 234
    iget v4, v1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    packed-switch v4, :pswitch_data_0

    .line 247
    :goto_0
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :goto_1
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 236
    :pswitch_0
    :try_start_4
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 239
    .restart local v1    # "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .restart local v2    # "ident":J
    :pswitch_1
    :try_start_6
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 246
    :catchall_1
    move-exception v4

    .line 247
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 242
    :pswitch_2
    :try_start_8
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v0

    .line 213
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->unlinkDeathRecipient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 217
    return-object v0

    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public acquireWifiLock(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "lockMode"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/android/server/wifi/WifiLockManager;->isValidLockMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    :cond_1
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p4, v0}, Landroid/os/WorkSource;-><init>(I)V

    .line 80
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :goto_0
    new-instance v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiLockManager$WifiLock;-><init>(Lcom/android/server/wifi/WifiLockManager;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLockManager;->addLock(Lcom/android/server/wifi/WifiLockManager$WifiLock;)Z

    move-result v0

    return v0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    .line 78
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized createMergedWorkSource()Landroid/os/WorkSource;
    .locals 4

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    .line 123
    .local v2, "mergedWS":Landroid/os/WorkSource;
    iget-object v3, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lock$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .line 124
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local v1    # "lock$iterator":Ljava/util/Iterator;
    .end local v2    # "mergedWS":Landroid/os/WorkSource;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "lock$iterator":Ljava/util/Iterator;
    .restart local v2    # "mergedWS":Landroid/os/WorkSource;
    :cond_0
    monitor-exit p0

    .line 126
    return-object v2
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Locks acquired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " full, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    const-string/jumbo v3, " full high perf, "

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    const-string/jumbo v3, " scan"

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Locks released: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " full, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    const-string/jumbo v3, " full high perf, "

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    const-string/jumbo v3, " scan"

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 270
    const-string/jumbo v2, "Locks held:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lock$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    .line 272
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    const-string/jumbo v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_0
    return-void
.end method

.method protected enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 278
    if-lez p1, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    .line 277
    :goto_0
    return-void

    .line 281
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    goto :goto_0
.end method

.method public declared-synchronized getStrongestLockMode()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v0, v1, :cond_1

    .line 108
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 111
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-le v0, v1, :cond_2

    .line 112
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 115
    :cond_2
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseLock(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    .line 138
    const-string/jumbo v6, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v7, 0x0

    .line 137
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    move-result-object v4

    .line 142
    .local v4, "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-nez v4, :cond_0

    .line 143
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Wifi lock not active"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 147
    .restart local v4    # "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 148
    :cond_1
    new-instance v1, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/os/WorkSource;-><init>(I)V

    .line 154
    .local v1, "newWorkSource":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 156
    .local v2, "ident":J
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v4, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 157
    iput-object v1, v4, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 158
    iget-object v5, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v4, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    .line 135
    return-void

    .line 151
    .end local v1    # "newWorkSource":Landroid/os/WorkSource;
    .end local v2    # "ident":J
    :cond_2
    :try_start_4
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .restart local v1    # "newWorkSource":Landroid/os/WorkSource;
    goto :goto_0

    .line 159
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    .line 161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
