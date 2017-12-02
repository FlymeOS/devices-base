.class public Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.super Ljava/lang/Object;
.source "DataEnabledSettings.java"


# static fields
.field public static final REASON_DATA_ENABLED_BY_CARRIER:I = 0x4

.field public static final REASON_INTERNAL_DATA_ENABLED:I = 0x1

.field public static final REASON_POLICY_DATA_ENABLED:I = 0x3

.field public static final REASON_REGISTERED:I = 0x0

.field public static final REASON_USER_DATA_ENABLED:I = 0x2


# instance fields
.field private mCarrierDataEnabled:Z

.field private final mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

.field private mInternalDataEnabled:Z

.field private mPolicyDataEnabled:Z

.field private mUserDataEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    .line 29
    return-void
.end method

.method private notifyDataEnabledChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized isCarrierDataEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataEnabled(Z)Z
    .locals 1
    .param p1, "checkUserDataEnabled"    # Z

    .prologue
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    if-eqz v0, :cond_3

    .line 112
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    .line 111
    if-eqz v0, :cond_3

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 111
    if-eqz v0, :cond_3

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 111
    return v0

    .line 114
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInternalDataEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPolicyDataEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUserDataEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V

    .line 121
    return-void
.end method

.method public declared-synchronized setCarrierDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 100
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v0

    .line 101
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mCarrierDataEnabled:Z

    .line 102
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 103
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 99
    return-void

    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setInternalDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 67
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v0

    .line 68
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mInternalDataEnabled:Z

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 70
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 66
    return-void

    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPolicyDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 89
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v0

    .line 90
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mPolicyDataEnabled:Z

    .line 91
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 92
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 88
    return-void

    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setUserDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 78
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v0

    .line 79
    .local v0, "prevDataEnabled":Z
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mUserDataEnabled:Z

    .line 80
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled(Z)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 81
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->notifyDataEnabledChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 77
    return-void

    .end local v0    # "prevDataEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterForDataEnabledChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->mDataEnabledChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 126
    return-void
.end method
