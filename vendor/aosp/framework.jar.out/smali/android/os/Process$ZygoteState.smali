.class public Landroid/os/Process$ZygoteState;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZygoteState"
.end annotation


# instance fields
.field final abiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final inputStream:Ljava/io/DataInputStream;

.field mClosed:Z

.field final socket:Landroid/net/LocalSocket;

.field final writer:Ljava/io/BufferedWriter;


# direct methods
.method private constructor <init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "inputStream"    # Ljava/io/DataInputStream;
    .param p3, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p4, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Landroid/os/Process$ZygoteState;->socket:Landroid/net/LocalSocket;

    .line 413
    iput-object p2, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 414
    iput-object p3, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 415
    iput-object p4, p0, Landroid/os/Process$ZygoteState;->abiList:Ljava/util/List;

    .line 411
    return-void
.end method

.method public static connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .locals 10
    .param p0, "socketAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    const/4 v3, 0x0

    .line 420
    .local v3, "zygoteInputStream":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 421
    .local v6, "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    .line 424
    .local v5, "zygoteSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v7, Landroid/net/LocalSocketAddress;

    .line 425
    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 424
    invoke-direct {v7, p0, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v5, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 427
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .local v4, "zygoteInputStream":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedWriter;

    .end local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v6    # "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v7, Ljava/io/OutputStreamWriter;

    .line 430
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 429
    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 430
    const/16 v8, 0x100

    .line 429
    invoke-direct {v6, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 440
    .local v6, "zygoteWriter":Ljava/io/BufferedWriter;
    invoke-static {v6, v4}, Landroid/os/Process;->-wrap0(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "abiListString":Ljava/lang/String;
    const-string/jumbo v7, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process: zygote socket opened, supported ABIS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v7, Landroid/os/Process$ZygoteState;

    .line 444
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 443
    invoke-direct {v7, v5, v4, v6, v8}, Landroid/os/Process$ZygoteState;-><init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    return-object v7

    .line 431
    .end local v0    # "abiListString":Ljava/lang/String;
    .end local v4    # "zygoteInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .local v6, "zygoteWriter":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 433
    .end local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v6    # "zygoteWriter":Ljava/io/BufferedWriter;
    .local v1, "ex":Ljava/io/IOException;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 437
    :goto_1
    throw v1

    .line 434
    :catch_1
    move-exception v2

    .local v2, "ignore":Ljava/io/IOException;
    goto :goto_1

    .line 431
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ignore":Ljava/io/IOException;
    .restart local v4    # "zygoteInputStream":Ljava/io/DataInputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "zygoteInputStream":Ljava/io/DataInputStream;
    .local v3, "zygoteInputStream":Ljava/io/DataInputStream;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/os/Process$ZygoteState;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/Process$ZygoteState;->mClosed:Z

    .line 451
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "Process"

    const-string/jumbo v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Landroid/os/Process$ZygoteState;->mClosed:Z

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/os/Process$ZygoteState;->abiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
