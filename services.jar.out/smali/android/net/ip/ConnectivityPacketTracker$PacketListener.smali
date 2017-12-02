.class final Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
.super Landroid/net/util/BlockingSocketReader;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/ConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;
    }
.end annotation


# instance fields
.field private final mHwAddr:[B

.field private final mIfIndex:I

.field final synthetic this$0:Landroid/net/ip/ConnectivityPacketTracker;


# direct methods
.method constructor <init>(Landroid/net/ip/ConnectivityPacketTracker;I[BI)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/ConnectivityPacketTracker;
    .param p2, "ifindex"    # I
    .param p3, "hwaddr"    # [B
    .param p4, "mtu"    # I

    .prologue
    .line 103
    iput-object p1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    .line 104
    invoke-direct {p0, p4}, Landroid/net/util/BlockingSocketReader;-><init>(I)V

    .line 105
    iput p2, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mIfIndex:I

    .line 106
    iput-object p3, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mHwAddr:[B

    .line 103
    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->-get0(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener$-void_addLogEntry_java_lang_String_entry_LambdaImpl0;-><init>(Landroid/net/ip/ConnectivityPacketTracker$PacketListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method


# virtual methods
.method synthetic -android_net_ip_ConnectivityPacketTracker$PacketListener_lambda$1(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->-get1(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 0
    return-void
.end method

.method protected createSocket()Ljava/io/FileDescriptor;
    .locals 5

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 116
    .local v1, "s":Ljava/io/FileDescriptor;
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 117
    .local v1, "s":Ljava/io/FileDescriptor;
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->attachControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 118
    new-instance v2, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_ALL:I

    int-to-short v3, v3

    iget v4, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mIfIndex:I

    invoke-direct {v2, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-object v1

    .line 119
    .end local v1    # "s":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Failed to create packet tracking socket: "

    invoke-virtual {p0, v2, v0}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    invoke-static {v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 122
    const/4 v2, 0x0

    return-object v2
.end method

.method protected handlePacket([BI)V
    .locals 4
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 130
    iget-object v1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mHwAddr:[B

    .line 129
    invoke-static {v1, p1, p2}, Landroid/net/util/ConnectivityPacketSummary;->summarize([B[BI)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "summary":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "\n["

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3, p2}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "]"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->-get2(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 139
    return-void
.end method
