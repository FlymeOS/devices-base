.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 14
    .param p1, "tryCell"    # Z

    .prologue
    .line 1382
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1383
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v9, -0x1

    .line 1384
    .local v9, "upType":I
    const/4 v1, 0x0

    .line 1386
    .local v1, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1388
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1396
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "netType$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1397
    .local v5, "netType":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1400
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1401
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "netType":Ljava/lang/Integer;
    :cond_1
    monitor-exit v11

    .line 1415
    sparse-switch v9, :sswitch_data_0

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()V

    .line 1440
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 1441
    .local v7, "network":Landroid/net/Network;
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 1442
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 1443
    .local v4, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v4, :cond_3

    .line 1447
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Finding IPv4 upstream interface on: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v10

    sget-object v11, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 1448
    invoke-static {v10, v11}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1450
    .local v3, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v3, :cond_8

    .line 1451
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1452
    .local v1, "iface":Ljava/lang/String;
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 1459
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v7

    .line 1460
    .local v7, "network":Landroid/net/Network;
    if-nez v7, :cond_4

    .line 1461
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No Network for upstream type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_4
    invoke-virtual {p0, v7, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 1466
    .end local v4    # "linkProperties":Landroid/net/LinkProperties;
    .end local v7    # "network":Landroid/net/Network;
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 1467
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->lookup(Landroid/net/Network;)Landroid/net/NetworkState;

    move-result-object v8

    .line 1468
    .local v8, "ns":Landroid/net/NetworkState;
    if-eqz v8, :cond_9

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, v8}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1472
    invoke-virtual {p0, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1381
    :cond_6
    :goto_2
    return-void

    .line 1388
    .end local v6    # "netType$iterator":Ljava/util/Iterator;
    .end local v8    # "ns":Landroid/net/NetworkState;
    .local v1, "iface":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 1419
    .restart local v6    # "netType$iterator":Ljava/util/Iterator;
    :sswitch_0
    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    goto/16 :goto_0

    .line 1422
    :sswitch_1
    if-eqz p1, :cond_7

    .line 1423
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    move-result v10

    .line 1422
    if-nez v10, :cond_2

    .line 1426
    :cond_7
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/16 v12, 0x2710

    const v11, 0x50004

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1454
    .restart local v3    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v4    # "linkProperties":Landroid/net/LinkProperties;
    .local v7, "network":Landroid/net/Network;
    :cond_8
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "No IPv4 upstream interface, giving up."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1473
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "ipv4Default":Landroid/net/RouteInfo;
    .end local v4    # "linkProperties":Landroid/net/LinkProperties;
    .end local v7    # "network":Landroid/net/Network;
    .restart local v8    # "ns":Landroid/net/NetworkState;
    :cond_9
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 1476
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    goto :goto_2

    .line 1415
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 1
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1511
    return-void
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .prologue
    .line 1504
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;

    .line 1505
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1506
    .local v0, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    const v2, 0x50070

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1502
    .end local v0    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method protected setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1481
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get3(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, "dnsServers":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 1484
    .local v1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1493
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_1
    return-void

    .line 1486
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v2

    .line 1497
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "Setting DNS forwarders failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1377
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1378
    const/4 v1, 0x1

    return v1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get10(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1369
    return v3

    .line 1373
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1374
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1375
    return v3
.end method

.method protected turnOffUpstreamMobileConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1336
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1338
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 1335
    return-void
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1345
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1361
    :goto_0
    return v5

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1348
    return v4

    .line 1352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1354
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1355
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1356
    :catch_2
    move-exception v1

    .line 1357
    .local v1, "ee":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get9(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 1358
    return v4
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 6
    .param p1, "apnType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1288
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return v4

    .line 1290
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()V

    .line 1296
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1298
    return v5

    .line 1301
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1308
    :pswitch_0
    return v4

    .line 1305
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 1311
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1313
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1314
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1315
    const/4 v3, 0x2

    .line 1314
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1319
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1323
    .local v1, "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    new-instance v3, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {v3}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1330
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v2

    .line 1331
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v3

    .line 1330
    invoke-virtual {v2, v1, v3, v4, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;II)V

    .line 1332
    return v5

    .line 1317
    .end local v1    # "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    .line 1301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
