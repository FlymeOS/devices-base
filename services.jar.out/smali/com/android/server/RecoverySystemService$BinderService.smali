.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RecoverySystemService;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RecoverySystemService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 204
    const/4 v3, 0x0

    .local v3, "retry":I
    :goto_0
    const/16 v7, 0x1e

    if-ge v3, v7, :cond_2

    .line 205
    const-string/jumbo v7, "init.svc.uncrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "uncryptService":Ljava/lang/String;
    const-string/jumbo v7, "init.svc.setup-bcb"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "setupBcbService":Ljava/lang/String;
    const-string/jumbo v7, "init.svc.clear-bcb"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v7, "running"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 209
    const-string/jumbo v7, "running"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 208
    if-nez v7, :cond_0

    .line 209
    const-string/jumbo v7, "running"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    .local v0, "busy":Z
    :goto_1
    if-nez v0, :cond_1

    .line 218
    return v6

    .end local v0    # "busy":Z
    :cond_0
    move v0, v6

    .line 208
    goto :goto_1

    .line 222
    .restart local v0    # "busy":Z
    :cond_1
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "RecoverySystemService"

    const-string/jumbo v8, "Interrupted:"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 228
    .end local v0    # "busy":Z
    .end local v1    # "clearBcbService":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "setupBcbService":Ljava/lang/String;
    .end local v5    # "uncryptService":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    return v6
.end method

.method private connectService()Landroid/net/LocalSocket;
    .locals 8

    .prologue
    .line 232
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 233
    .local v4, "socket":Landroid/net/LocalSocket;
    const/4 v0, 0x0

    .line 237
    .local v0, "done":Z
    const/4 v3, 0x0

    .local v3, "retry":I
    :goto_0
    const/16 v5, 0x1e

    if-ge v3, v5, :cond_0

    .line 239
    :try_start_0
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "uncrypt"

    .line 240
    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 239
    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    const/4 v0, 0x1

    .line 251
    :cond_0
    if-nez v0, :cond_1

    .line 252
    const-string/jumbo v5, "RecoverySystemService"

    const-string/jumbo v6, "Timed out connecting to uncrypt socket"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v5, 0x0

    return-object v5

    .line 243
    :catch_0
    move-exception v2

    .line 245
    .local v2, "ignored":Ljava/io/IOException;
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :catch_1
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "RecoverySystemService"

    const-string/jumbo v6, "Interrupted:"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 255
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ignored":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 12
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 259
    iget-object v8, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v8}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "android.permission.RECOVERY"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 262
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 263
    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "uncrypt service is unavailable."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v11

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    .line 268
    const-string/jumbo v8, "ctl.start"

    const-string/jumbo v9, "setup-bcb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v6

    .line 275
    .local v6, "socket":Landroid/net/LocalSocket;
    if-nez v6, :cond_2

    .line 276
    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "Failed to connect to uncrypt socket"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v11

    .line 270
    .end local v6    # "socket":Landroid/net/LocalSocket;
    :cond_1
    const-string/jumbo v8, "ctl.start"

    const-string/jumbo v9, "clear-bcb"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :cond_2
    const/4 v1, 0x0

    .line 281
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 283
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    .local v4, "dos":Ljava/io/DataOutputStream;
    if-eqz p1, :cond_3

    .line 288
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 289
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 294
    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 298
    .local v7, "status":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    const/16 v8, 0x64

    if-ne v7, v8, :cond_5

    .line 301
    const-string/jumbo v9, "RecoverySystemService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p1, :cond_4

    const-string/jumbo v8, "setup"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 302
    const-string/jumbo v10, " bcb successfully finished."

    .line 301
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 312
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 317
    const/4 v8, 0x1

    return v8

    .line 301
    :cond_4
    :try_start_3
    const-string/jumbo v8, "clear"

    goto :goto_1

    .line 305
    :cond_5
    const-string/jumbo v8, "RecoverySystemService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 312
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 306
    return v11

    .line 308
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "status":I
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v5

    .line 309
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "IOException when communicating with uncrypt:"

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 310
    return v11

    .line 311
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 312
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 311
    throw v8

    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_3

    .line 308
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearBcb()Z
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 187
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 188
    return-void

    .line 192
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 193
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 184
    return-void

    .line 186
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 18
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .prologue
    .line 80
    invoke-static {}, Lcom/android/server/RecoverySystemService;->-get1()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v13}, Lcom/android/server/RecoverySystemService;->-get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "android.permission.RECOVERY"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    .line 84
    .local v1, "available":Z
    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "uncrypt service is unavailable."

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    const/4 v13, 0x0

    monitor-exit v16

    return v13

    .line 91
    :cond_0
    :try_start_1
    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    const/4 v14, 0x0

    const/4 v11, 0x0

    .local v11, "uncryptFile":Ljava/io/FileWriter;
    :try_start_2
    new-instance v12, Ljava/io/FileWriter;

    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 94
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .local v12, "uncryptFile":Ljava/io/FileWriter;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 99
    if-eqz v12, :cond_1

    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_0
    if-eqz v14, :cond_5

    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v11, v12

    .line 96
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    :goto_1
    :try_start_6
    const-string/jumbo v13, "RecoverySystemService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IOException when writing \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 97
    sget-object v15, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 97
    const-string/jumbo v15, "\":"

    .line 96
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 98
    const/4 v13, 0x0

    monitor-exit v16

    return v13

    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :catch_1
    move-exception v14

    goto :goto_0

    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catch_2
    move-exception v13

    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    :goto_2
    :try_start_7
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v13, v17

    :goto_3
    if-eqz v11, :cond_2

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    :goto_4
    if-eqz v14, :cond_4

    :try_start_9
    throw v14

    .line 95
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 99
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v15

    if-nez v14, :cond_3

    move-object v14, v15

    goto :goto_4

    :cond_3
    if-eq v14, v15, :cond_2

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 80
    .end local v1    # "available":Z
    :catchall_1
    move-exception v13

    monitor-exit v16

    throw v13

    .line 99
    .restart local v1    # "available":Z
    :cond_4
    :try_start_a
    throw v13
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 102
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :cond_5
    :try_start_b
    const-string/jumbo v13, "ctl.start"

    const-string/jumbo v14, "uncrypt"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v9

    .line 106
    .local v9, "socket":Landroid/net/LocalSocket;
    if-nez v9, :cond_6

    .line 107
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "Failed to connect to uncrypt socket"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 108
    const/4 v13, 0x0

    monitor-exit v16

    return v13

    .line 112
    :cond_6
    const/4 v2, 0x0

    .line 113
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 115
    .local v4, "dos":Ljava/io/DataOutputStream;
    :try_start_c
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 116
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_d
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 117
    .local v5, "dos":Ljava/io/DataOutputStream;
    const/high16 v8, -0x80000000

    .line 119
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v8, "lastStatus":I
    :cond_7
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 121
    .local v10, "status":I
    if-ne v10, v8, :cond_8

    const/high16 v13, -0x80000000

    if-ne v8, v13, :cond_7

    .line 124
    :cond_8
    move v8, v10

    .line 126
    if-ltz v10, :cond_a

    const/16 v13, 0x64

    if-gt v10, v13, :cond_a

    .line 128
    const-string/jumbo v13, "RecoverySystemService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "uncrypt read status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 129
    if-eqz p2, :cond_9

    .line 131
    :try_start_f
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 136
    :cond_9
    :goto_5
    const/16 v13, 0x64

    if-ne v10, v13, :cond_7

    .line 137
    :try_start_10
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "uncrypt successfully finished."

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 158
    :try_start_11
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 163
    const/4 v13, 0x1

    monitor-exit v16

    return v13

    .line 132
    :catch_5
    move-exception v7

    .line 133
    .local v7, "ignored":Landroid/os/RemoteException;
    :try_start_12
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "RemoteException when posting progress"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_5

    .line 154
    .end local v7    # "ignored":Landroid/os/RemoteException;
    .end local v10    # "status":I
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 155
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "lastStatus":I
    :goto_6
    :try_start_13
    const-string/jumbo v13, "RecoverySystemService"

    const-string/jumbo v14, "IOException when reading status: "

    invoke-static {v13, v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 158
    :try_start_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 156
    const/4 v13, 0x0

    monitor-exit v16

    return v13

    .line 146
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "lastStatus":I
    .restart local v10    # "status":I
    :cond_a
    :try_start_15
    const-string/jumbo v13, "RecoverySystemService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "uncrypt failed with status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 158
    :try_start_16
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 151
    const/4 v13, 0x0

    monitor-exit v16

    return v13

    .line 157
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "lastStatus":I
    .end local v10    # "status":I
    :catchall_2
    move-exception v13

    .line 158
    :goto_7
    :try_start_17
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    throw v13
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v13

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v8    # "lastStatus":I
    :catchall_4
    move-exception v13

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_7

    .line 154
    .end local v8    # "lastStatus":I
    .local v2, "dis":Ljava/io/DataInputStream;
    .local v4, "dos":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    goto :goto_6

    .line 99
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_5
    move-exception v13

    goto/16 :goto_3

    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_6
    move-exception v13

    move-object v11, v12

    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .local v11, "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_3

    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v12    # "uncryptFile":Ljava/io/FileWriter;
    :catch_9
    move-exception v13

    move-object v11, v12

    .end local v12    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method
