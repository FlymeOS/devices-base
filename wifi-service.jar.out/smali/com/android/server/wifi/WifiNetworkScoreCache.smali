.class public Lcom/android/server/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# static fields
.field private static final DBG:Z = false

.field public static final INVALID_NETWORK_SCORE:I = -0x80

.field private static final TAG:Ljava/lang/String; = "WifiNetworkScoreCache"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .locals 4
    .param p1, "network"    # Landroid/net/ScoredNetwork;

    .prologue
    const/4 v3, 0x0

    .line 150
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    .line 151
    :cond_1
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    if-nez v1, :cond_2

    return-object v3

    .line 152
    :cond_2
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v1, v1, Landroid/net/NetworkKey;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 153
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v0, v1, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    .line 154
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    return-object v3

    .line 155
    :cond_3
    iget-object v1, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v1, v1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v1, v1, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_4
    return-object v0

    .line 160
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method private buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 164
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    return-object v2

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "key":Ljava/lang/StringBuilder;
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v2

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v3

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "network":Landroid/net/ScoredNetwork;
    monitor-exit v3

    .line 145
    return-object v1

    .line 143
    .end local v1    # "network":Landroid/net/ScoredNetwork;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public final clearScores()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 177
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    const-string/jumbo v8, "WifiNetworkScoreCache"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v6, "WifiNetworkScoreCache"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v6, "  All score curves:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ScoredNetwork;

    .line 182
    .local v4, "scoredNetwork":Landroid/net/ScoredNetwork;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    const-string/jumbo v7, ", meteredHint="

    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    iget-boolean v7, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/ScoredNetwork;>;"
    .end local v4    # "scoredNetwork":Landroid/net/ScoredNetwork;
    :cond_0
    const-string/jumbo v6, "  Current network scores:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v6, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 187
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "scanResult$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 188
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method public getMeteredHint(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 118
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/ScoredNetwork;->meteredHint:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 97
    const/16 v1, -0x80

    .line 99
    .local v1, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 100
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v1

    .line 108
    :cond_0
    return v1
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;Z)I
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    .prologue
    .line 123
    const/16 v1, -0x80

    .line 125
    .local v1, "score":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 126
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3, p2}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v1

    .line 135
    :cond_0
    return v1
.end method

.method public hasScoreCurve(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    .line 92
    .local v0, "network":Landroid/net/ScoredNetwork;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScoredNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 1
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final updateScores(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez p1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    const-string/jumbo v3, "WifiNetworkScoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScores list size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v4, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v4

    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "network$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ScoredNetwork;

    .line 61
    .local v0, "network":Landroid/net/ScoredNetwork;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "networkKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/server/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "network":Landroid/net/ScoredNetwork;
    .end local v1    # "network$iterator":Ljava/util/Iterator;
    .end local v2    # "networkKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "network$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    .line 53
    return-void
.end method
