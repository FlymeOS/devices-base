.class public Lcom/android/internal/telephony/meizu/MzRadioManager;
.super Landroid/os/Handler;
.source "MzRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/meizu/MzRadioManager$1;,
        Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;,
        Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;,
        Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_OFF:Z = false

.field private static final AIRPLANE_MODE_ON:Z = true

.field private static final DBG:Z = true

.field private static final ICC_READ_NOT_READY:Z = false

.field private static final ICC_READ_READY:Z = true

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final INVALID_PHONE_ID:I = -0x1

.field public static final MAIN_SIM_SLOT_PROP:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final MODE_PHONE1_ONLY:I = 0x1

.field private static final NO_SIM_INSERTED:I = 0x0

.field private static final PREF_CATEGORY_RADIO_STATUS:Ljava/lang/String; = "RADIO_STATUS"

.field private static final RADIO_POWER_OFF:Z = false

.field private static final RADIO_POWER_ON:Z = true

.field private static final SIM_INSERTED:I = 0x1

.field private static final SIM_NOT_INITIALIZED:I = -0x1

.field private static final STRING_NO_SIM_INSERTED:Ljava/lang/String; = "N/A"

.field private static final TAG:Ljava/lang/String; = "FWK-MzRadioManager"

.field private static mIccidPreference:Landroid/content/SharedPreferences;

.field private static sRadioManager:Lcom/android/internal/telephony/meizu/MzRadioManager;


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mAirplaneMode:Z

.field private mBitmapForPhoneCount:I

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneCount:I

.field private mSimInsertedStatus:[I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/meizu/MzRadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzRadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    iput-boolean v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    .line 51
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    .line 52
    const-string/jumbo v6, "ril.iccid.sim1"

    aput-object v6, v5, v4

    .line 53
    const-string/jumbo v6, "ril.iccid.sim2"

    aput-object v6, v5, v3

    .line 54
    const-string/jumbo v6, "ril.iccid.sim3"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 55
    const-string/jumbo v6, "ril.iccid.sim4"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 51
    iput-object v5, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 304
    new-instance v5, Lcom/android/internal/telephony/meizu/MzRadioManager$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/meizu/MzRadioManager$1;-><init>(Lcom/android/internal/telephony/meizu/MzRadioManager;)V

    iput-object v5, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "airplaneMode":I
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->convertPhoneCountIntoBitmap(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mBitmapForPhoneCount:I

    .line 74
    iput p2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mPhoneCount:I

    .line 75
    if-nez v0, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    .line 76
    iget-object v3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "RADIO_STATUS"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/meizu/MzRadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    .line 77
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    new-array v3, p2, [I

    iput-object v3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mSimInsertedStatus:[I

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 82
    iget-object v3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mSimInsertedStatus:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method private convertPhoneCountIntoBitmap(I)I
    .locals 3
    .param p1, "phoneCount"    # I

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 286
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return v1
.end method

.method private findMainCapabilityPhoneId()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "result":I
    const-string/jumbo v2, "persist.radio.simswitch"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 376
    .local v1, "switchStatus":I
    add-int/lit8 v0, v1, -0x1

    .line 377
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mPhoneCount:I

    if-lt v0, v2, :cond_1

    .line 378
    :cond_0
    return v4

    .line 380
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/meizu/MzRadioManager;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/telephony/meizu/MzRadioManager;->sRadioManager:Lcom/android/internal/telephony/meizu/MzRadioManager;

    return-object v0
.end method

.method private getSimInsertedStatus(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mSimInsertedStatus:[I

    aget v0, v0, p1

    return v0
.end method

.method public static init(Landroid/content/Context;I)Lcom/android/internal/telephony/meizu/MzRadioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I

    .prologue
    .line 88
    const-class v1, Lcom/android/internal/telephony/meizu/MzRadioManager;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/meizu/MzRadioManager;->sRadioManager:Lcom/android/internal/telephony/meizu/MzRadioManager;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/meizu/MzRadioManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/internal/telephony/meizu/MzRadioManager;->sRadioManager:Lcom/android/internal/telephony/meizu/MzRadioManager;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/meizu/MzRadioManager;->sRadioManager:Lcom/android/internal/telephony/meizu/MzRadioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isIccIdReady(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "iccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "ret":Z
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 190
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMSimModeSupport()Z
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isValidPhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 337
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 338
    :cond_0
    return v1

    .line 340
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string/jumbo v0, "FWK-MzRadioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MzRadioManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method private onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    const-string/jumbo v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "simStatus":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 319
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/meizu/MzRadioManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    return-void

    .line 324
    :cond_0
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    :cond_1
    const/4 v1, 0x1

    .line 327
    .local v1, "radioPower":Z
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/meizu/MzRadioManager;->refreshSimSetting(ZI)V

    .line 313
    .end local v1    # "radioPower":Z
    :cond_2
    :goto_0
    return-void

    .line 328
    :cond_3
    const-string/jumbo v3, "UNKNOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "NOT_READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    :cond_4
    const/4 v1, 0x0

    .line 331
    .restart local v1    # "radioPower":Z
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/meizu/MzRadioManager;->refreshSimSetting(ZI)V

    goto :goto_0
.end method

.method private putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 165
    :cond_0
    return-void
.end method

.method private readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private refreshIccIdPreference(ZLjava/lang/String;)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v1, Lcom/android/internal/telephony/meizu/MzRadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    const-string/jumbo v1, "N/A"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 163
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void

    .line 159
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->putIccIdToPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshSimSetting(ZI)V
    .locals 6
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    .line 267
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 268
    const-string/jumbo v3, "msim_mode_setting"

    iget v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mBitmapForPhoneCount:I

    .line 267
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 269
    .local v1, "simMode":I
    move v0, v1

    .line 271
    .local v0, "oldMode":I
    if-nez p1, :cond_1

    .line 272
    shl-int v2, v5, p2

    not-int v2, v2

    and-int/2addr v1, v2

    .line 277
    :goto_0
    if-eq v1, v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 279
    const-string/jumbo v3, "msim_mode_setting"

    .line 278
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    :cond_0
    return-void

    .line 274
    :cond_1
    shl-int v2, v5, p2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method private removeIccIdFromPreference(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    :cond_0
    return-void
.end method

.method private setSimInsertedStatus(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "iccId":Ljava/lang/String;
    const-string/jumbo v1, "N/A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    .line 344
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mSimInsertedStatus:[I

    const/4 v2, 0x1

    aput v2, v1, p1

    goto :goto_0
.end method

.method private simStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "simStatus"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 366
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 357
    .restart local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "SIM HAVE NOT INITIALIZED"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 360
    .local v0, "result":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "SIM DETECTED"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 363
    .local v0, "result":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "NO SIM DETECTED"

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public forceSetRadioPower(ZI)V
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->setRadioPower(ZI)V

    .line 224
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "iccId":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/meizu/MzRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 222
    return-void
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 207
    iget-boolean v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    if-ne p1, v2, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    .line 211
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 212
    .local v1, "radioPower":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 213
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/meizu/MzRadioManager;->setRadioPower(ZI)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    .end local v1    # "radioPower":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "radioPower":Z
    goto :goto_0

    .line 205
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public notifyMSimModeChange(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 126
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/meizu/MzRadioManager;->isMSimModeSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    if-eqz v4, :cond_2

    .line 130
    :cond_1
    return-void

    .line 133
    :cond_2
    const/4 v2, 0x0

    .line 134
    .local v2, "phoneId":I
    const/4 v0, 0x1

    .line 135
    .local v0, "iccIdReady":Z
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mPhoneCount:I

    if-ge v2, v4, :cond_3

    .line 136
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->isIccIdReady(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 141
    :cond_3
    if-nez v0, :cond_5

    .line 143
    new-instance v1, Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;-><init>(Lcom/android/internal/telephony/meizu/MzRadioManager;I)V

    .line 144
    .local v1, "notifyMSimModeChangeRunnable":Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/internal/telephony/meizu/MzRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void

    .line 135
    .end local v1    # "notifyMSimModeChangeRunnable":Lcom/android/internal/telephony/meizu/MzRadioManager$MSimModeChangeRunnable;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mPhoneCount:I

    if-ge v2, v4, :cond_7

    .line 149
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    and-int/2addr v4, p1

    if-nez v4, :cond_6

    const/4 v3, 0x0

    .line 150
    .local v3, "singlePhonePower":Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/meizu/MzRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set Radio Power due to MSIM mode change, power: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/meizu/MzRadioManager;->log(Ljava/lang/String;)V

    .line 152
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v3    # "singlePhonePower":Z
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "singlePhonePower":Z
    goto :goto_2

    .line 125
    .end local v3    # "singlePhonePower":Z
    :cond_7
    return-void
.end method

.method public notifySimModeChange(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 392
    invoke-static {}, Lcom/android/internal/telephony/meizu/MzRadioManager;->isMSimModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    return-void

    .line 395
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 396
    new-instance v0, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;-><init>(Lcom/android/internal/telephony/meizu/MzRadioManager;ZI)V

    .line 397
    .local v0, "notifySimModeChangeRunnable":Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/meizu/MzRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    return-void

    .line 401
    .end local v0    # "notifySimModeChangeRunnable":Lcom/android/internal/telephony/meizu/MzRadioManager$SimModeChangeRunnable;
    :cond_2
    const-string/jumbo v1, "N/A"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    const/4 p1, 0x0

    .line 404
    .end local p1    # "power":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/meizu/MzRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->setPhoneRadioPower(ZI)V

    .line 391
    return-void
.end method

.method protected setPhoneRadioPower(ZI)V
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 426
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 425
    return-void
.end method

.method public setRadioPower(ZI)V
    .locals 7
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v5, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "airplaneMode":I
    if-nez v0, :cond_0

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    .line 236
    iget-boolean v4, p0, Lcom/android/internal/telephony/meizu/MzRadioManager;->mAirplaneMode:Z

    if-eqz v4, :cond_1

    .line 237
    return-void

    .line 235
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->isIccIdReady(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    new-instance v3, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;-><init>(Lcom/android/internal/telephony/meizu/MzRadioManager;ZI)V

    .line 247
    .local v3, "setRadioPowerRunnable":Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/meizu/MzRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    return-void

    .line 250
    .end local v3    # "setRadioPowerRunnable":Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->setSimInsertedStatus(I)V

    .line 252
    move v2, p1

    .line 253
    .local v2, "radioPower":Z
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "iccId":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/meizu/MzRadioManager;->mIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    const/4 v2, 0x0

    .line 258
    .end local v2    # "radioPower":Z
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->refreshSimSetting(ZI)V

    .line 259
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 231
    return-void
.end method
