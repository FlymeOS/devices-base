.class public Lcom/android/server/net/NetlinkTracker;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "NetlinkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetlinkTracker$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

.field private mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/net/NetlinkTracker$Callback;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetlinkTracker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->TAG:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 86
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 87
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 82
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 91
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string/jumbo v1, "addressRemoved"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit p0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 132
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string/jumbo v1, "addressUpdated"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit p0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 118
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearLinkProperties()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 198
    :try_start_0
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 199
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 200
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 194
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string/jumbo v1, "interfaceDnsServerInfo"

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/net/DnsServerRepository;->addServers(J[Ljava/lang/String;)Z

    move-result v0

    .line 178
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    iget-object v2, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Lcom/android/server/net/DnsServerRepository;->setDnsServersOn(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 182
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 174
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 179
    .restart local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v0, "interfaceRemoved"

    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 113
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v0}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 105
    :cond_0
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v1, "routeRemoved"

    invoke-direct {p0, v1, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit p0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 160
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string/jumbo v1, "routeUpdated"

    invoke-direct {p0, v1, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, p1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit p0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    invoke-interface {v1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 146
    .end local v0    # "changed":Z
    :cond_0
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
