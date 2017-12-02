.class public Lcom/android/internal/telephony/CarrierServiceStateTracker;
.super Landroid/os/Handler;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceStateTracker$1;
    }
.end annotation


# static fields
.field protected static final CARRIER_EVENT_BASE:I = 0x64

.field protected static final CARRIER_EVENT_DATA_DEREGISTRATION:I = 0x68

.field protected static final CARRIER_EVENT_DATA_REGISTRATION:I = 0x67

.field protected static final CARRIER_EVENT_VOICE_DEREGISTRATION:I = 0x66

.field protected static final CARRIER_EVENT_VOICE_REGISTRATION:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "CSST"

.field private static final NOTIFICATION_ID:I = 0x3e8

.field private static final SHOW_NOTIFICATION:I = 0xc8

.field private static final UNINITIALIZED_DELAY_VALUE:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelay:I

.field private mIsPhoneRegistered:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 127
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 57
    const-string/jumbo v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 56
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 189
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    check-cast v1, Landroid/app/NotificationManager;

    .line 190
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 185
    return-void
.end method

.method private handleConfigChanges()V
    .locals 4

    .prologue
    .line 111
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification()V

    .line 113
    return-void

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification()V

    .line 118
    const-string/jumbo v1, "CSST"

    const-string/jumbo v2, "canceling all notifications. "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 121
    :cond_1
    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "notificationMsg":Landroid/os/Message;
    const-string/jumbo v1, "CSST"

    const-string/jumbo v2, "starting timer for notifications. "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private isGlobalModeOrRadioOffOrAirplaneMode()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 87
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x1

    .line 89
    .local v3, "preferredNetworkSetting":I
    const/4 v0, -0x1

    .line 90
    .local v0, "airplaneMode":I
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 93
    .local v4, "subId":I
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preferred_network_mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    sget v9, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 93
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 97
    const-string/jumbo v8, "airplane_mode_on"

    const/4 v9, 0x0

    .line 96
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    const/16 v7, 0xa

    if-eq v3, v7, :cond_0

    .line 103
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v5

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CSST"

    const-string/jumbo v7, "Unable to get PREFERRED_NETWORK_MODE."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v5

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 103
    goto :goto_0
.end method

.method private sendNotification()V
    .locals 10

    .prologue
    .line 143
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v7, "CSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "w/values: ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 146
    const-string/jumbo v9, ","

    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalModeOrRadioOffOrAirplaneMode()Z

    move-result v9

    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 146
    const-string/jumbo v9, ","

    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 146
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v9

    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalModeOrRadioOffOrAirplaneMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    if-eqz v7, :cond_1

    .line 150
    :cond_0
    return-void

    .line 154
    :cond_1
    const-string/jumbo v7, "notification"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    check-cast v4, Landroid/app/NotificationManager;

    .line 157
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, "notificationIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 159
    const/high16 v8, 0x40000000    # 2.0f

    .line 158
    invoke-static {v0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 162
    .local v5, "settingsIntent":Landroid/app/PendingIntent;
    const v7, 0x10400d8

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 164
    .local v6, "title":Ljava/lang/CharSequence;
    const v7, 0x10400d9

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 167
    .local v1, "details":Ljava/lang/CharSequence;
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 167
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 169
    const/4 v8, 0x1

    .line 167
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 170
    const v8, 0x108008a

    .line 167
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 173
    const v9, 0x106005b

    .line 172
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 167
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 174
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 179
    .local v2, "mNotification":Landroid/app/Notification;
    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 65
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    goto :goto_0

    .line 70
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalModeOrRadioOffOrAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    goto :goto_0

    .line 77
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendNotification()V

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method
