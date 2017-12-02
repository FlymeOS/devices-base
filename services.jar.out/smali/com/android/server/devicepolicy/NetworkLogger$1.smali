.class Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Landroid/net/INetdEventCallback$Stub;
.source "NetworkLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/NetworkLogger;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-direct {p0}, Landroid/net/INetdEventCallback$Stub;-><init>()V

    return-void
.end method

.method private sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/app/admin/NetworkEvent;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->-get1(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v2

    .line 78
    const/4 v3, 0x1

    .line 77
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 79
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "network_event"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->-get1(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 7
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->-get0(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/app/admin/ConnectEvent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->-get2(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 73
    .local v0, "connectEvent":Landroid/app/admin/ConnectEvent;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 67
    return-void
.end method

.method public onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "ipAddressesCount"    # I
    .param p4, "timestamp"    # J
    .param p6, "uid"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-get0(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    new-instance v1, Landroid/app/admin/DnsEvent;

    .line 62
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-get2(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p4

    .line 61
    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 63
    .local v1, "dnsEvent":Landroid/app/admin/DnsEvent;
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 57
    return-void
.end method
