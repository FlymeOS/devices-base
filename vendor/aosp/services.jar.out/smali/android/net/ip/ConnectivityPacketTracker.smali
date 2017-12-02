.class public Landroid/net/ip/ConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Landroid/net/util/BlockingSocketReader;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/net/NetworkInterface;Landroid/util/LocalLog;)V
    .locals 7
    .param p1, "netif"    # Ljava/net/NetworkInterface;
    .param p2, "log"    # Landroid/util/LocalLog;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    :try_start_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "ifname":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    .line 77
    .local v2, "ifindex":I
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 78
    .local v1, "hwaddr":[B
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getMTU()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 83
    .local v4, "mtu":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 84
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/net/ip/ConnectivityPacketTracker;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p2, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 86
    new-instance v5, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    invoke-direct {v5, p0, v2, v1, v4}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;-><init>(Landroid/net/ip/ConnectivityPacketTracker;I[BI)V

    iput-object v5, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    .line 68
    return-void

    .line 79
    .end local v1    # "hwaddr":[B
    .end local v2    # "ifindex":I
    .end local v3    # "ifname":Ljava/lang/String;
    .end local v4    # "mtu":I
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "bad network interface"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "--- START ---"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->start()Z

    .line 89
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->stop()V

    .line 96
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "--- STOP ---"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 94
    return-void
.end method
