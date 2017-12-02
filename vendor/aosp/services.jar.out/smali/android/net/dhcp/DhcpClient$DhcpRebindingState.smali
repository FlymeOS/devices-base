.class Landroid/net/dhcp/DhcpClient$DhcpRebindingState;
.super Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRebindingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 984
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 985
    const-string/jumbo v0, "Rebound"

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->mLeaseMsg:Ljava/lang/String;

    .line 984
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 990
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->enter()V

    .line 994
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get21(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap8(Ljava/io/FileDescriptor;)V

    .line 995
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap3(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Failed to recreate UDP socket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 989
    :cond_0
    return-void
.end method

.method protected packetDestination()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 1003
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    return-object v0
.end method
