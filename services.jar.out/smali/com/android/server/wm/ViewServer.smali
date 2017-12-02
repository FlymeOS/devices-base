.class Lcom/android/server/wm/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ViewServer$ViewServerWorker;
    }
.end annotation


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ViewServer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/ViewServer;->LOG_TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "port"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    iput p2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    .line 87
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v3, 0x0

    .line 189
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 190
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    const/4 v5, 0x1

    .line 198
    .local v5, "result":Z
    if-eqz v4, :cond_0

    .line 200
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 206
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return v5

    .line 201
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 195
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "result":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 196
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v5, 0x0

    .line 198
    .restart local v5    # "result":Z
    if-eqz v3, :cond_1

    .line 200
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 201
    :catch_2
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v6

    .line 198
    .end local v3    # "out":Ljava/io/BufferedWriter;
    :goto_3
    if-eqz v3, :cond_2

    .line 200
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 197
    :cond_2
    :goto_4
    throw v6

    .line 201
    :catch_3
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .restart local v5    # "result":Z
    goto :goto_4

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "result":Z
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 195
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 166
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v3, v4, :cond_1

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 170
    .local v0, "client":Ljava/net/Socket;
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/server/wm/ViewServer$ViewServerWorker;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;-><init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0    # "client":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/wm/ViewServer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Connection error: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "client":Ljava/net/Socket;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 165
    .end local v0    # "client":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    .line 109
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 129
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 137
    iput-object v4, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    .line 139
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    const/4 v2, 0x1

    return v2

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/wm/ViewServer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not stop all view server threads"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/wm/ViewServer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not close the view server"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
