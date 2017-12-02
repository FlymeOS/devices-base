.class public Lcom/android/internal/telephony/RatRatcheter;
.super Ljava/lang/Object;
.source "RatRatcheter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RatRatcheter$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RilRatcheter"


# instance fields
.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRatFamilyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/RatRatcheter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/RatRatcheter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RatRatcheter$1;-><init>(Lcom/android/internal/telephony/RatRatcheter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 56
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    .line 53
    return-void
.end method

.method private resetRatFamilyMap()V
    .locals 18

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v14

    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "carrier_config"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    check-cast v2, Landroid/telephony/CarrierConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v2, :cond_0

    monitor-exit v14

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 109
    .local v1, "b":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    monitor-exit v14

    return-void

    .line 116
    :cond_1
    :try_start_2
    const-string/jumbo v12, "ratchet_rat_families"

    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 117
    .local v7, "ratFamilies":[Ljava/lang/String;
    if-nez v7, :cond_2

    monitor-exit v14

    return-void

    .line 118
    :cond_2
    const/4 v12, 0x0

    :try_start_3
    array-length v15, v7

    move v13, v12

    :goto_0
    if-ge v13, v15, :cond_6

    aget-object v8, v7, v13

    .line 119
    .local v8, "ratFamily":Ljava/lang/String;
    const-string/jumbo v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, "rats":[Ljava/lang/String;
    array-length v12, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 118
    :cond_3
    :goto_1
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 121
    :cond_4
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v12, v11

    invoke-direct {v3, v12}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 122
    .local v3, "currentFamily":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    .line 123
    .local v5, "pos":I
    const/4 v12, 0x0

    array-length v0, v11

    move/from16 v16, v0

    move v6, v5

    .end local v5    # "pos":I
    .local v6, "pos":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    aget-object v10, v11, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .local v10, "ratString":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    .line 131
    .local v9, "ratInt":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 132
    const-string/jumbo v12, "RilRatcheter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "RAT listed twice: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 102
    .end local v1    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "currentFamily":Landroid/util/SparseIntArray;
    .end local v6    # "pos":I
    .end local v7    # "ratFamilies":[Ljava/lang/String;
    .end local v8    # "ratFamily":Ljava/lang/String;
    .end local v9    # "ratInt":I
    .end local v10    # "ratString":Ljava/lang/String;
    .end local v11    # "rats":[Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v14

    throw v12

    .line 127
    .restart local v1    # "b":Landroid/os/PersistableBundle;
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "currentFamily":Landroid/util/SparseIntArray;
    .restart local v6    # "pos":I
    .restart local v7    # "ratFamilies":[Ljava/lang/String;
    .restart local v8    # "ratFamily":Ljava/lang/String;
    .restart local v10    # "ratString":Ljava/lang/String;
    .restart local v11    # "rats":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string/jumbo v12, "RilRatcheter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "NumberFormatException on "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "ratInt":I
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    invoke-virtual {v3, v9, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    add-int/lit8 v12, v12, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_2

    .end local v3    # "currentFamily":Landroid/util/SparseIntArray;
    .end local v6    # "pos":I
    .end local v8    # "ratFamily":Ljava/lang/String;
    .end local v9    # "ratInt":I
    .end local v10    # "ratString":Ljava/lang/String;
    .end local v11    # "rats":[Ljava/lang/String;
    :cond_6
    monitor-exit v14

    .line 101
    return-void
.end method


# virtual methods
.method public ratchetRat(II)I
    .locals 6
    .param p1, "oldRat"    # I
    .param p2, "newRat"    # I

    .prologue
    .line 64
    iget-object v5, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .local v2, "oldFamily":Landroid/util/SparseIntArray;
    if-nez v2, :cond_0

    monitor-exit v5

    return p2

    .line 68
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .local v0, "newFamily":Landroid/util/SparseIntArray;
    if-eq v0, v2, :cond_1

    monitor-exit v5

    return p2

    .line 72
    :cond_1
    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 73
    .local v3, "oldRatRank":I
    const/4 v4, -0x1

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 74
    .local v1, "newRatRank":I
    if-le v3, v1, :cond_2

    .end local p1    # "oldRat":I
    :goto_0
    monitor-exit v5

    return p1

    .restart local p1    # "oldRat":I
    :cond_2
    move p1, p2

    goto :goto_0

    .line 64
    .end local v0    # "newFamily":Landroid/util/SparseIntArray;
    .end local v1    # "newRatRank":I
    .end local v2    # "oldFamily":Landroid/util/SparseIntArray;
    .end local v3    # "oldRatRank":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public ratchetRat(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "oldSS"    # Landroid/telephony/ServiceState;
    .param p2, "newSS"    # Landroid/telephony/ServiceState;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .line 80
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    .line 79
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result v2

    .line 81
    .local v2, "newVoiceRat":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 82
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    .line 81
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result v0

    .line 83
    .local v0, "newDataRat":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    .line 86
    :goto_0
    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 87
    invoke-virtual {p2, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 88
    invoke-virtual {p2, v1}, Landroid/telephony/ServiceState;->setIsUsingCarrierAggregation(Z)V

    .line 78
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x1

    .local v1, "newUsingCA":Z
    goto :goto_0
.end method
