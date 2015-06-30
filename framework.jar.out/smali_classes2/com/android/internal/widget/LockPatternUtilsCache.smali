.class public Lcom/android/internal/widget/LockPatternUtilsCache;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    }
.end annotation


# static fields
.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

.field private final mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ILockSettings;)V
    .locals 3
    .param p1, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    .line 44
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    .line 209
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtilsCache$1;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    .line 57
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtilsCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 48
    const-class v1, Lcom/android/internal/widget/LockPatternUtilsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtilsCache;-><init>(Lcom/android/internal/widget/ILockSettings;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateCache(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private peekCache(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCache(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 110
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 111
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, p3, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 88
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 92
    :goto_0
    return-wide v0

    .line 90
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 91
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, p4, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 98
    check-cast v1, Ljava/lang/String;

    .line 102
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 100
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    move-object v1, v0

    .line 102
    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 159
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 161
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    move-result v0

    .line 162
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 148
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 150
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z

    move-result v0

    .line 151
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 174
    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V

    .line 169
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 70
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 131
    const-string v1, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 119
    const-string v1, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 179
    return-void
.end method
