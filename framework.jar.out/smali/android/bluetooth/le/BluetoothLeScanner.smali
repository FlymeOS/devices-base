.class public final Landroid/bluetooth/le/BluetoothLeScanner;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLeScanner"

.field private static final VDBG:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 73
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 3
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 499
    .local v0, "callbackType":I
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 500
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 502
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isHardwareTrackingFiltersAvailable()Z

    move-result v1

    .line 502
    :cond_1
    return v1

    .line 505
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z
    .locals 5
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v4, 0x0

    .line 481
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 483
    .local v0, "callbackType":I
    and-int/lit8 v3, v0, 0x6

    if-eqz v3, :cond_2

    .line 485
    if-nez p2, :cond_0

    .line 486
    return v4

    .line 488
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "filter$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    .line 489
    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->isAllFieldsEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    return v4

    .line 494
    .end local v1    # "filter":Landroid/bluetooth/le/ScanFilter;
    .end local v2    # "filter$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 7
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/4 v6, 0x1

    .line 467
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    return v6

    .line 470
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 472
    .local v0, "callbackType":I
    if-ne v0, v6, :cond_1

    .line 473
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 474
    return v6

    .line 476
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .prologue
    .line 458
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method

.method private startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .locals 10
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p5, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 155
    if-nez p4, :cond_0

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback is null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    if-nez p2, :cond_1

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "settings is null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v9

    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 164
    return-void

    .line 168
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 172
    :goto_0
    if-nez v2, :cond_3

    .line 173
    const/4 v1, 0x3

    :try_start_2
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v8

    .line 170
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    goto :goto_0

    .line 176
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 178
    const/4 v1, 0x4

    .line 177
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 179
    return-void

    .line 181
    :cond_4
    :try_start_4
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 183
    const/4 v1, 0x5

    .line 182
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v9

    .line 184
    return-void

    .line 186
    :cond_5
    :try_start_5
    invoke-direct {p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 188
    const/4 v1, 0x4

    .line 187
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v9

    .line 189
    return-void

    .line 191
    :cond_6
    :try_start_6
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 193
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->startRegisteration()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v9

    .line 153
    return-void

    .line 161
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    return-void
.end method

.method public flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 226
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v0, :cond_1

    monitor-exit v2

    .line 233
    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->flushPendingBatchResults()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 225
    return-void

    .line 230
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 93
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 92
    return-void
.end method

.method public startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 6
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    .line 113
    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public startScanFromSource(Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .param p2, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 129
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V

    .line 128
    return-void
.end method

.method public startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 6
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public startTruncatedScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 9
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/TruncatedFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "truncatedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TruncatedFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 248
    .local v8, "filterSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v1, "scanFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v5, "scanStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/le/TruncatedFilter;

    .line 252
    .local v6, "filter":Landroid/bluetooth/le/TruncatedFilter;
    invoke-virtual {v6}, Landroid/bluetooth/le/TruncatedFilter;->getFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {v6}, Landroid/bluetooth/le/TruncatedFilter;->getStorageDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v6    # "filter":Landroid/bluetooth/le/TruncatedFilter;
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 246
    return-void
.end method

.method public stopScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 206
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    .line 207
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    .line 209
    .local v0, "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v0, :cond_0

    .line 210
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v3, "could not find callback wrapper"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 211
    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 205
    return-void

    .line 207
    .end local v0    # "wrapper":Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
