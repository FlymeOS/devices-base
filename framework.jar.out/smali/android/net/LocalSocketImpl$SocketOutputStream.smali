.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/LocalSocketImpl;

    .prologue
    .line 121
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 124
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v4, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v4}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 167
    .local v2, "myFd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "socket closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_0
    new-instance v3, Landroid/util/MutableInt;

    invoke-direct {v3, v5}, Landroid/util/MutableInt;-><init>(I)V

    .line 174
    .local v3, "pending":Landroid/util/MutableInt;
    :goto_0
    :try_start_0
    sget v4, Landroid/system/OsConstants;->TIOCOUTQ:I

    invoke-static {v2, v4, v3}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    iget v4, v3, Landroid/util/MutableInt;->value:I

    if-gtz v4, :cond_1

    .line 165
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 185
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v1

    .local v1, "ie":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 153
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 154
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1, p1, v0}, Landroid/net/LocalSocketImpl;->-wrap2(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 150
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    .line 130
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 139
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 141
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 142
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 141
    :cond_2
    add-int v1, p2, p3

    array-length v3, p1

    if-gt v1, v3, :cond_1

    .line 144
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 136
    return-void
.end method
