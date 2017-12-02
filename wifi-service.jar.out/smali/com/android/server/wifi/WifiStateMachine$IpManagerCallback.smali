.class Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;
.super Landroid/net/ip/IpManager$Callback;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 2
    .param p1, "filter"    # [B

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200ca

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1270
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1260
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 4
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 1238
    if-eqz p1, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200c8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1237
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200c9

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1242
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    .line 1244
    const/4 v3, 0x3

    .line 1242
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPostDhcpAction()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x30004

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1232
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1227
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008b

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1255
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1251
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008a

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1249
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMsg"    # Ljava/lang/String;

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20095

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1265
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x200cb

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1275
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x200cc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1280
    return-void

    .line 1281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
