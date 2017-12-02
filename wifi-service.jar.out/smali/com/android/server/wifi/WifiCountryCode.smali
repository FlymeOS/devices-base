.class public Lcom/android/server/wifi/WifiCountryCode;
.super Ljava/lang/Object;
.source "WifiCountryCode.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCountryCode"


# instance fields
.field private DBG:Z

.field private mCurrentCountryCode:Ljava/lang/String;

.field private mDefaultCountryCode:Ljava/lang/String;

.field private mReady:Z

.field private mRevertCountryCodeOnCellularLoss:Z

.field private mTelephonyCountryCode:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "oemDefaultCountryCode"    # Ljava/lang/String;
    .param p3, "persistentCountryCode"    # Ljava/lang/String;
    .param p4, "revertCountryCodeOnCellularLoss"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    .line 38
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 49
    iput-boolean p4, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    .line 64
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_1

    .line 65
    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Country code will be reverted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    const-string/jumbo v2, " on MCC loss"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    .line 60
    return-void
.end method

.method private pickCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    return-object v0

    .line 202
    :cond_1
    return-object v1
.end method

.method private setCountryCodeNative(Ljava/lang/String;)Z
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Succeeded to set country code to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_0
    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to set country code to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method private updateCountryCode()V
    .locals 3

    .prologue
    .line 179
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiCountryCode"

    const-string/jumbo v2, "Update country code"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCodeNative(Ljava/lang/String;)Z

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized airplaneModeEnabled()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "Airplane Mode Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 106
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 102
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    if-lez p1, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    .line 73
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    goto :goto_0
.end method

.method public declared-synchronized getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->pickCountryCode()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCountryCodeSentToDriver()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mCurrentCountryCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receive set country code request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "Ignore empty country code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 142
    :cond_2
    if-eqz p2, :cond_3

    .line 143
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    .line 145
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_4
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadyForChange(Z)V
    .locals 3
    .param p1, "ready"    # Z

    .prologue
    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 118
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized simCardRemoved()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiCountryCode"

    const-string/jumbo v1, "SIM Card Removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mTelephonyCountryCode:Ljava/lang/String;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiCountryCode;->mReady:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/android/server/wifi/WifiCountryCode;->updateCountryCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 86
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
