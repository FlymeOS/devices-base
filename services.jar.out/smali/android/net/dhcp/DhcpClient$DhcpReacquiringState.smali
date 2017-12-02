.class abstract Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DhcpReacquiringState"
.end annotation


# instance fields
.field protected mLeaseMsg:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 908
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 913
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 914
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;)V

    .line 912
    return-void
.end method

.method protected abstract packetDestination()Ljava/net/Inet4Address;
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    .line 928
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 929
    :cond_0
    instance-of v1, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v1, :cond_3

    .line 930
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 931
    .local v0, "results":Landroid/net/DhcpResults;
    if-eqz v0, :cond_2

    .line 932
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1, v2}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 933
    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Renewed lease not for our current IP address!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    .line 935
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 937
    :cond_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 943
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->mLeaseMsg:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 927
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_2
    :goto_0
    return-void

    .line 946
    :cond_3
    instance-of v1, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v1, :cond_2

    .line 947
    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Received NAK, returning to INIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    .line 949
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    .prologue
    .line 920
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 921
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 922
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 924
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->packetDestination()Ljava/net/Inet4Address;

    move-result-object v3

    .line 923
    const/4 v4, 0x0

    .line 920
    invoke-static {v1, v0, v2, v4, v3}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method
