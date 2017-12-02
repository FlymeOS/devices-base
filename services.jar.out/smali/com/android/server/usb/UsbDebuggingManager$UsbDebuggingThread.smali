.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;
.super Ljava/lang/Thread;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDebuggingManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    .line 82
    const-string/jumbo v0, "UsbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private closeSocketLocked()V
    .locals 5

    .prologue
    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :cond_1
    :goto_1
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private listenToSocket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/16 v4, 0x1000

    :try_start_0
    new-array v0, v4, [B

    .line 132
    .local v0, "buffer":[B
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 133
    .local v1, "count":I
    if-gez v1, :cond_0

    .line 150
    :goto_1
    monitor-enter p0

    .line 151
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 128
    return-void

    .line 137
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    aget-byte v4, v0, v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x4b

    if-ne v4, v5, :cond_1

    .line 138
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 139
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "UsbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->-get2(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 141
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->-get2(Lcom/android/server/usb/UsbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 149
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    .line 150
    monitor-enter p0

    .line 151
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    .line 149
    throw v4

    .line 144
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    :cond_1
    :try_start_4
    const-string/jumbo v4, "UsbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrong message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 145
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 150
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_2
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private openSocketLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v2, "adbd"

    .line 113
    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 112
    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 114
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 117
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 118
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 120
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 121
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 122
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V

    .line 124
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 89
    :goto_0
    monitor-enter p0

    .line 90
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 92
    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->openSocketLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    .line 102
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->listenToSocket()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x3e8

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method sendResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 189
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 185
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "UsbDebuggingManager"

    const-string/jumbo v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 186
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method stopListening()V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    .line 180
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->mStopped:Z

    .line 181
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->closeSocketLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
