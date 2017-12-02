.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 86
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 85
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 81
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 92
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 93
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    .line 95
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    :cond_0
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    if-eqz p4, :cond_1

    .end local p4    # "logTag":Ljava/lang/String;
    :goto_0
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    .line 91
    return-void

    .line 101
    .restart local p4    # "logTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo p4, "NativeDaemonConnector"

    goto :goto_0
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x22

    .line 517
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    .line 518
    .local v1, "hasSpaces":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 523
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 524
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 526
    .local v0, "c":C
    if-ne v0, v5, :cond_2

    .line 527
    const-string/jumbo v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_2
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_3

    .line 529
    const-string/jumbo v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 531
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 535
    .end local v0    # "c":C
    :cond_4
    if-eqz v1, :cond_5

    .line 536
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    :cond_5
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    const-string/jumbo v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method private listenToSocket()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v19, 0x0

    .line 186
    .local v19, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v20, Landroid/net/LocalSocket;

    invoke-direct/range {v20 .. v20}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    .end local v19    # "socket":Landroid/net/LocalSocket;
    .local v20, "socket":Landroid/net/LocalSocket;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v5

    .line 189
    .local v5, "address":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 191
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 192
    .local v14, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 193
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v23

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 198
    const/4 v12, 0x0

    .line 199
    .local v12, "fdList":[Ljava/io/FileDescriptor;
    const/16 v22, 0x1000

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 200
    .local v6, "buffer":[B
    const/16 v21, 0x0

    .line 203
    .end local v12    # "fdList":[Ljava/io/FileDescriptor;
    .local v21, "start":I
    :goto_0
    move/from16 v0, v21

    rsub-int v0, v0, 0x1000

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 204
    .local v7, "count":I
    if-gez v7, :cond_4

    .line 205
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "got "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " reading with start = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 274
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v22, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v22, :cond_0

    .line 276
    :try_start_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "closing stream for "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 281
    :goto_1
    const/16 v22, 0x0

    :try_start_6
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_0
    monitor-exit v23

    .line 286
    if-eqz v20, :cond_1

    .line 287
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 182
    :cond_1
    :goto_2
    return-void

    .line 192
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v21    # "start":I
    :catchall_0
    move-exception v22

    :try_start_8
    monitor-exit v23

    throw v22
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 269
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    .local v11, "ex":Ljava/io/IOException;
    move-object/from16 v19, v20

    .line 270
    .end local v20    # "socket":Landroid/net/LocalSocket;
    :goto_3
    :try_start_9
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Communications error: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 271
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 272
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v22

    .line 273
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 274
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v24, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v24, :cond_2

    .line 276
    :try_start_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "closing stream for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 281
    :goto_5
    const/16 v24, 0x0

    :try_start_c
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_2
    monitor-exit v23

    .line 286
    if-eqz v19, :cond_3

    .line 287
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 272
    :cond_3
    :goto_6
    throw v22

    .line 208
    .restart local v5    # "address":Landroid/net/LocalSocketAddress;
    .restart local v6    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v20    # "socket":Landroid/net/LocalSocket;
    .restart local v21    # "start":I
    :cond_4
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v12

    .line 211
    .local v12, "fdList":[Ljava/io/FileDescriptor;
    add-int v7, v7, v21

    .line 212
    const/16 v21, 0x0

    .line 214
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    if-ge v13, v7, :cond_b

    .line 215
    aget-byte v22, v6, v13

    if-nez v22, :cond_8

    .line 218
    new-instance v16, Ljava/lang/String;

    .line 219
    sub-int v22, v13, v21

    sget-object v23, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 218
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 221
    .local v16, "rawEvent":Ljava/lang/String;
    const/16 v17, 0x0

    .line 224
    .local v17, "releaseWl":Z
    :try_start_f
    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v10

    .line 226
    .local v10, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "RCV <- {"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "}"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 233
    const/16 v17, 0x1

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    .line 236
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v24

    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 235
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v26

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 237
    .local v15, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result v22

    if-eqz v22, :cond_6

    .line 238
    const/16 v17, 0x0

    .line 246
    .end local v15    # "msg":Landroid/os/Message;
    :cond_6
    :goto_8
    if-eqz v17, :cond_7

    .line 247
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 251
    .end local v10    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_7
    :goto_9
    add-int/lit8 v21, v13, 0x1

    .line 214
    .end local v16    # "rawEvent":Ljava/lang/String;
    .end local v17    # "releaseWl":Z
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 241
    .restart local v10    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v16    # "rawEvent":Ljava/lang/String;
    .restart local v17    # "releaseWl":Z
    :cond_9
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_8

    .line 243
    .end local v10    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v9

    .line 244
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_12
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Problem parsing message "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 246
    if-eqz v17, :cond_7

    .line 247
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    .line 272
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "fdList":[Ljava/io/FileDescriptor;
    .end local v13    # "i":I
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "rawEvent":Ljava/lang/String;
    .end local v17    # "releaseWl":Z
    .end local v21    # "start":I
    :catchall_2
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "socket":Landroid/net/LocalSocket;
    .local v19, "socket":Landroid/net/LocalSocket;
    goto/16 :goto_4

    .line 245
    .end local v19    # "socket":Landroid/net/LocalSocket;
    .restart local v5    # "address":Landroid/net/LocalSocketAddress;
    .restart local v6    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v12    # "fdList":[Ljava/io/FileDescriptor;
    .restart local v13    # "i":I
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v16    # "rawEvent":Ljava/lang/String;
    .restart local v17    # "releaseWl":Z
    .restart local v20    # "socket":Landroid/net/LocalSocket;
    .restart local v21    # "start":I
    :catchall_3
    move-exception v22

    .line 246
    if-eqz v17, :cond_a

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    :cond_a
    throw v22

    .line 255
    .end local v16    # "rawEvent":Ljava/lang/String;
    .end local v17    # "releaseWl":Z
    :cond_b
    if-nez v21, :cond_c

    .line 256
    const-string/jumbo v22, "RCV incomplete"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 261
    :cond_c
    move/from16 v0, v21

    if-eq v0, v7, :cond_d

    .line 262
    move/from16 v0, v21

    rsub-int v0, v0, 0x1000

    move/from16 v18, v0

    .line 263
    .local v18, "remaining":I
    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-static {v6, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 264
    move/from16 v21, v18

    goto/16 :goto_0

    .line 266
    .end local v18    # "remaining":I
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 278
    .end local v12    # "fdList":[Ljava/io/FileDescriptor;
    .end local v13    # "i":I
    :catch_2
    move-exception v8

    .line 279
    .local v8, "e":Ljava/io/IOException;
    :try_start_14
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed closing output stream: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/16 :goto_1

    .line 273
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v22

    monitor-exit v23

    throw v22

    .line 289
    :catch_3
    move-exception v11

    .line 290
    .restart local v11    # "ex":Ljava/io/IOException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Failed closing socket: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 278
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "socket":Landroid/net/LocalSocket;
    .end local v21    # "start":I
    :catch_4
    move-exception v8

    .line 279
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_15
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failed closing output stream: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_5

    .line 273
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v22

    monitor-exit v23

    throw v22

    .line 289
    :catch_5
    move-exception v11

    .line 290
    .restart local v11    # "ex":Ljava/io/IOException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed closing socket: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 269
    .end local v11    # "ex":Ljava/io/IOException;
    .local v19, "socket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    .restart local v11    # "ex":Ljava/io/IOException;
    goto/16 :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "logBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceNumber"    # I
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v6, 0x20

    const/4 v3, 0x0

    .line 318
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_0
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Arguments must be separate from command"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    array-length v4, p4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, p4, v2

    .line 328
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {p0, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 337
    instance-of v5, v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v5, :cond_3

    .line 338
    const-string/jumbo v5, "[scrubbed]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_3
    invoke-static {p1, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 344
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    return-void
.end method

.method private uptimeMillisInt()I
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 586
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 5
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 402
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 403
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get1(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get0(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 396
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 19
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Calling thread "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is holding 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    .line 454
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 455
    new-instance v16, Ljava/lang/Throwable;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Throwable;-><init>()V

    .line 454
    invoke-static/range {v14 .. v16}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 460
    .local v12, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 462
    .local v6, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v9, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .local v7, "logBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    .line 466
    .local v11, "sequenceNumber":I
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v9, v7, v11, v0, v1}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 468
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, "rawCmd":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, "logCmd":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "SND -> {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v15

    .line 474
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v14, :cond_1

    .line 475
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v16, "missing output stream"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 478
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v15

    .line 485
    const/4 v3, 0x0

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v11, v0, v1, v8}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v3

    .line 488
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    if-nez v3, :cond_3

    .line 489
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "timed-out waiting for response to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 490
    new-instance v14, Lcom/android/server/NativeDaemonTimeoutException;

    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    .line 479
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v16, "problem sending command"

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v14

    if-nez v14, :cond_2

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 497
    .local v4, "endTime":J
    sub-long v14, v4, v12

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 498
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "NDC Command {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "} took too long ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v4, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ms)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 501
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 502
    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    .line 504
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 505
    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v14, v8, v3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    .line 508
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/android/server/NativeDaemonEvent;

    return-object v14
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get1(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->-get0(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 436
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 146
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, "event":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v4

    .line 148
    .local v4, "start":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 150
    .local v3, "sent":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v2, v7}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    const-string/jumbo v5, "Unhandled event \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-interface {v5, v6}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_1

    .line 157
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v1

    .line 160
    .local v1, "end":I
    if-le v4, v3, :cond_2

    sub-int v5, v4, v3

    int-to-long v6, v5

    cmp-long v5, v6, v12

    if-lez v5, :cond_2

    .line 161
    const-string/jumbo v5, "NDC event {%s} processed too late: %dms"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    sub-int v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 163
    :cond_2
    if-le v1, v4, :cond_3

    sub-int v5, v1, v4

    int-to-long v6, v5

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 164
    const-string/jumbo v5, "NDC event {%s} took too long: %dms"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    sub-int v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 167
    :cond_3
    :goto_0
    return v9

    .line 153
    .end local v1    # "end":I
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error handling \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-interface {v5, v6}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_4

    .line 157
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_4
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v1

    .line 160
    .restart local v1    # "end":I
    if-le v4, v3, :cond_5

    sub-int v5, v4, v3

    int-to-long v6, v5

    cmp-long v5, v6, v12

    if-lez v5, :cond_5

    .line 161
    const-string/jumbo v5, "NDC event {%s} processed too late: %dms"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    sub-int v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 163
    :cond_5
    if-le v1, v4, :cond_3

    sub-int v5, v1, v4

    int-to-long v6, v5

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 164
    const-string/jumbo v5, "NDC event {%s} took too long: %dms"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    sub-int v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "end":I
    :catchall_0
    move-exception v5

    .line 156
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-interface {v6, v7}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_6

    .line 157
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_6
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v1

    .line 160
    .restart local v1    # "end":I
    if-le v4, v3, :cond_7

    sub-int v6, v4, v3

    int-to-long v6, v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_7

    .line 161
    const-string/jumbo v6, "NDC event {%s} processed too late: %dms"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v10

    sub-int v8, v4, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 163
    :cond_7
    if-le v1, v4, :cond_8

    sub-int v6, v1, v4

    int-to-long v6, v6

    cmp-long v6, v6, v12

    if-lez v6, :cond_8

    .line 164
    const-string/jumbo v6, "NDC event {%s} took too long: %dms"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v10

    sub-int v8, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 155
    :cond_8
    throw v5
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 579
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 132
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 136
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 139
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 109
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 127
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 125
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitForCallbacks()V
    .locals 4

    .prologue
    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must not call this method on callback thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 358
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/NativeDaemonConnector$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/NativeDaemonConnector$1;-><init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Interrupted while waiting for unsolicited response handling"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
