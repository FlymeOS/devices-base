.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$1;,
        Lcom/android/server/emergency/EmergencyAffordanceService$2;,
        Lcom/android/server/emergency/EmergencyAffordanceService$3;,
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final CELL_INFO_STATE_CHANGED:I = 0x2

.field private static final EMERGENCY_SIM_INSERTED_SETTING:Ljava/lang/String; = "emergency_sim_inserted_before"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NUM_SCANS_UNTIL_ABORT:I = 0x4

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallMccNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNeedsEmergencyAffordance:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mScansCompleted:I

.field private mSimNeedsEmergencyAffordance:Z

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 90
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v2, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$3;

    invoke-direct {v2, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$3;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 108
    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 118
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    const v3, 0x107004f

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 121
    .local v1, "numbers":[I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method private handleInitializeState()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    return-void

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 206
    return-void
.end method

.method private handleUpdateCellInfo()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v5, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    .line 271
    .local v2, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v2, :cond_0

    .line 272
    return v6

    .line 274
    :cond_0
    const/4 v4, 0x0

    .line 275
    .local v4, "stopScanningAfterScan":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cellInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 276
    .local v0, "cellInfo":Landroid/telephony/CellInfo;
    const/4 v3, 0x0

    .line 277
    .local v3, "mcc":I
    instance-of v5, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_3

    .line 278
    check-cast v0, Landroid/telephony/CellInfoGsm;

    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    .line 284
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 285
    invoke-direct {p0, v7}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 286
    return v7

    .line 279
    .restart local v0    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_3
    instance-of v5, v0, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_4

    .line 280
    check-cast v0, Landroid/telephony/CellInfoLte;

    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    goto :goto_1

    .line 281
    .restart local v0    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_4
    instance-of v5, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_2

    .line 282
    check-cast v0, Landroid/telephony/CellInfoWcdma;

    .end local v0    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    goto :goto_1

    .line 287
    :cond_5
    if-eqz v3, :cond_1

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_1

    .line 289
    const/4 v4, 0x1

    goto :goto_0

    .line 292
    .end local v3    # "mcc":I
    :cond_6
    if-eqz v4, :cond_7

    .line 293
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    .line 297
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    .line 298
    return v6

    .line 295
    :cond_7
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onCellScanFinishedUnsuccessful()V

    goto :goto_2
.end method

.method private handleUpdateSimSubscriptionInfo()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v4

    .line 218
    .local v4, "neededBefore":Z
    move v5, v4

    .line 220
    .local v5, "neededNow":Z
    iget-object v7, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 221
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 222
    return v4

    .line 224
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v5    # "neededNow":Z
    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 225
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    .line 226
    .local v3, "mcc":I
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 227
    const/4 v5, 0x1

    .line 248
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "mcc":I
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    .line 249
    return v5

    .line 229
    .restart local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .restart local v3    # "mcc":I
    :cond_3
    if-eqz v3, :cond_4

    const v7, 0x7fffffff

    if-eq v3, v7, :cond_4

    .line 231
    const/4 v5, 0x0

    .line 233
    :cond_4
    iget-object v7, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "simOperator":Ljava/lang/String;
    const/4 v3, 0x0

    .line 235
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_5

    .line 236
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    :cond_5
    if-eqz v3, :cond_1

    .line 239
    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 240
    const/4 v5, 0x1

    .line 241
    .local v5, "neededNow":Z
    goto :goto_1

    .line 244
    .end local v5    # "neededNow":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "neededNow":Z
    goto :goto_0
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private mccRequiresEmergencyAffordance(I)Z
    .locals 2
    .param p1, "mcc"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onCellScanFinishedUnsuccessful()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    .line 311
    iget v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 308
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestCellScan()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method

.method private setNetworkNeedsEmergencyAffordance(Z)V
    .locals 2
    .param p1, "needsAffordance"    # Z

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    .line 304
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 301
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSimNeedsEmergencyAffordance(Z)V
    .locals 3
    .param p1, "simNeedsEmergencyAffordance"    # Z

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 255
    const-string/jumbo v2, "emergency_sim_inserted_before"

    .line 256
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 254
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-eq p1, v0, :cond_1

    .line 259
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    .line 260
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 252
    :cond_1
    return-void

    .line 256
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private simNeededAffordanceBefore()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 266
    const-string/jumbo v2, "emergency_sim_inserted_before"

    .line 265
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startScanning()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 178
    return-void
.end method

.method private stopScanning()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateEmergencyAffordanceNeeded()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 129
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-nez v2, :cond_1

    .line 130
    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    .line 129
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 131
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 132
    const-string/jumbo v4, "emergency_affordance_needed"

    .line 133
    iget-boolean v5, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v5, :cond_3

    .line 131
    :goto_1
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 127
    return-void

    :cond_1
    move v2, v0

    .line 129
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 133
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    .line 159
    const/16 v2, 0x258

    if-ne p1, v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 161
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    .line 162
    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v2, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 167
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "EmergencyAffordanceService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v2, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 170
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 171
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 158
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
