.class public Lcom/android/server/wifi/WifiLastResortWatchdog;
.super Ljava/lang/Object;
.source "WifiLastResortWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    }
.end annotation


# static fields
.field public static final BSSID_ANY:Ljava/lang/String; = "any"

.field private static final DBG:Z = true

.field public static final FAILURE_CODE_ASSOCIATION:I = 0x1

.field public static final FAILURE_CODE_AUTHENTICATION:I = 0x2

.field public static final FAILURE_CODE_DHCP:I = 0x3

.field public static final FAILURE_THRESHOLD:I = 0x7

.field public static final MAX_BSSID_AGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WifiLastResortWatchdog"

.field private static final VDBG:Z


# instance fields
.field private mRecentAvailableNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidFailureCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWatchdogAllowedToTrigger:Z

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiIsConnected:Z

.field private mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 1
    .param p1, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 86
    iput-object p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 85
    return-void
.end method

.method private checkTriggerCondition()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 309
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    if-eqz v3, :cond_0

    return v4

    .line 311
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    if-nez v3, :cond_1

    return v4

    .line 313
    :cond_1
    const/4 v0, 0x0

    .line 315
    .local v0, "atleastOneNetworkHasEverConnected":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 314
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 316
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget-object v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 317
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget-object v3, v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v3

    .line 316
    if-eqz v3, :cond_3

    .line 318
    const/4 v0, 0x1

    .line 320
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->isOverFailureThreshold(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 323
    return v4

    .line 331
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    :cond_4
    return v0
.end method

.method private clearAllFailureCounts()V
    .locals 5

    .prologue
    .line 390
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 389
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 391
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 392
    .local v3, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->resetCounts()V

    goto :goto_0

    .line 395
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    .end local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 394
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 396
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 397
    .restart local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->resetCounts()V

    goto :goto_1

    .line 387
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    .end local v3    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    :cond_1
    return-void
.end method

.method private incrementBssidFailureCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 275
    .local v0, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v0, :cond_0

    .line 277
    const-string/jumbo v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFailureCountForNetwork: Unable to find Network ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    const-string/jumbo v3, ", "

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    const-string/jumbo v3, "]"

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v1, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    const-string/jumbo v1, "WifiLastResortWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFailureCountForNetwork: Failed connection attempt has wrong ssid. Failed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string/jumbo v3, ", "

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string/jumbo v3, "], buffered ["

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    iget-object v3, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const-string/jumbo v3, ", "

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "]"

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_1
    iget-object v1, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_2

    .line 296
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->incrementFailureCount(I)V

    .line 297
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementSsidFailureCount(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method private incrementSsidFailureCount(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 257
    .local v1, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 259
    const-string/jumbo v2, "WifiLastResortWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFailureCountForNetwork: No networks for ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 264
    .local v0, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->incrementFailureCount(I)V

    .line 255
    return-void
.end method

.method private incrementWifiMetricsTriggerCounts()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 357
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggers()V

    .line 358
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 359
    iget-object v8, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    .line 358
    invoke-virtual {v5, v8}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "badAuth":I
    const/4 v0, 0x0

    .line 363
    .local v0, "badAssoc":I
    const/4 v2, 0x0

    .line 365
    .local v2, "badDhcp":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 364
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 366
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    if-lt v5, v9, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v1, v5

    .line 367
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    if-lt v5, v9, :cond_1

    move v5, v6

    :goto_2
    add-int/2addr v0, v5

    .line 368
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v5, v5, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    if-lt v5, v9, :cond_2

    move v5, v6

    :goto_3
    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    move v5, v7

    .line 366
    goto :goto_1

    :cond_1
    move v5, v7

    .line 367
    goto :goto_2

    :cond_2
    move v5, v7

    .line 368
    goto :goto_3

    .line 370
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    :cond_3
    if-lez v1, :cond_4

    .line 371
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V

    .line 372
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadAuthentication()V

    .line 374
    :cond_4
    if-lez v0, :cond_5

    .line 375
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V

    .line 376
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadAssociation()V

    .line 378
    :cond_5
    if-lez v2, :cond_6

    .line 379
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/WifiMetrics;->addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V

    .line 380
    iget-object v5, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogTriggersWithBadDhcp()V

    .line 355
    :cond_6
    return-void
.end method

.method private restartWifiStack()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-nez v0, :cond_0

    .line 342
    const-string/jumbo v0, "WifiLastResortWatchdog"

    const-string/jumbo v1, "WifiLastResortWatchdog unable to trigger: WifiController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 346
    :cond_0
    const-string/jumbo v0, "WifiLastResortWatchdog"

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26011

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 349
    const-string/jumbo v0, "WifiLastResortWatchdog"

    const-string/jumbo v1, "Triggered WiFi stack restart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method private setWatchdogTriggerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    .line 411
    return-void
.end method

.method private updateFailureCountForNetwork(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    .line 241
    const-string/jumbo v0, "any"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementSsidFailureCount(Ljava/lang/String;I)V

    .line 236
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementBssidFailureCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public connectedStateTransition(Z)V
    .locals 1
    .param p1, "isEntering"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    .line 213
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMetrics;->incrementNumLastResortWatchdogSuccesses()V

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    .line 209
    :cond_1
    return-void
.end method

.method public getFailureCount(Ljava/lang/String;I)I
    .locals 8
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    const/4 v7, 0x0

    .line 459
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 460
    .local v0, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v0, :cond_0

    .line 461
    return v7

    .line 463
    :cond_0
    iget-object v2, v0, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 464
    .local v2, "ssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 465
    .local v3, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    .line 467
    const-string/jumbo v4, "WifiLastResortWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFailureCount: Could not find SSID count for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v7

    .line 471
    :cond_1
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 472
    .local v1, "failCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    packed-switch p2, :pswitch_data_0

    .line 480
    return v7

    .line 474
    :pswitch_0
    iget v4, v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->associationRejection:I

    return v4

    .line 476
    :pswitch_1
    iget v4, v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->authenticationFailure:I

    return v4

    .line 478
    :pswitch_2
    iget v4, v1, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->dhcpFailure:I

    return v4

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getRecentAvailableNetworks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    return-object v0
.end method

.method public isOverFailureThreshold(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x7

    .line 444
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 445
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 447
    :cond_0
    return v2

    .line 446
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->getFailureCount(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateFailureCountForNetwork(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->checkTriggerCondition()Z

    move-result v0

    .line 193
    .local v0, "isRestartNeeded":Z
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    .line 196
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->restartWifiStack()V

    .line 198
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->incrementWifiMetricsTriggerCounts()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLastResortWatchdog;->clearAllFailureCounts()V

    .line 201
    :cond_0
    return v0
.end method

.method public setWifiController(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "wifiController"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 563
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "mWatchdogAllowedToTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWatchdogAllowedToTrigger:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 422
    const-string/jumbo v6, "\nmWifiIsConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mWifiIsConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 423
    const-string/jumbo v6, "\nmRecentAvailableNetworks: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    iget-object v6, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 424
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 426
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    const-string/jumbo v6, "\n "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 428
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    :cond_0
    const-string/jumbo v6, "\nmSsidFailureCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v6, p0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 429
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 431
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 432
    .local v4, "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 433
    .local v0, "apCount":Ljava/lang/Integer;
    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 434
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->toString()Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 436
    .end local v0    # "apCount":Ljava/lang/Integer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;>;"
    .end local v4    # "failureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public updateAvailableNetworks(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "availableNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    if-eqz p1, :cond_4

    .line 101
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 102
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    .line 103
    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 104
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 105
    .local v11, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v11, :cond_0

    .line 106
    iget-object v3, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 107
    .local v3, "bssid":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 112
    .local v2, "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    if-nez v2, :cond_1

    .line 114
    new-instance v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .end local v2    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    invoke-direct {v2, v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 115
    .restart local v2    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    iput-object v12, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 120
    .local v14, "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-nez v14, :cond_3

    .line 122
    new-instance v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    invoke-direct {v15, v4}, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 123
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 122
    invoke-static/range {v15 .. v16}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 124
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWatchdogTriggerEnabled(Z)V

    .line 131
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v15, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v14    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v4, :cond_2

    .line 135
    iput-object v4, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->config:Landroid/net/wifi/WifiConfiguration;

    .line 138
    :cond_2
    const/4 v15, -0x1

    iput v15, v2, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v15, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    .restart local v14    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_3
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 128
    .local v7, "numberOfAps":Ljava/lang/Integer;
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    .line 129
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 128
    invoke-static/range {v15 .. v16}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    goto :goto_1

    .line 145
    .end local v2    # "availableNetworkFailureCount":Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "numberOfAps":Ljava/lang/Integer;
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;"
    .end local v9    # "pair$iterator":Ljava/util/Iterator;
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v11    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "ssid":Ljava/lang/String;
    .end local v14    # "ssidFailsAndApCount":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mRecentAvailableNetworks:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 146
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 147
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 148
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v15, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 149
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget v0, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->age:I

    goto :goto_2

    .line 152
    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    iget-object v12, v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;->ssid:Ljava/lang/String;

    .line 154
    .restart local v12    # "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 155
    .local v13, "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    if-eqz v13, :cond_7

    .line 156
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 157
    .local v1, "apCount":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_6

    .line 158
    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;

    invoke-static {v15, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v15, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v1    # "apCount":Ljava/lang/Integer;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 161
    .restart local v1    # "apCount":Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiLastResortWatchdog;->mSsidFailureCount:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 165
    .end local v1    # "apCount":Ljava/lang/Integer;
    :cond_7
    const-string/jumbo v15, "WifiLastResortWatchdog"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateAvailableNetworks: SSID to AP count mismatch for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 97
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;>;"
    .end local v12    # "ssid":Ljava/lang/String;
    .end local v13    # "ssidFails":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/WifiLastResortWatchdog$AvailableNetworkFailureCount;Ljava/lang/Integer;>;"
    :cond_8
    return-void
.end method
