.class Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;
.super Ljava/lang/Object;
.source "IPv6TetheringInterfaceServices.java"


# static fields
.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final RFC7421_IP_PREFIX_LENGTH:I = 0x40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHwAddr:[B

.field private final mIfName:Ljava/lang/String;

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/net/IpPrefix;

    const-string/jumbo v1, "fe80::/64"

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/INetworkManagementService;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "nms"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    .line 62
    return-void
.end method

.method private configureLocalDns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "deprecatedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .local p2, "newDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    .line 198
    .local v5, "netd":Landroid/net/INetd;
    if-nez v5, :cond_1

    .line 199
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 200
    :cond_0
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No netd service instance available; not setting local IPv6 addresses"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 206
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 207
    .local v1, "dns":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "dnsString":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v4

    .line 211
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to remove local dns IP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 217
    .end local v1    # "dns":Ljava/net/Inet6Address;
    .end local v2    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "dnsString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 235
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :cond_4
    :goto_1
    return-void

    .line 218
    :cond_5
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 219
    .local v0, "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_6

    .line 220
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 223
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "dns$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 224
    .restart local v1    # "dns":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 226
    .restart local v3    # "dnsString":Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 227
    :catch_1
    move-exception v4

    .line 228
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add local dns IP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    .end local v0    # "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .end local v1    # "dns":Ljava/net/Inet6Address;
    .end local v2    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "dnsString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 237
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to update local DNS caching server"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    goto :goto_1
.end method

.method private configureLocalRoutes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "deprecatedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .local p2, "newPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v4

    .line 153
    .local v4, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v5, v4}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v2

    .line 154
    .local v2, "removalFailures":I
    if-lez v2, :cond_0

    .line 155
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to remove %d IPv6 routes from local table."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 155
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "removalFailures":I
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 158
    .restart local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to remove IPv6 routes from local table: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 166
    .local v0, "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v5, :cond_3

    .line 167
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 170
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    :cond_4
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v3

    .line 187
    .local v3, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 188
    :catch_1
    move-exception v1

    .line 189
    .restart local v1    # "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to add IPv6 routes to local table: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .locals 6
    .param p0, "localPrefix"    # Landroid/net/IpPrefix;

    .prologue
    const/4 v5, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 272
    .local v0, "dnsBytes":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 274
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to construct Inet6Address from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v5
.end method

.method private getLocalRoutesFor(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "prefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v2, "localRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ipp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 264
    .local v0, "ipp":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/RouteInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    .end local v0    # "ipp":Landroid/net/IpPrefix;
    :cond_0
    return-object v2
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 4
    .param p1, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-static {v1, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 247
    .local v0, "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 248
    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 247
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->configureLocalRoutes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 250
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 251
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 250
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->configureLocalDns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 256
    .end local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_1
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 242
    return-void

    .restart local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_2
    move-object v1, v2

    .line 248
    goto :goto_0
.end method


# virtual methods
.method public start()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 85
    .local v1, "ifindex":I
    new-instance v2, Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B

    invoke-direct {v2, v3, v1, v4}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Ljava/lang/String;I[B)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 86
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    .line 88
    return v5

    .line 70
    .end local v1    # "ifindex":I
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/net/SocketException;
    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find NetworkInterface for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    .line 73
    return v5

    .line 78
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/net/SocketException;
    sget-object v2, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find hardware address for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mIfName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    .line 81
    return v5

    .line 91
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "ifindex":I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mNetworkInterface:Ljava/net/NetworkInterface;

    .line 96
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mHwAddr:[B

    .line 97
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 101
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 94
    :cond_0
    return-void
.end method

.method public updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "v6only"    # Landroid/net/LinkProperties;

    .prologue
    .line 112
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v5, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    return-void

    .line 119
    :cond_1
    const/4 v3, 0x0

    .line 121
    .local v3, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p1, :cond_3

    .line 122
    new-instance v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .end local v3    # "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    invoke-direct {v3}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 123
    .local v3, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v5

    iput v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 124
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v5

    iput-boolean v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 126
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "linkAddr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 127
    .local v1, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    .line 129
    new-instance v4, Landroid/net/IpPrefix;

    .line 130
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    .line 129
    invoke-direct {v4, v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 131
    .local v4, "prefix":Landroid/net/IpPrefix;
    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v0

    .line 134
    .local v0, "dnsServer":Ljava/net/Inet6Address;
    if-eqz v0, :cond_2

    .line 135
    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "dnsServer":Ljava/net/Inet6Address;
    .end local v1    # "linkAddr":Landroid/net/LinkAddress;
    .end local v2    # "linkAddr$iterator":Ljava/util/Iterator;
    .end local v3    # "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .end local v4    # "prefix":Landroid/net/IpPrefix;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 143
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 111
    return-void
.end method
