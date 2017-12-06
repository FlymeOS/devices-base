.class public Lcom/android/server/am/Ams_Interface;
.super Ljava/lang/Object;
.source "Ams_Interface.java"


# static fields
.field public static AMS:Lcom/android/server/am/ActivityManagerService; = null

.field private static LAST_DIED_FAVORITE_APPS:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESTART_FOR_KILL_REASON:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "Ams_Interface"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/am/Ams_Interface;->LAST_DIED_FAVORITE_APPS:Ljava/util/Hashtable;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "crash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "anr"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "from pid"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "remove task"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/Ams_Interface;->RESTART_FOR_KILL_REASON:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 86
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v1, :cond_1

    .line 87
    const/4 v6, 0x0

    .line 88
    .local v6, "oom":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 89
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .end local v6    # "oom":Lcom/android/server/am/ProcessRecord;
    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 93
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 94
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 95
    if-nez v6, :cond_3

    .line 96
    :goto_0
    if-nez v6, :cond_4

    const/4 v5, 0x0

    .line 91
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/shrinker/Shrinker;->setAdj(Landroid/content/pm/ApplicationInfo;IILandroid/content/pm/ApplicationInfo;I)V

    .line 100
    :cond_1
    const-string/jumbo v0, "com.meizu.flyme.xtemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 85
    :cond_2
    return-void

    .line 95
    :cond_3
    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 96
    :cond_4
    iget v5, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1
.end method

.method public static getHomePackage()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    return-object v1

    .line 182
    :cond_0
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 185
    :cond_1
    return-object v1
.end method

.method public static isFavoriteApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->isFavorite(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->isBadApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHeavyApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-static {v1, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "flags":I
    and-int/lit16 v2, v0, 0xe0

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->isBadApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRestartFavoriteApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 13
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x0

    .line 49
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 50
    .local v3, "process":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mFlymeKilledReason:Ljava/lang/String;

    .line 51
    .local v6, "reason":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/am/Ams_Utils;->getCloneId(Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v3}, Lcom/android/server/am/Ams_Interface;->isFavoriteApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "allowRestart":Z
    if-nez v6, :cond_2

    const/4 v0, 0x1

    .line 57
    .local v0, "accept":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 58
    sget-object v10, Lcom/android/server/am/Ams_Interface;->RESTART_FOR_KILL_REASON:[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_0

    aget-object v2, v10, v8

    .line 59
    .local v2, "killReason":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 60
    const/4 v0, 0x1

    .line 66
    .end local v2    # "killReason":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_4

    return v9

    .line 52
    .end local v0    # "accept":Z
    .end local v1    # "allowRestart":Z
    :cond_1
    return v9

    .line 56
    .restart local v1    # "allowRestart":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "accept":Z
    goto :goto_0

    .line 58
    .restart local v2    # "killReason":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 67
    .end local v2    # "killReason":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 68
    .local v4, "now":J
    sget-object v8, Lcom/android/server/am/Ams_Interface;->LAST_DIED_FAVORITE_APPS:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 69
    sget-object v8, Lcom/android/server/am/Ams_Interface;->LAST_DIED_FAVORITE_APPS:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 70
    .local v7, "time":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0xbb8

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 71
    :cond_5
    sget-object v8, Lcom/android/server/am/Ams_Interface;->LAST_DIED_FAVORITE_APPS:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v1, 0x1

    .line 79
    .end local v7    # "time":Ljava/lang/Long;
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 80
    const-string/jumbo v8, "Ams_Interface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Preload Process ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_7
    return v1

    .line 75
    :cond_8
    sget-object v8, Lcom/android/server/am/Ams_Interface;->LAST_DIED_FAVORITE_APPS:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static loadFavoriteApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/Ams_Interface;->startProcess(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static final modifyOomAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/16 v3, 0x190

    const/16 v2, 0xc8

    const/16 v1, 0x9

    .line 30
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/Ams_Interface;->isHeavyApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    if-le v0, v3, :cond_0

    .line 32
    iput v3, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 33
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 34
    const-string/jumbo v0, "alphame"

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 36
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-le v0, v1, :cond_1

    .line 37
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 29
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p0, :cond_1

    .line 40
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    if-le v0, v2, :cond_1

    .line 41
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 42
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 43
    const-string/jumbo v0, "alphame"

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static scheduleTrimMemory(IIZ)Z
    .locals 6
    .param p0, "pid"    # I
    .param p1, "level"    # I
    .param p2, "critical"    # Z

    .prologue
    const/4 v5, 0x0

    .line 156
    sget-object v2, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    if-nez v2, :cond_0

    return v5

    .line 157
    :cond_0
    sget-object v3, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    sget-object v2, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    sget-object v2, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    if-nez v0, :cond_1

    monitor-exit v3

    .line 157
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 164
    return v5

    .line 159
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :catchall_1
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 167
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 169
    :try_start_5
    iput p1, v0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    .line 170
    new-instance v2, Landroid/app/FlymeExtIApplicationThreadProxy;

    invoke-direct {v2}, Landroid/app/FlymeExtIApplicationThreadProxy;-><init>()V

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/app/FlymeExtIApplicationThreadProxy;->scheduleShrinkMemory(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    :goto_0
    const/4 v2, 0x1

    monitor-exit v3

    .line 157
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 174
    return v2

    :cond_2
    monitor-exit v3

    .line 157
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 177
    return v5

    .line 171
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static startProcess(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    if-nez v7, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v8, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 120
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 122
    const/4 v10, 0x0

    .line 120
    invoke-interface {v7, v5, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 124
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    .line 125
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v10, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v11, 0x1

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 126
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_1

    .line 127
    :cond_2
    if-nez v0, :cond_4

    .line 128
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v4, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 129
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v7, v9, :cond_3

    .line 130
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v9, v10, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 133
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 139
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x0

    .line 138
    invoke-interface {v7, v9, v11, v10}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :goto_1
    :try_start_3
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_1

    .line 145
    sget-object v7, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->startFlymeProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "Ams_Interface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadProcesses : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    monitor-exit v8

    .line 117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    return-void

    .line 141
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v7, "Ams_Interface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed trying to unstop package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 117
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    .line 140
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static final updateOomAdjLocked(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    return-void
.end method
