.class public Lcom/android/server/wifi/ScanDetailCache;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScanDetailCache"


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const/high16 v1, 0x3f400000    # 0.75f

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    return-void
.end method

.method private sort()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/ScanDetailCache$2;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    :cond_0
    return-object v0
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v0

    .line 69
    .local v0, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    goto :goto_0
.end method

.method getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    return-object v0
.end method

.method public getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 1
    .param p1, "age"    # J

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByPasspointMatch(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/ScanDetailCache;->getVisibilityByRssi(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityByPasspointMatch(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 15
    .param p1, "age"    # J

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 230
    .local v2, "now_ms":J
    const/4 v5, 0x0

    .local v5, "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    const/4 v6, 0x0

    .line 232
    .local v6, "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    iget-object v10, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v6    # "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .local v4, "pmi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    .line 233
    .local v1, "pmi":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    move-result-object v8

    .line 234
    .local v8, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v8, :cond_0

    .line 235
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 236
    .local v7, "result":Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_0

    .line 238
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 240
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v10, v2, v10

    cmp-long v10, v10, p1

    if-gtz v10, :cond_0

    .line 242
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 243
    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    move-result v10

    if-gez v10, :cond_0

    .line 244
    :cond_1
    move-object v6, v1

    .local v6, "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    goto :goto_0

    .line 246
    .end local v6    # "pmiBest5":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    :cond_2
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 247
    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->compareTo(Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;)I

    move-result v10

    if-gez v10, :cond_0

    .line 248
    :cond_3
    move-object v5, v1

    .local v5, "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    goto :goto_0

    .line 253
    .end local v1    # "pmi":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v5    # "pmiBest24":Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v8    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    new-instance v9, Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>()V

    .line 254
    .local v9, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    const-string/jumbo v0, "Visiblity by passpoint match returned "

    .line 255
    .local v0, "logMsg":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 256
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 257
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 258
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 259
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "5 GHz BSSID of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    if-eqz v5, :cond_6

    .line 263
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;->getScanDetail()Lcom/android/server/wifi/ScanDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 264
    .restart local v7    # "result":Landroid/net/wifi/ScanResult;
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 265
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 266
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    .line 267
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "2.4 GHz BSSID of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    const-string/jumbo v10, "ScanDetailCache"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v9
.end method

.method public getVisibilityByRssi(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 13
    .param p1, "age"    # J

    .prologue
    .line 171
    new-instance v7, Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>()V

    .line 173
    .local v7, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 174
    .local v2, "now_ms":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 175
    .local v0, "now_elapsed_ms":J
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    .line 176
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 177
    .local v4, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 181
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    iget v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 191
    :cond_1
    :goto_1
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 197
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long v8, v0, v8

    cmp-long v8, v8, p1

    if-gtz v8, :cond_0

    .line 203
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 204
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    iget v9, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-le v8, v9, :cond_0

    .line 205
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 206
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 207
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 188
    iget v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    goto :goto_1

    .line 200
    :cond_4
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v8, v2, v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_2

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 210
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    iget v9, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v8, v9, :cond_0

    .line 211
    iget v8, v4, Landroid/net/wifi/ScanResult;->level:I

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 212
    iget-wide v8, v4, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 213
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    goto :goto_0

    .line 218
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_6
    return-object v7
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method keySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method put(Lcom/android/server/wifi/ScanDetail;)V
    .locals 1
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 53
    return-void
.end method

.method put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "match"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .param p3, "homeSp"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/wifi/hotspot2/PasspointMatchInfo;-><init>(Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    .prologue
    .line 294
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v18, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v21, "Scan Cache:  "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;

    move-result-object v12

    .line 298
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 299
    .local v16, "now_ms":J
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 300
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "scanDetail$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wifi/ScanDetail;

    .line 301
    .local v19, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v13

    .line 302
    .local v13, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v22

    sub-long v14, v16, v22

    .line 303
    .local v14, "milli":J
    const-wide/16 v10, 0x0

    .line 304
    .local v10, "ageSec":J
    const-wide/16 v8, 0x0

    .line 305
    .local v8, "ageMin":J
    const-wide/16 v4, 0x0

    .line 306
    .local v4, "ageHour":J
    const-wide/16 v6, 0x0

    .line 307
    .local v6, "ageMilli":J
    const-wide/16 v2, 0x0

    .line 308
    .local v2, "ageDay":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v22

    cmp-long v21, v16, v22

    if-lez v21, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    .line 309
    const-wide/16 v22, 0x3e8

    rem-long v6, v14, v22

    .line 310
    const-wide/16 v22, 0x3e8

    div-long v22, v14, v22

    const-wide/16 v24, 0x3c

    rem-long v10, v22, v24

    .line 311
    const-wide/32 v22, 0xea60

    div-long v22, v14, v22

    const-wide/16 v24, 0x3c

    rem-long v8, v22, v24

    .line 312
    const-wide/32 v22, 0x36ee80

    div-long v22, v14, v22

    const-wide/16 v24, 0x18

    rem-long v4, v22, v24

    .line 313
    const-wide/32 v22, 0x5265c00

    div-long v2, v14, v22

    .line 315
    :cond_0
    const-string/jumbo v21, "{"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v21, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "%3d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-wide/16 v22, 0x0

    cmp-long v21, v10, v22

    if-gtz v21, :cond_1

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_2

    .line 318
    :cond_1
    const-string/jumbo v21, ",%4d.%02d.%02d.%02d.%03dms"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 319
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    .line 318
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    iget v0, v13, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 322
    const-string/jumbo v21, ",ipfail="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget v0, v13, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    :cond_3
    const-string/jumbo v21, "} "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 327
    .end local v2    # "ageDay":J
    .end local v4    # "ageHour":J
    .end local v6    # "ageMilli":J
    .end local v8    # "ageMin":J
    .end local v10    # "ageSec":J
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    .end local v14    # "milli":J
    .end local v19    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    const/16 v21, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    .end local v20    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21
.end method

.method public trim(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 103
    .local v0, "currentSize":I
    if-gt v0, p1, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    new-instance v4, Lcom/android/server/wifi/ScanDetailCache$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/ScanDetailCache$1;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sub-int v4, v0, p1

    if-ge v1, v4, :cond_2

    .line 125
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 126
    .local v3, "result":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mPasspointMatches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_2
    return-void
.end method

.method values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
