.class Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeprecatedInfoTracker"
.end annotation


# instance fields
.field private final mDnses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/Inet6Address;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/IpPrefix;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounters()Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>()V

    return-void
.end method

.method private decrementCounter(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 208
    .local v2, "removed":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 208
    if-eqz v3, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    .local v1, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 213
    const/4 v2, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 219
    .end local v1    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    :cond_1
    return v2
.end method

.method private decrementCounters()Z
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v0

    .line 201
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 202
    return v0
.end method


# virtual methods
.method getDnses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putDnses(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 187
    .local v0, "dns":Ljava/net/Inet6Address;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    .end local v0    # "dns":Ljava/net/Inet6Address;
    :cond_0
    return-void
.end method

.method putPrefixes(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ipp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 173
    .local v0, "ipp":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local v0    # "ipp":Landroid/net/IpPrefix;
    :cond_0
    return-void
.end method

.method removeDnses(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 193
    .local v0, "dns":Ljava/net/Inet6Address;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    .end local v0    # "dns":Ljava/net/Inet6Address;
    :cond_0
    return-void
.end method

.method removePrefixes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ipp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 179
    .local v0, "ipp":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    .end local v0    # "ipp":Landroid/net/IpPrefix;
    :cond_0
    return-void
.end method
