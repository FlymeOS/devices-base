.class public Lcom/android/server/wifi/hotspot2/AnqpCache;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    }
.end annotation


# static fields
.field private static final CACHE_RECHECK:J = 0xea60L

.field private static final DBG:Z = false

.field private static final STANDARD_ESS:Z = true


# instance fields
.field private final mANQPCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;",
            "Lcom/android/server/wifi/hotspot2/ANQPData;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mLastSweep:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    .line 25
    return-void
.end method


# virtual methods
.method public clear(ZZ)V
    .locals 14
    .param p1, "all"    # Z
    .param p2, "debug"    # Z

    .prologue
    .line 175
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v7}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 176
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 177
    if-eqz p1, :cond_1

    .line 178
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 179
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v8

    .line 173
    return-void

    .line 181
    :cond_1
    :try_start_1
    iget-wide v10, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    cmp-long v7, v4, v10

    if-lez v7, :cond_0

    .line 182
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v6, "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 176
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 188
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    .line 189
    .local v2, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    if-eqz p2, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Retired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 194
    .end local v2    # "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    :cond_5
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last sweep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anqpData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .line 202
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    return-void
.end method

.method public getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;
    .locals 5
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    const/4 v2, 0x0

    .line 165
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .line 166
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 167
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    monitor-exit v3

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/ANQPData;->isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :goto_0
    return-object v0

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    move-object v0, v2

    .line 170
    goto :goto_0
.end method

.method public initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v3, 0x1

    .line 125
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .line 127
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .line 129
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/wifi/hotspot2/ANQPData;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v5, v6, p1, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 131
    return-object p2

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;->disjoint(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 136
    const-string/jumbo v5, "New ANQP elements for BSSID %012x: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 136
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 138
    return-object v2

    .line 127
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    .end local v2    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    move-result-object v1

    .line 150
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .line 152
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;->merge(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 144
    return-void

    .line 156
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v2, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    .line 157
    .restart local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
