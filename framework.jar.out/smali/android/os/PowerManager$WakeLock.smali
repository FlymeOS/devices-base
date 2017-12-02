.class public final Landroid/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;,
        Landroid/os/PowerManager$WakeLock$1;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mFlags:I

.field private mHeld:Z

.field private mHistoryTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private final mTraceName:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1169
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 1163
    new-instance v0, Landroid/os/PowerManager$WakeLock$1;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 1170
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 1171
    iput-object p3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 1172
    iput-object p4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1173
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WakeLock ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    .line 1169
    return-void
.end method

.method private acquireLocked()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1242
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-nez v0, :cond_1

    .line 1249
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1250
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1252
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1253
    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1252
    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 1241
    :cond_1
    return-void

    .line 1254
    :catch_0
    move-exception v7

    .line 1255
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method synthetic -android_os_PowerManager$WakeLock_lambda$1(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1409
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 0
    return-void

    .line 1410
    :catchall_0
    move-exception v0

    .line 1411
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1410
    throw v0
.end method

.method public acquire()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1220
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1218
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 1235
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1236
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 1237
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1234
    return-void

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1179
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1180
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_0

    .line 1181
    const-string/jumbo v1, "PowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WakeLock finalized while still held: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const-wide/32 v4, 0x20000

    const/4 v3, 0x0

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1178
    return-void

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1179
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1312
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1311
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1269
    return-void
.end method

.method public release(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 1286
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 1287
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-nez v1, :cond_1

    .line 1288
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1289
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_1

    .line 1290
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    const-wide/32 v4, 0x20000

    const/4 v3, 0x0

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 1299
    :cond_1
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    if-gez v1, :cond_2

    .line 1300
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WakeLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v2

    .line 1285
    return-void
.end method

.method public setHistoryTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1369
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1368
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1206
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 1207
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1205
    return-void

    .line 1206
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1359
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 1358
    return-void
.end method

.method public setUnimportantForLogging(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 1374
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 1373
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    goto :goto_0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1328
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v3

    .line 1329
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1330
    const/4 p1, 0x0

    .line 1334
    .end local p1    # "ws":Landroid/os/WorkSource;
    :cond_0
    if-nez p1, :cond_4

    .line 1335
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 1336
    .local v0, "changed":Z
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1347
    .end local v0    # "changed":Z
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1349
    :try_start_1
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v2, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    .line 1327
    return-void

    .line 1335
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 1337
    .end local v0    # "changed":Z
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_5

    .line 1338
    const/4 v0, 0x1

    .line 1339
    .restart local v0    # "changed":Z
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1328
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1341
    :cond_5
    :try_start_3
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 1342
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 1343
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_1

    .line 1350
    .end local v0    # "changed":Z
    :catch_0
    move-exception v1

    .line 1351
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1380
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 1381
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WakeLock{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1382
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    const-string/jumbo v2, " held="

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    const-string/jumbo v2, ", refCount="

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1383
    const-string/jumbo v2, "}"

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1407
    new-instance v0, Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;

    invoke-direct {v0, p0, p1}, Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    return-object v0
.end method
